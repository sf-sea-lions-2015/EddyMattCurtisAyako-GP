require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

controller = Controller.new(
    model: Image,
    view: View,
    # : ARGV[0] ? ARGV[0] : nil,
    command: ARGV[0] ? ARGV[0] : nil,
    image_name: ARGV[1] ? ARGV[1] : nil
)

