# Magic Web Blog

Simple yet elegant blogging web app using modern web technologies.

## Requirements

- Rails 4.2.6+

## Technologies

- Rails (Model-View-Controller framework)
- Ruby (Back-end)
- HTML, CSS, Sass, Ruby (Front-end)
- bcrypt (Password hashing algorithm, stores a secure hash of users' passwords.)

## Usage

I published the assignment on Heroku, after 30 minutes of no traffic it will go in sleep mode, it will become active again after making a request, but expect a initial short delay, you can find it here:

https://magic-blog.herokuapp.com/

However if you want to run locally you must have the following installed:
- Rails 4.2.6+
- Ruby 2.3.0+

By default Mac OS X already comes with Ruby pre-installed, however for Rails follow these instructions:

https://gorails.com/setup

Once installed go into app folder and run:
```bash
bundle install
rails server
```

Now in your web browser go to localhost:3000 and you will see the app running.
If the database appears to be empty, stop the server and run:
```bash
rake db:reset
```
Now start the server again.

I populated the app with random made posts, and comments. Also there are a few users already available:
- Username: 'Boomy', email: 'boomy@doggy.com', password: boomy
- Username: 'Goku', email: 'goku@saiyan.com', password: goku
- Username: 'Elliot', email: 'elliot@hacker.com', password: elliot
- Username: 'Anakin', email: 'anakin@starwars.com', password: anakin

If any problem should arise please contact me!

