Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
    get '/member-data', to: 'members#show'
  
    # Customes endpoints
    get 'customers/create'
    get 'customers/customers';
    get 'customers/login';

    # Product Category Endpoints
    post 'product_categories/create'
    get 'product_categories/product_categories'
  
    #Product endpints
    post 'products/create'
    get 'products/products'

    #Sales endpints
    post 'sales/create'
    get 'sales/sales'

    # Users endpoints
    post 'users/create';
    get 'users/users';
    get 'users/login';
  
end
