class ChristmasRegistrationsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @participants = Participant.all
    @participant = Participant.new
  end

  def create
    @participants = Participant.all
    @participant = Participant.new(participant_params)

    if @participant.save
      redirect_to christmas_registrations_path, :flash => { :success => "Terdaftar!" }
    else
      render :index
    end
  end

  def show
    if params[:winner].present?
      @winner = Participant.all.map(&:code).shuffle.first
    else
      @winner = [].first
    end
  end

  private
    def participant_params
      params.require(:participant).permit(:name, :email, :line_id, :phone)
    end
end
