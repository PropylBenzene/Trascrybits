dir = ARGV[0]
file = ARGV[1]

a = `mp3splt  -Q  -d #{dir}  -t  0.15  #{file}` #1>&- 2>&-
b = `ls #{dir}`
c = b.split("\n")

response = ""
for i in 0..c.length do
		while response != "c" do	
			`mplayer /#{dir}/#{c[i]}`
			puts "Did you finish transcribing? r = repeat ; c = continue"
			response = STDIN.gets.chomp
		end
	response = ""
	next
end



