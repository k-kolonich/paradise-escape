class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @islands = Island.all
  end

  def dashboard
    @user = current_user.id
    @islands = Island.where(user_id: @user)
    @user_bookings = Booking.where(user_id: @user)
    @booked_islands = Island.joins(:bookings).where("bookings.user_id = ?", @user)
    @bookings = Booking.joins(:island).where("islands.user_id = ?", @user)
  end
end
