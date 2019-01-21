# frozen_string_literal: true

require_relative 'lib/event'
require_relative 'lib/user'

User.new("julie@julie.com", "Julie")
User.new("jean@jean.com", "Jean")

julie = User.find_by_email("julie@julie.com")
jean = User.find_by_email("jean.jean.com")

rdv = Event.new("2019-01-21 17:50", 60, "RDV important", [julie, jean])

puts "Voici l'email du premier attendee de l'événement : #{rdv.attendees.first.email}"
