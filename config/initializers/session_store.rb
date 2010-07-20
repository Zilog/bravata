# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_6valli_session',
  :secret      => 'dc2eae3a49395ca7a60a24f64ab198ad43df1296050a33e69bceebecc1c976c92916a132ac62aa0fb45ed7e55d9f24ad687d2f67ac6fdcce2d983707342dcb8b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
