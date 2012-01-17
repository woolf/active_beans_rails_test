class User < ActiveRecord::Base
  def name
    "#{first_name} #{last_name}"
  end

  def echo param
    param
  end

  def self.echo_class param
    param
  end

  def self.full_name
    "John Doe"
  end

  def self.hello str
    200000.times do
      rand / rand
    end
    "Hello #{str} #{rand / rand}"
  end

  def join_object str1, str2
    puts "str1 #{str1}"
    puts "str2 #{str2}"
    "#{str1} #{str2}"
  end

  def self.join_class str1, str2
    "#{str1} #{str2}"
  end
end
