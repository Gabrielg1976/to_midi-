RAILS_GEM_VERSION = '2.1.0' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')
Rails::Initializer.run do |config|
 
  config.time_zone = 'UTC'
  config.action_controller.session = {
    :session_key => '_text_2_midi_session',
    :secret      => '3a8d8cebb9960f3dab3a68a9bd64132f7ac9d743bb3b7b75239efc650f4a128422697939c2126746401b27c92d85d556e9fdc81025d923ca726edae94d2e1656'
  }

config.gem "midilib", :version => "1.0.0"
end
