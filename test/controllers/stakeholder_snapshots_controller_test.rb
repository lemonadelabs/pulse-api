require 'test_helper'

class StakeholderSnapshotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stakeholder_snapshot = stakeholder_snapshots(:one)
  end

  test "should get index" do
    get stakeholder_snapshots_url
    assert_response :success
  end

  test "should create stakeholder_snapshot" do
    assert_difference('StakeholderSnapshot.count') do
      post stakeholder_snapshots_url, params: { stakeholder_snapshot: { power: @stakeholder_snapshot.power, references: @stakeholder_snapshot.references, references: @stakeholder_snapshot.references, support: @stakeholder_snapshot.support, vital: @stakeholder_snapshot.vital, week: @stakeholder_snapshot.week } }
    end

    assert_response 201
  end

  test "should show stakeholder_snapshot" do
    get stakeholder_snapshot_url(@stakeholder_snapshot)
    assert_response :success
  end

  test "should update stakeholder_snapshot" do
    patch stakeholder_snapshot_url(@stakeholder_snapshot), params: { stakeholder_snapshot: { power: @stakeholder_snapshot.power, references: @stakeholder_snapshot.references, references: @stakeholder_snapshot.references, support: @stakeholder_snapshot.support, vital: @stakeholder_snapshot.vital, week: @stakeholder_snapshot.week } }
    assert_response 200
  end

  test "should destroy stakeholder_snapshot" do
    assert_difference('StakeholderSnapshot.count', -1) do
      delete stakeholder_snapshot_url(@stakeholder_snapshot)
    end

    assert_response 204
  end
end
