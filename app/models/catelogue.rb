class Catelogue < ApplicationRecord
  belongs_to :category

  searchkick word_start:[:catelogue_name]
  def search_data
    {
      catelogue_name: name,
      category_name: category.name
    }
  end
end
