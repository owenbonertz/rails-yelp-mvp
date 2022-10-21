Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  ##
  #GET 'restaurants' to: "restuarants#index"
  #GET 'restaurants/new' to: "restaurants#new"
  #POST 'restaurants' to: "restaurants/create"
  #GET 'restaurants/:id' to: "restaurants#show"
  #GET 'restaurants/:id/reviews/new' to: "reviews#new"
  #POST 'restaurants/:id/reviews' to: "reviews#create"
  #__END__

  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end


end
