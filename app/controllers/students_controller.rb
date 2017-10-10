class StudentsController < ApplicationController
  def create
  end

  def add
  	session[:name]= params[:name]
  	session[:location]=params[:location]
  	session[:language]=params[:language]
  	session[:comment]=params[:comment]  	
 	redirect_to '/results/'
  end

  def results
  	@name = session[:name]
  	@location = session[:location]
  	@language = session[:language]
  	@comment = session[:comment]
  	render 'students/results'
  end
end
