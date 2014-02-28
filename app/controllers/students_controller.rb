class StudentsController < ApplicationController
  # respond_to :html, :json, :xml  # See note on line 12

  def index
    @students = Student.all

    # One way to render JSON
    # This way doesn't care what format your request is in, you're getting JSON render'd back
    # render json: @students

    # Anther way to render JSON
    # With this way, be sure to uncomment line 2 (this line declares what format requests you'll accept)
    # respond_with(@students)
    
    # Another way to render JSON (& html)
    # This way reponds with either JSON or HTML depending on which format the request was
    # respond_to do |format|
    #   format.html {}
    #   format.json { render json: @students.to_json(except: [:id, :created_at, :updated_at]) }
    # end

    # Another way to render JSON
    # Leave the index action as is, you don't need any special JSON or format code 
    # Then make sure you have a 'index.json.jbuilder' template in your students views folder
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name, :github))
    @student.save

    respond_to do |format|
      format.html {}
      format.json { render action: 'show', status: :created, location: @student }
    end
  end

  def show
    # For security reasons (and cause it's cool)
    # we're looking up users by their github name and not their ID
    # Check the model file 'student.rb' for more notes

    @student = Student.find_by(github: params[:id]) 
  end
end
