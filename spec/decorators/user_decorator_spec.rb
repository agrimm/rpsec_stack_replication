require 'rails_helper'

describe UserDecorator do
  let(:user) { User.new }
  let(:decorated_user) { user.decorate }

  describe '#greeting' do
    # Failing spec
    it 'uses DecoratedUser#name' do
      expect(decorated_user).to receive(:name).and_call_original
      decorated_user.greeting
    end

    # Successful version
    it 'uses User#name' do
      expect(user).to receive(:name).and_call_original
      decorated_user.greeting
    end

    # Also successful, because it's now somehow properly set up
    it 'again uses DecoratedUser#name' do
      expect(decorated_user).to receive(:name).and_call_original
      decorated_user.greeting
    end
  end
end
