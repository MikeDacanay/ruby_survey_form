class StudentsController < ApplicationController
  def create
  end

  def add
  	session[:name]= params[:name]
  	session[:location]=params[:location]
  	session[:language]=params[:language]
  	session[:comment]=params[:comment]
  	flash[:go] = "thanks,#{1}"
 	redirect_to '/results/'
 	else

  end

  def results
  	@name = session[:name]
  	@location = session[:location]
  	@language = session[:language]
  	@comment = session[:comment]
  	@message = flash[:go]
  	render 'students/results'
  end
end
