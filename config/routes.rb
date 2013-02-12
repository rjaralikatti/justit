Justit::Application.routes.draw do
  resources :my_searches do
    collection do
      get 'autocomplete'
    end
  end

  root :to => "my_searches#autocomplete"
end
