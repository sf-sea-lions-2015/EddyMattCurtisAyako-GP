# require 'faker'

# need to find a way to populate our data-base with ASCII files

  Image.create(name: "Bart", ascii_art: "       , ,\ ,'\,'\ ,'\ ,\ ,
    ,  ;\/ \' `'     `   '  /|
    |\/                      |
    :                        |
    :                        |
     |                       |
     |                       |
     :               -.     _|
      :                \     `.
      |         ________:______\\n
              :,'o       / o    ;
      :       \       ,'-----./
       \_      `--.--'        )
      ,` `.              ,---'|
      : `                     |
       `,-'                   |
       /      ,---.          ,'
    ,-'            `-,------'
   '   `.        ,--'
         `-.____/
 ")


Rating.create(image_id: 1, coolness: 6, humor: 3, complexity: 5, user_id: 3)
