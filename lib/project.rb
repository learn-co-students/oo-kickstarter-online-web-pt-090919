class Project
  attr_reader :backers, :title

  def initialize(name)
    @title = name
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if backer.backed_projects.include?(self)
    else backer.back_project(self)
    end
  end
end