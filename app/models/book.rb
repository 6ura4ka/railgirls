class Book < ActiveRecord::Base
	before_save :search_for_cover_image

	def search_for_cover_image
      if self.picture.nil?
          self.picture = Google::Search::Image.new(:query => (name + " " + author + " cover " + published_on.year.to_s)).first.uri
      end
	end
end
