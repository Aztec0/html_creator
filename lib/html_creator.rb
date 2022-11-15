require 'sanitize'

class HTMLCreator
  def html_create(content, bypass_html = false, file_name = 'index.html')
    content = bypass_html ? Sanitize.fragment(content) : content
    
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