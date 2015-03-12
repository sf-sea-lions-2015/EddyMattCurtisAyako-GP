class Controller
  def initialize(params)
    @model = params[:model]
    @list = params[:list]
    @view = params[:view].new
    task_data = params[:task_data]
    command = params[:command ]

    begin
      task_data ? send(command, task_data) : send(command)
    rescue NoMethodError => err
      @view.render('Please enter a valid command.')
      raise err
    end
  end

  # def list
  #   Task.all.each do |task|
  #     @view.render("#{task.id}. #{task.name}")
  #   end
  # end

  def add(image)
    Image.create(name: image)

    # image.errors.full_messages.each { |message| @view.render message } if !image.save
  end

end
