RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
end

STATES = ["Rheinland-Pfalz",
 "Niedersachsen",
 "Hessen",
 "Baden-Württemberg",
 "Brandenburg",
 "Sachsen-Anhalt",
 "Thüringen",
 "Mecklenburg-Vorpommern",
 "Sachsen",
 "Schleswig-Holstein",
 "Nordrhein-Westfalen",
 "Hamburg",
 "Berlin",
 "Bayern",
 "Saarland",
 "Bremen",
 "Outside Germany"]