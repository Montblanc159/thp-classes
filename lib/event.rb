# frozen_string_literal: true

require 'rb-readline'
require 'pry'
require 'dotenv'
require 'time'


Dotenv.load


class Event
  attr_accessor :start_date, :length, :title, :attendees

  def initialize(start_date, length, title, attendees)
    @length = length
    @title = title
    @attendees = attendees
    @start_date = Time.parse(start_date)
  end

  def postpone_24h
    @start_date += 60 * 60 * 24
  end

  def end_date
    end_date = start_date + (length * 60)
  end

  def is_past
    if start_date < Time.now
      return true
    else
      return false
    end
  end

  def is_future
    !self.is_past
  end

  def is_soon
    if is_future && start_date - Time.now < 30 * 60
      return true
    else
      return false
    end
  end

  def to_s
    puts "Titre : #{@title.capitalize}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@length} minutes"
    puts "Invités : #{@attendees.join(", ")}"
  end
end
