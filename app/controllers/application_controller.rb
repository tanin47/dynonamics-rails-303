class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout "application"
  
  before_filter :fake_env
  
  def fake_env
    if !ENV['DYNONAMICS_DYNO_URL']
      ENV['DYNONAMICS_DYNO_URL'] = "http://www.google.com/"
    end
    
    ENV['DYNONAMICS_DEBUG'] = "true"
  end
end
