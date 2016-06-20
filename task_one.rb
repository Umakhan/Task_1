f = File.new("my_file.txt","w")

File.open("mddrive.xml") do |f1|
    while readl = f1.gets
	name = readl.split(' ')

    	if  name[0] == "<template"
		line = name[1].split('"')
		f.puts(line[1]) 
    	end
    end
end

f.close

