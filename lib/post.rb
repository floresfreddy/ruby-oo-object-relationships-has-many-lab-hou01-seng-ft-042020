require_relative 'author.rb'

class Post

    attr_accessor :author, :title
    
    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        
        if self.author
            self.author.name
        else
            self.author = nil
            self.author
        end

    end


end