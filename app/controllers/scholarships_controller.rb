class ScholarshipsController < ApplicationController
  
  def show
    @scholarship = Scholarship.find(params[:id])
  end

  def new
    @scholarship = Scholarship.new
  end

  def create
    scholarship = Scholarship.new(scholarship_params)

    if scholarship.save!
      redirect_to scholarship_path(id: scholarship.id)
    end
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:title, :description, :start, :end, :source, :category, :benefits)
  end
end
