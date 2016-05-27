Rails.application.routes.draw do
  root 'pages#home'

  get 'home' => 'pages#home'
  get 'gallery' => 'pages#gallery'
  get 'team' => 'pages#team'
  get 'contact' => 'pages#contact'
  get 'faq' => 'pages#faq'
end
