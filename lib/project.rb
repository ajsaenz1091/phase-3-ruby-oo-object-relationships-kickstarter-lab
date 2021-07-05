class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        p_backer = ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.filter{|project_backer| project_backer.project == self}.map(&:backer)
    end
end