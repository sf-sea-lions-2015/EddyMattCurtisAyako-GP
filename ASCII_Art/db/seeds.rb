require 'pathname'

ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '..')))
# require 'faker'

# need to find a way to populate our data-base with ASCII files

#   Image.create(name: "Bart", ascii_art: "       , ,\ ,'\,'\ ,'\ ,\ ,
#     ,  ;\/ \' `'     `   '  /|
#     |\/                      |
#     :                        |
#     :                        |
#      |                       |
#      |                       |
#      :               -.     _|
#       :                \     `.
#       |         ________:______\\n
#               :,'o       / o    ;
#       :       \       ,'-----./
#        \_      `--.--'        )
#       ,` `.              ,---'|
#       : `                     |
#        `,-'                   |
#        /      ,---.          ,'
#     ,-'            `-,------'
#    '   `.        ,--'
#          `-.____/
#  ")


# Rating.create(image_id: 1, coolness: 6, humor: 3, complexity: 5, user_id: 3)

Dir[ROOT.join('images','*.txt')].each do |file|
  File.open(file, "r") do |image_file|
    Image.create(ascii_art: image_file.to_s)
  end

end
