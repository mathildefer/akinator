class PagesController < ApplicationController
  def home
  end

  def blog
  	article1 = { 
	"title" => "Mon 1er article",
  	"content"=> "Lorem",
  	"rating" => 3
	}

	article2 = { 
	"title" => "Mon 2e article",
  	"content"=> "Lorem",
  	"rating" => 3
  	}

	article3 = { 
	"title" => "Mon 3e article",
  	"content"=> "Lorem",
  	"rating" => 3
	}

	@articles = [ article1, article2, article3 ]
  end
end
