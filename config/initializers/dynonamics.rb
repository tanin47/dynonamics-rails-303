class DynonamicsClient
  
  class << self
    def submit_with_logging(url,data)
       start_time = Time.now.to_f
       
       response = old_submit(url,data)
       
       DynonamicsLog.create(:start_time=>start_time,:duration=>(Time.now.to_f-start_time),:response=>response)
    end
 
    alias_method :old_submit, :submit
    alias_method :submit, :submit_with_logging
  end
end