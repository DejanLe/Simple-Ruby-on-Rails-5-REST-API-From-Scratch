source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

 
gem 'rails', '~> 5.1.4' 
gem 'sqlite3' 
gem 'puma', '~> 3.7'
 
gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do 
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
	gem 'faker'
end
 
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
