class ConnectionsController < ActionController::API

  def for_project
    project = Project.find(params[:project_id])
    @connections = project.connections
    render json: @connections
  end

end
