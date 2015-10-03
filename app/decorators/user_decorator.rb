class UserDecorator < Draper::Decorator
  delegate_all

  def greeting
    "Hello #{name}"
  end
end
