class ConnectionsController < ActionController::API
  def for_project
    project = Project.find(params[:project_id])
    @connections = project.connections
    render json: @connections
  end

  def for_stakeholder
    project = Project.find(params[:project_id])
    stakeholder = Stakeholder.find(params[:stakeholder_id])
    week = params[:week]

    @connections = Connection.where(
      project: project,
      stakeholder: stakeholder,
      week: week
    )

    render json: @connections
  end

end
