Rails.application.routes.draw do

 
  root 'welcome#hello'
  get 'welcome/hello'
  get 'welcome/goodbye'
  
end
