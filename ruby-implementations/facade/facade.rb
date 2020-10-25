# the principal front of a building, 
# that faces on to a street or open space.

# Provide a unified interface to a set of interfaces in a subsystem.
# Facade defines a higher-level interface that makes the subsystem easier to us
# without facade
class UsersController < ApplicationController
  def index
    @user = User.new
    @last_active_users = User.active.order(created_at: :desc).limit(10)
    @vip_users_presenter = VipUsersPresenter.new(User.active.vip)
    @messages = current_user.messages
  end
end


# using facade
class UsersController < ApplicationController
  def index
    @user_facade = UsersFacade.new(current_user)
  end
end



# app/facades/users_facade.rb
class UsersFacade
  attr_reader :current_user, :vip_presenter

  def initialize(current_user, vip_presenter=VipUsersPresenter)
    @current_user = current_user
    @vip_presenter = vip_presenter
  end

  def new_user
    User.new
  end

  def last_active_users
    @last_active_users ||= active_users.order(created_at: :desc).limit(10)
  end

  def vip_users
    @vip_users ||= vip_presenter.new(active_users.vip).users
  end

  def messages
    @messages ||= current_user.messages
  end

  private

  def active_users
    User.active
  end
end