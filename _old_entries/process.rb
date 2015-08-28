# rename
require 'csv'
csv = {}
CSV.open("date.csv").read.each do |i|
  csv[i.shift] = i
end

Dir.glob("*.md").each do |i|
  nondate = i.split('-').last
  key = nondate.gsub(/\.md/, '')
  if csv[key]
    tags = "[" + csv[key].last.strip.split(";").uniq.join(", ") + "]"
    body = File.open(i).read
    body.gsub!("tags: TAGS", "tags: " + tags)
    File.open(i, "w").write(body)
  end
end

