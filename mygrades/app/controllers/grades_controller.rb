class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end
  
  
  def new
    @grades = Grade.new #←データを入れるためでなくformヘルパーのため
  end
  
  def create
    @grade = Grade.new(subject: params[:grade][:subject], unit: params[:grade][:unit], score: params[:grade][:score])
    @grade.save
    redirect_to '/' #=>一覧ページにリダイレクトする
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    redirect_to '/'
  end
  
  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @grade = Grade.find(params[:id])
  end
  
  def update
    @grade = Grade.find(params[:id])
    @grade.update()
    redirect_to '/'
  end


end
