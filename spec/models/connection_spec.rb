require 'rails_helper'

RSpec.describe Connection, type: :model do
  it "connection should be valid " do
    connection = Connection.create(name: 'salesforce', connection_type: 'test connection', max_requests: 10, password: 'welcome@123' )
    expect(connection).to be_valid
  end

  it "connection name should be unique" do
    connection1 = Connection.create(name: 'salesforce', connection_type: 'test connection', max_requests: 10, password: 'welcome@123' )
    connection2 = Connection.create(name: 'salesforce', connection_type: 'test connection', max_requests: 10, password: 'welcome@123' )
    expect(connection2).to be_invalid
  end

  it "should have connection count is 1" do
    connection = Connection.create(name: 'salesforce', connection_type: 'test connection', max_requests: 10, password: 'welcome@123' )
    expect(Connection.count).to eq(1)
  end
end
