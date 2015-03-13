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
    @view.render(Image.find_by(id: image_name).ascii_art)
    # print_stats(image_name)
  end

  # def print_stats(image_name)
  #   coolness = (Rating.find_by(image_id: Image.find_by(id: image_name).id)).coolness
  #   complexity = (Rating.find_by(image_id: Image.find_by(id: image_name).id)).complexity
  #   humor = (Rating.find_by(image_id: Image.find_by(id: image_name).id)).humor
  #   @view.render("Coolness: #{coolness} \nComplexity: #{complexity} \nHumor: #{humor}")
  # end
end
