class PagesController < ApplicationController

  def home
  end

  def contact
  end

  def about
    @time = Time.now
    @students = ['Luana', 'Igor', 'Lara', 'Lucas', 'Marcio', 'Gianpaolo']

    if params[:student_name]
      @students = @students.select { |student| student.starts_with? params[:student_name]}
    end
  end
end
