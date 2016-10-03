path = command_name.gsub "\\", "/"

basedir = File.dirname(path)

[basedir, "#{basedir}/etc"].each do |t|

  next unless File.exist? t

  Dir.open(t) do |dir|
    dir.each do |file|
      load "#{t}/#{file}" if /rc\.rb$/ =~ file
    end
  end

end

exit
