class Controller
  def initialize(params)
    @name = params[:name]
    @ascii_art = params[:ascii_art]
    @view = params[:view].new
    command = params[:command]
    image_name = params[:image_name]

    begin
      image_name ? send(command, image_name) : send(command)
    rescue NoMethodError => err
      @view.render('Please enter a valid command.')
      raise err
    end
  end

  def print_image(image_name=@image_name)
    # puts "$$$$" * 50
    @view.render(Image.find_by(name: image_name).ascii_art)
  end
  # command = print_image
end

# print_image("Pink Panther")
