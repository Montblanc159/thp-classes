# frozen_string_literal : true

require_relative '../lib/user.rb'

describe User do

  before(:each) do
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

  describe 'initializer' do

    it 'creates an user' do
      user = User.new("email@email.com", "nom")
      expect(user.class).to eq(User)
    end

    it 'saves @email as instance variable' do
      email = "email@email.com"
      name = "name"
      user = User.new(email, name)
      expect(user.email).to eq(email)
      expect(user.name).to eq(name)
    end

  end

  describe 'instance variables' do

    describe '@email & @name' do

      it 'can be read' do
        email = "email@email.com"
        name = "name"
        user = User.new(email, name)
        expect(user.email).to eq(email)
        expect(user.name).to eq(name)
      end

      it 'can be written' do
        email = "email@email.com"
        name = "name"
        user = User.new(email, name)
        email_2 = "email_2@email.com"
        user.email = email_2
        expect(user.email).not_to eq(email)
        expect(user.email).to eq(email_2)
      end

    end

  end

  describe 'class methods' do

    describe 'self.all' do
      it 'shows all the users' do
        user_1 = User.new("email1@email.com", "1")
        user_2 = User.new("email2@email.com", "2")
        user_3 = User.new("email3@email.com", "3")
        expect(User.all).to eq([user_1.name, user_2.name, user_3.name])
      end
    end

  end

end
