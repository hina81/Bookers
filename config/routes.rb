Rails.application.routes.draw do
  
  get 'top' => 'homes#top'
  get 'books' => 'books#index', as: 'book_index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'book_edit'
  patch 'books/:id' => 'books#update', as: 'book_update'
  
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
