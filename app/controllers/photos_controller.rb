class PhotosController < ApplicationController
  before_action :find_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photo_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(photo_params)
      redirect_to photo_path
    else
      render :edit
    end
  end

  def destroy
    if @photo.destroy
      redirect_to root_path
    end
  end

  private

  def find_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :description, :user_id, :photo)
  end
end
