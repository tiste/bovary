activate :gzip
activate :livereload
activate :meta_tags

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
  deploy.build_before = true
end

data.products.each do |product|
  proxy "/products/#{product.slug}/index.html", '/products/show.html', locals: { product: product }, ignore: true
end

proxy '/contact/index.html', '/contact.html', ignore: true

set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :js_dir, 'javascripts'

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

ignore 'stylesheets/main_css_classes/README.md'
