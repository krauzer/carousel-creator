def image_tag(image_object, height = 300, width = 300, format = "jpg" , classes = [])
  url = Refile.attachment_url(image_object, :image, :fill, height, width, format: format )
  class_string = classes.empty? ? classes.join(" ") : nil
  class_string = "class= " << class_string unless class_string.nil?
  "<img src=#{url} #{class_string}>"
end