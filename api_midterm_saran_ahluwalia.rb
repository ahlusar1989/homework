
require 'rest-client'
require 'json'

def user_input
	gets.chomp
end


def show_jobs(position)
  puts "Positon: #{position[:title]}"
  puts "Max salary: #{position[:salary_max]}"
  puts "============================"
end

def get_from_angelist
  	jobs = JSON.load(RestClient.get('https://api.angel.co/1/jobs/'))
	jobs["jobs"].each do |entry|
	    temp_job = {title: entry["title"], salary_max: entry["salary_max"]}
	    show_jobs temp_job
	end
end


#user name and filtering for location in San Francisco ONLY
print "What is your name? "
name = user_input

print "Are you interested in working in a startup in San Francisco?(y/n) "
user_loc = user_input

 while user_loc =='y' 

	frisco = "San Francisco"
	#alternative "NO"

	puts "Welcome to the 'Frisco' headhunter network #{name}"
	
	print "Would you like to work in a ruby development role?(y/n) " 
	skills = user_input

	if skills.downcase == 'y'
		print "Thank you for inputting that you possess #{skills}. We have potential startups that may be compatible with you!"
			get_from_angelist
	else
		puts "Sorry, we are headhunters for only the San Franciso Bay area Ruby developers. We wish you the best in your future professional and personal endeavors"
	end
end














