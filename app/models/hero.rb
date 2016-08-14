class Hero

	attr_accessor :name, :power, :biography
	@@all =[]
	def initialize(options)
		@name = options[:name]
		@power = options[:power]
		@biography = options[:biography]
		@@all << self
	end

	def self.all
		@@all
	end
end