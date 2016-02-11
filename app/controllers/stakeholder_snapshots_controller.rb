class StakeholderSnapshotsController < JSONAPI::ResourceController

  def get_related_resources # get snapshots for project
    project = Project.find(params[:project_id])

    if params[:week]
      stakeholderSnapshots = project.stakeholder_snapshots.where( week: params[:week] )
    else
      stakeholderSnapshots = project.stakeholder_snapshots
    end

    stakeholderSnapshots = stakeholderSnapshots.map do | snapshot |
      StakeholderSnapshotResource.new(snapshot, nil)
    end

    render json: JSONAPI::ResourceSerializer.new(StakeholderSnapshotResource).serialize_to_hash(stakeholderSnapshots)
  end

end
