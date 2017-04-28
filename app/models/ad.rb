class Ad < ActiveRecord::Base
	has_many :tranhead
	mount_uploader :image, ImageUploader
end
