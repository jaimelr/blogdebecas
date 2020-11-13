class RequirementsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    requirement = Requirement.new(requirement_params)

    if requirement.save!
      respond_to do |format|
        format.json { render json: requirement }
        format.js { redirect_to scholarship_path(requirement.scholarship_id) }
      end
    end
  end

  def destroy
    requirement = Requirement.find(params[:id])

    if requirement.destroy
      respond_to do |format|
        format.html { redirect_to edit_scholarship_path(params[:scholarship_id]) }
      end
    end
  end

  private

  def requirement_params
    params.require(:requirement).permit(:name, :scholarship_id)
  end
end
