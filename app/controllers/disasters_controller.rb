class DisastersController < ApplicationController
  def index
    @disasters = Disaster.paginate(page: params[:page], per_page: 3)
    
  end

  def new
    @disaster = Disaster.new
  end

  def create
    # @disaster = Disaster.new(disaster_params)
    @disaster = current_user.disasters.new(disaster_params)
    if @disaster.save
      redirect_to disasters_path
    else
      render :new
    end
  end

  def show
    @disaster = Disaster.find(params[:id])
    @comments = @disaster.comments
    @comment = Comment.new
  end

  def edit
    @disaster = Disaster.find(params[:id])
  end

  def update
    @disaster = Disaster.find(params[:id])
    if @disaster.update(disaster_params)
      redirect_to disasters_path
    else
      render :edit
    end
  end

  def destroy
    @disaster = Disaster.find(params[:id])
    if @disaster.destroy
      redirect_to disasters_path
    else
      render :index
    end
  end

  def comment
    @disaster = Disaster.find(params[:id])
    @comment = Disaster.find(params[:id]).comments.new(comment_params)
    @comment.save
    redirect_to disaster_path(@disaster)
  end

  private

  def disaster_params
    params.require(:disaster).permit(:name, :description, :info_id)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
