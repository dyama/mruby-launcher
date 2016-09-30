basedir = File.dirname(__FILE__)
[basedir, "#{basedir}/etc"].each do |t|
  next unless File.exist? t
  Dir.open(t) do |dir|
    dir.each do |file|
      if /rc\.rb$/ =~ file
        load "#{t}/#{file}"
      end
    end
  end
end
