# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

 Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
<<<<<<< HEAD
     origins 'https://juilet-air.herokuapp.com', 'http://localhost:3000'
=======
     #origins 'https://juilet-air.herokuapp.com'
     origins 'http://localhost:3000'
>>>>>>> add_whereWeFly_info

     resource '*',
      headers: :any,
       methods: [:post]
   end
 end
