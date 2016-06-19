activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end
activate :directory_indexes

set :css_dir, "assets/stylesheets"
set :images_dir, "assets/images"
set :markdown_engine, :redcarpet
set :markdown do |markdown|
  markdown.smartypants = true
  markdown.with_toc_data = true
end

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_html
end
