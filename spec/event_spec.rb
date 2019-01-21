# frozen_string_literal : true

require_relative '../lib/event.rb'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

  describe "initializer" do
    it "creates a new event" do
      event = Event.new("2019-01-21 09:10", 30, "event", ["attendee_1@gmail.com", "attendee_2@gmail.com"])
      expect(event.class).to eq(Event)
    end

    it "saves date as Time" do
      event = Event.new("2019-01-21 09:10", 30, "event", ["attendee_1@gmail.com", "attendee_2@gmail.com"])
      expect(event.start_date.class).to eq(Time)
    end

    it "saves the title" do
      event = Event.new("2019-01-21 09:10", 30, "event", ["attendee_1@gmail.com", "attendee_2@gmail.com"])
      expect(event.title).to eq("event")
    end

    it "saves the attendees" do
      event = Event.new("2019-01-21 09:10", 30, "event", ["attendee_1@gmail.com", "attendee_2@gmail.com"])
      expect(event.attendees.length).to eq(2)
      expect(event.attendees).to eq(["attendee_1@gmail.com", "attendee_2@gmail.com"])
    end
  end
end
