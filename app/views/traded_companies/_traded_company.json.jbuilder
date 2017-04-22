json.extract! traded_company, :id, :name, :type, :current_price, :n_stocks, :created_at, :updated_at
json.url traded_company_url(traded_company, format: :json)
