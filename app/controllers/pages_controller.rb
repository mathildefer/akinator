class PagesController < ApplicationController
  def home
  end

  def blog
  	article1 = { 
	  "title" => "Objectif",
  	"content"=> "Notre objectif est d'appliquer au domaine des NTIC 
    (nouvelles technologies de l’information et de la communication) 
    des solutions innovantes élaborées par notre laboratoire de recherche 
    et développement en profitant des dernières avancées de la recherche.",
  	"rating" => 3
	}

	article2 = { 
	  "title" => "Projet futur",
  	"content"=> "Dans le domaine du divertissement, notre génie Akinator 
    est devenu une célebrité internationale du Web et du mobile et nous 
    travaillons continuellement sur son amélioration. Mais nous ne comptons 
    pas en rester là...",
  	"rating" => 3
  	}

	article3 = { 
	  "title" => "Au service de l'hunain",
  	"content"=> "Confrontés à une masse d'information de plus en plus collossale, 
    les utilisateurs d'aujourd'hui ont besoin d'outils intelligents qui les aident 
    à s'y retrouver, à obtenir facilement les réponses à leurs questions et à leurs 
    attentes. Mathilde et Loona participent à l'élaboration de ces solutions du futur 
    qui organiseront l'information en la mettant au service de l'humain.",
  	"rating" => 3
	}

	@articles = [ article1, article2, article3 ]
  end
end
