class Project
  attr_reader :title
  attr_accessor :backers

  # instnace initialized with a @backers var set to empty array
  def initialize(title)
    @title = title
    @backers = [] 
  end

  def add_backer(backer) #backer as an obj
    # Accepts a Backer as an argument and stores it in a backers array
    @backers << backer
    # Adds the project to the backer's backed_projects array
    backer.backed_projects << self
  end
    
end