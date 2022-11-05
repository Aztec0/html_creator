require 'sanitize'

class HTMLCreator
  def html_create(content, bypass_html, file_name = 'index.html')
    content = Sanitize.fragment(content) unless bypass_html
    content = content unless bypass_html == false

    f = File.open(file_name, "w+")
    f.puts "<!DOCTYPE html>"
    f.puts "<html lang=\"uk\">"
    f.puts "  <head>"
    f.puts "    <meta charset='utf-8'>"
    f.puts "    <title>Tamagochi</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <script>"
    f.puts "    </script>"
    f.puts "    #{content}"
    f.puts "  </body>"
    f.puts "</html>"
    f.close
  end
end