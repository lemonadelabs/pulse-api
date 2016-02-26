class VotesController < ActionController::API

  def for_sh_point
    @votes = Stakeholder.find(params[:stakeholder_id]).stakeholder_snapshots.find_by(project_id: params[:project_id], week: params[:week]).votes
    render json: @votes
  end

end
