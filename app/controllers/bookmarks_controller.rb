class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = List.find(params[:list_id])
    if @bookmark.save
      redirect_to list_path(params[:list_id])
    else
      render :show, status: :unprocessable_entity #comment faire pour renvoyer au show list
    end
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:list, :movie, :comment)
  end
end
