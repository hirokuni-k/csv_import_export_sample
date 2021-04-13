class UsersController < ApplicationController
  def Index
    @users = User.order(id: :asc)
  end
end
