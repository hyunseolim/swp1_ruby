print "Welcome to random directory service."
students = []
loop do
    student={}
        puts " Please input your name"
        name = gets.chomp
        student[:name]=name 
        puts "Please input your phoneNumber"
        phoneNumber = gets.chomp
        student[:phoneNumber]=phoneNumber 
        puts "Please input your gender"
        gender = gets.chomp
            if gender == "female"
                student[:gender]=gender
            else
                student[:gender]="male"
            end
        students << student
    puts students
    puts "If you want to remove a name from the list, type 'remove'"
        remove = gets.chomp
            if remove == "remove"
                loop do
                puts "Enter the name you want to remove from the list"
                    removename = gets.chomp
                    students.each do |s|
                        if removename == s[:name]
                            students.delete(s)
                        else
                            puts "That name does not exist in the list"
                        end
                    
                    end
                    puts students
                puts "If you are now good with the list, type good"
                    good = gets.chomp
                break if good == "good"
                end
            end
end