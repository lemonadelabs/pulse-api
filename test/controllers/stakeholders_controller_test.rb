require 'test_helper'

class StakeholdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stakeholder = stakeholders(:one)
  end

  test "should get index" do
    get stakeholders_url
    assert_response :success
  end

  test "should create stakeholder" do
    assert_difference('Stakeholder.count') do
      post stakeholders_url, params: { stakeholder: { image: @stakeholder.image, name: @stakeholder.name, notes: @stakeholder.notes, organisation: @stakeholder.organisation, role: @stakeholder.role, tags: @stakeholder.tags } }
    end

    assert_response 201
  end

  test "should show stakeholder" do
    get stakeholder_url(@stakeholder)
    assert_response :success
  end

  test "should update stakeholder" do
    patch stakeholder_url(@stakeholder), params: { stakeholder: { image: @stakeholder.image, name: @stakeholder.name, notes: @stakeholder.notes, organisation: @stakeholder.organisation, role: @stakeholder.role, tags: @stakeholder.tags } }
    assert_response 200
  end

  test "should destroy stakeholder" do
    assert_difference('Stakeholder.count', -1) do
      delete stakeholder_url(@stakeholder)
    end

    assert_response 204
  end
end
