# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

use Rack::LiveReload

set :app_file, __FILE__
map('/attachments') {run Refile.app}
map('/') {run Sinatra::Application}
