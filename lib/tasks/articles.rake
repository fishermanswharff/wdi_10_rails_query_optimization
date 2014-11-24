namespace :articles do
  desc "Resets comment counter cache for all articles"
  task reset_counter_cache: :environment do
    Article.all.each { |article| Article.reset_counters(article.id, :comments) }
  end

  # new example of creating a simple rake task
  desc "Returns the count of all articles" 
  task count_articles: :environment do
    puts Article.all.length
  end
end