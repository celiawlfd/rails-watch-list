class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(params_bookmark)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(params[:list_id])
    else
      render "/lists/show", status: :unprocessable_entity #comment faire pour renvoyer au show list
    end
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
