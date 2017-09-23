module ApplicationHelpers
  def svg(name)
    root = Middleman::Application.root
    file_path = "#{root}/source/assets/images/#{name}.svg"
    return File.read(file_path) if File.exists?(file_path)
    "(not found)"
  end
end
