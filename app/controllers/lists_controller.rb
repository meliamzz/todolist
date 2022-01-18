class ListsController < ApplicationController
  def index
    @user = current_user
    @lists = @user.lists
  end

  def new
    @list = List.new
  end
end
