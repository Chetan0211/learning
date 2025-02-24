class Category < ApplicationRecord
  has_many :catelogues
  searchkick

  def search_data
    {
      category_name: name
    }
  end
end
