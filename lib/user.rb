# frozen_string_literal: true

require 'rb-readline'
require 'pry'
require 'dotenv'

Dotenv.load

class User

  attr_accessor :email, :name
  @@users = []

  def initialize(save_email, save_name)
    @email = save_email
    @name = save_name
    @@users.push(@name)
  end

  def self.all
    puts @@users
    @@users
  end

  def self.find_by_email(email)
    ObjectSpace.each_object(self) do |instance|
      if instance.email == email
        return instance
      end
    end
  end
end
