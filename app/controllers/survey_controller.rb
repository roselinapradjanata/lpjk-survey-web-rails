class SurveyController < ApplicationController

  def form
    form = SurveyService.get_form
    return render json: form, status: :ok
  end

  def index
    surveys = SurveyService.get_all(params[:company_id])
    return render json: surveys, status: :ok
  end

  def show
    survey = SurveyService.get_survey(params[:id])
    return render json: survey, status: :ok
  end

  def create
    survey = SurveyService.create_survey(params[:company_id], params)
    return render json: survey, status: :ok
  end

end
