#encoding: utf-8

class AddNewsCategories < ActiveRecord::Migration
	@@news_categories = [
		{:label => "В салонах красоты", :name => "salon"},
		{:label => "В Тюмени", :name => "tyumen"},
		{:label => "В мире", :name => "world"},
	]

  	def up
		@@news_categories.each do |news_category|
			if NewsCategory.where(:name => news_category[:name]).count == 0
				category = NewsCategory.new
				category.label = news_category[:label]
				category.name = news_category[:name]
				category.save
			end
		end
  	end

	def down
  		@@news_categories.each do |news_category|
  			NewsCategory.where(:name => news_category[:name]).delete_all
	  	end
	end
end
