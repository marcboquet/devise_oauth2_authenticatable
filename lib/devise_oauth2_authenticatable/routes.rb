ActionDispatch::Routing::Mapper.class_eval do
  protected
  
  def devise_oauth2(mapping, controllers)
    scope mapping.fullpath do
      get mapping.path_names[:oauth2],  :to => "#{controllers[:sessions]}#create", :as => :"oauth2_#{mapping.name}_session"
    end
  end
end
