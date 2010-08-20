# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ggame_session',
  :secret      => '58c63ce74194722eb34dbe1a07be31b8744b5d8015645b5026e4f4759f306483cc35ff40aed1bc38e038353c1740003b22b5f7d311a1ac4fd06824c230af1be1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
