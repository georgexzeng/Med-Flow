class Topic < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :body

  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  has_many :comments
  has_many :scores
end
