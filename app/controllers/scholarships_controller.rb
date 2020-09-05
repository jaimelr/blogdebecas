class ScholarshipsController < ApplicationController
  
  def new
    @scholarship = Scholarship.new
  end

  def create
    scholarship = Scholarship.new(scholarship_params)

    if scholarship.save!
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:title, :description, :start, :end, :source, :category, :benefits)
  end
end
