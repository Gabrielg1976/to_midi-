class Tutorials < ActiveRecord::Base
belongs_to :user
validates_presence_of :title, :on => :create, :message => "title can't be blank"
validates_presence_of :lesson, :on => :create, :message => " lesson can't be blank"
validates_uniqueness_of :title, :on => :create, :message => "the title must be unique"
validates_length_of :lesson, :within => 20..200, :on => :create, :message => "worth content must be present"
end
