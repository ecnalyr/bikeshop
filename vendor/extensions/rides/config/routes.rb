Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :rides do
    resources :rides, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :rides, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :rides, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
