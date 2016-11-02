# Q0: Why is this error being thrown?
There is no Pokemon controller.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Pokemon are appearing from the database. They are all starter Pokemon.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It gets the id of the pokemon to go to the capture method.
# Question 3: What would you name your own Pokemon?
Pokebowl
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path, the path needed the trainer id of the pokemon that was damaged.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The thing returned from errors.full_messages is an array of errors which is then turned into a sentence with the to_sentence method.
# Give us feedback on the project and decal below!
The project was overall a good learning experience. I took me a while to figure out how to use the simple form though.
# Extra credit: Link your Heroku deployed app
