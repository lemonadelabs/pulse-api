class StakeholdersController < JSONAPI::ResourceController

  def forProject
    project = Project.find(params[:project_id])
    render json: project.stakeholders.uniq
  end

end
