class Song < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :title,:on => :create, :message => "You must title your song first"
    validates_presence_of :composed_by,:on => :create, :message => "Composer name cant be blank"
    validates_uniqueness_of :title,:on => :create, :message => "This Song title has already been Taken"    
    end
