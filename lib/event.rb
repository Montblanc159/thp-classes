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
end
