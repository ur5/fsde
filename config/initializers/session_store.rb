# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fsde_session',
  :secret      => 'a28f3e85ae35b01dabe1202c5716ad4a8c3893aea17f5db58c9b511ee6f05584192a17f30d944cd6a18685a66431b25d768fe4002b2d974b86a73b219c402baa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
