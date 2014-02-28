class Student < ActiveRecord::Base

  # This allows us to declare what to_param returns
  # The rails default is
  # 
  # def to_param
  #   id
  # end
  #
  # But we want to use the github name, so redeclare what to_params returns
  def to_param
    github
  end
end
