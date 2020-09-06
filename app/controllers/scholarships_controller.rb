class ScholarshipsController < ApplicationController

  def index
    @scholarships = Scholarship.all
  end
  
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

    # TODO: Handle error case
  end

  def edit
    @scholarship = Scholarship.find(params[:id])
  end

  def update
    scholarship = Scholarship.find(params[:id])
    
    if scholarship.update!(scholarship_params)
      redirect_to scholarship_path(id: scholarship.id)
    end

    # TODO: Handle error case
  end

  def destroy
    scholarship = Scholarship.find(params[:id])

    if scholarship.delete
      redirect_to new_scholarship_path
    end

    # TODO: Handle error case
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:title, :description, :start, :end, :source, :category, :benefits)
  end
end
