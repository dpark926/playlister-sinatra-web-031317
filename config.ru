require './config/environment'
# require 'sinatra'
# require_relative 'app/controllers/artists_controller'
# require_relative 'app/controllers/genres_controller'
# require_relative 'app/controllers/songs_controller'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use ArtistController #Should this be here?
use GenreController #Should this be here?
use SongController #Should this be here?
run ApplicationController
