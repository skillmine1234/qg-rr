Rails.application.routes.draw do
  resources :rr_unapproved_records
    
  resources :rr_incoming_records do
    collection do
      get :index
      put :index
    end
  end
  
  resources :reconciled_returns do
    collection do
      get :index
      get :index
    end
  end
  
  get '/reconciled_returns/:id/audit_logs' => 'reconciled_returns#audit_logs'
  get '/rr_incoming_records/:id/audit_logs' => 'rr_incoming_records#audit_logs'
  get 'rr_incoming_file_summary' => 'rr_incoming_records#incoming_file_summary'
end
