class SurveysController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to root_path, :flash => { :success => "Successfully submit survey, thanks!" }
    else
      redirect_to surveys_path
    end
  end

  private
    def survey_params
      params.require(:survey).permit(:sex, :age, :read_bible, :porn, :porn_addict, :masturbate, :masturbate_addict, :sexual, :user_id)
    end
end
