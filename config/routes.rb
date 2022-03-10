Rails.application.routes.draw do
  
  get "/query_params" => "examples#query"
  get "/guess_query" => "examples#guess"
  get "/segment/:number_1/:number_2" => "examples#numbers"
  get "/segment2/:guess" => "examples#guess"

  post "/body_param" => "examples#guess"
  post "/information" => "examples#validate"






end
 