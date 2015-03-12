require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

controller = Controller.new(
    model: Image,
    view: View,
    command: ARGV[0] ? ARGV[0] : nil,
    task_data: ARGV[1] ? ARGV[1] : nil
)

