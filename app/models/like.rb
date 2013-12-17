class Like < ActiveRecord::Base
  belongs_to :post
  counter_culture :post
end
