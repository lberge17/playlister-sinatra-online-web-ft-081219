require_relative 'slug.rb'

class Artist < ActiveRecord::Base
  include Slug::InstanceMethods
  extend Slug::ClassMethods
  
  has_many :songs
  has_many :genres, through: :songs
end