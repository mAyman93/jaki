class User < ActiveRecord::Base
	validates :name , presence: true , length: { maximum: 40}
	validates :email , presence: true , email_format: { message: "Please enter a valid mail"} , uniqueness: {case_sensitive: false}
	validates :password , confirmation: true , length: { minimum: 8} , confirmation: true
	
	before_validation do
		if self.name.empty? self.name = Array.new(8){[*'0'..'9', *'a'..'z', *'A'..'Z'].sample}.join
	end

	def self.name_longer_than_eight
		User.where("length(name) > 8")
	end

end
