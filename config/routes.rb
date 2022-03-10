Rails.application.routes.draw do
  
  get "/query_params" => "examples#query"
  get "/guess_query" => "examples#guess_query"
  get "/segment/:number_1/:number_2" => "examples#numbers"
  get "/segment2/:answer/:guess" => "examples#guess"
end
 