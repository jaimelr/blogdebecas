class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def new
  end

  def create
    notice = Notice.new(notice_params)

    if notice.save!
      redirect_to notice_path(notice)
    end
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    notice = Notice.find(params[:id])

    if notice.update!(notice_params)
      redirect_to notice_path(id: notice.id)
    end
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :description, :active)
  end
end
