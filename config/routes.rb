Rails.application.routes.draw do
  
  get "/query_params" => "examples#query"
  get "/guess_query" => "examples#guess_query"
end
 