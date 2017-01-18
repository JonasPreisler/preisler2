class Category < ApplicationRecord
  has_many :projects
  has_many :portfolios
end