class StakeholdersController < JSONAPI::ResourceController

  def for_project
    stakeholders = Project.find(params[:project_id]).stakeholders.uniq

    stakeholders.map! do | stakeholder |
      StakeholderResource.new(stakeholder, nil)
    end

    render json: JSONAPI::ResourceSerializer.new(StakeholderResource).serialize_to_hash(stakeholders)

  end

end