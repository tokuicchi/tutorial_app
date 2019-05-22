Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/signup',   to: 'users#new'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/edit-basic-info/:id', to: 'users#edit_basic_info', as: :basic_info
  get '/index-edit-basic-info', to: 'users#index_edit_basic_info', as: :index_basic_info 
  patch 'update-basic-info', to: 'users#update_basic_info'
  patch '/update_user_info', to: 'users#update_user_info' #ユーザー一覧からモーダル編集
  get 'users/duty', to: 'users#duty', as: :index_duty  #出勤中社員
  resources :bases do
  end
  # get 'bases', to: 'bases#index', as: :index_bases  #拠点一覧
  # post 'bases', to: 'bases#create'  #拠点新規作成
  # patch 'bases', to: 'bases#update' #拠点編集
  # delete 'bases', to: 'bases#destroy' #拠点削除
  get 'users/:id/attendances/:date/edit', to: 'attendances#edit', as: :edit_attendances
  patch 'users/:id/attendances/:date/update', to: 'attendances#update', as: :update_attendances
  resources :users do
    resources :attendances, only: :create
  end
end
