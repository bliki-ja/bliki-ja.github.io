# Usage: rake post title="2004-08-03-C3"
desc "post"
task :post do
  filename = File.join("_posts", ENV["title"] + ".md")
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "title: "
    post.puts "tags: "
    post.puts "---"
  end
end

# Usage: rake post_from url="http://martinfowler.com/bliki/UserStory.html"
desc "post_from"
task :post_from do
  require 'open-uri'
  require 'nokogiri'
  require 'time'

  url = ENV["url"]
  title = url.gsub('http://martinfowler.com/bliki/', '').gsub('.html', '')
  html = open(url).read
  doc = Nokogiri::HTML.parse(html)
  t = Time.parse(doc.xpath('//p[@class="date"]').children.first.to_s)
  tags = "[" + doc.xpath('//p[@class="tags"]/a').map{|a|
    a.children.first.to_s.strip
  }.uniq.join(', ') + "]"
  create_file_name = "#{t.strftime("%Y-%m-%d-")}#{title}.md"

  puts "Creating new post: #{create_file_name}"
  filename = File.join("_posts", create_file_name)
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "title: #{title}"
    post.puts "tags: #{tags}"
    post.puts "---"
  end
end

# Usage: rake page title="A Title"
desc "Create a new page."
task :page do
  title = ENV["title"] || "new-post"
  name = "#{title}.md"
  filename = File.join('.', "#{name}")
  title = File.basename(filename, File.extname(filename)).gsub(/[\W\_]/, " ").gsub(/\b\w/){$&.upcase}
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  mkdir_p File.dirname(filename)
  puts "Creating new page: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: page"
    post.puts "title: "
    post.puts 'description: ""'
    post.puts "---"
  end
end # task :page

desc "server"
task :s do
  sh "bundle exec jekyll s -w -V"
end
