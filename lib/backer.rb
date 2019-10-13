class Backer
  attr_reader :name
  attr_accessor :backed_projects
  
  def initialize(name) 
    @name = name
    @backed_projects = []
  end

  def back_project(project) 
    # Accepts a Project as an arg and stores it in a backed_projects array
    @backed_projects << project
    
    # Adds the backer to the project's backers array
    project.backers << self
  end
  
end