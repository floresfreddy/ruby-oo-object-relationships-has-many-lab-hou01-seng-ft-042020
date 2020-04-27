require_relative 'post.rb'


class Author

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select{|p| p.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        a = Post.new(title)
        a.author = self
    
    end

    def self.post_count
        Post.all.count 
    end

    






end