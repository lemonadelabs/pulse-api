class RelationshipsController < JSONAPI::ResourceController

  def for_project
    project = Project.find(params[:project_id])
    stakeholder_snapshots = project.stakeholder_snapshots

    relationships = stakeholder_snapshots.map { | snap | snap.relationships }.flatten

    render json: relationships
  end


end
