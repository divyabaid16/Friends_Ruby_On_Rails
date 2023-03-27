Step 1: Create a new rails project

Step 2: Creating a new controller:

rails g (generate) controller home index

create  app/controllers/home_controller.rb
       route  get 'home/index'
      invoke  erb
      create    app/views/home
      create    app/views/home/index.html.erb
      invoke  test_unit
      create    test/controllers/home_controller_test.rb
      invoke  helper
      create    app/helpers/home_helper.rb
      invoke    test_unit

(All the view files have a route)

Step 3: Creating table

rails g scaffold friends first_name:string last_name:string email:string phone:string twitter:string

[WARNING] The model name 'friends' was recognized as a plural, using the singular 'friend' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
      invoke  active_record
      create    db/migrate/20230324071014_create_friends.rb
      create    app/models/friend.rb
      invoke    test_unit
      create      test/models/friend_test.rb
      create      test/fixtures/friends.yml
      invoke  resource_route
       route    resources :friends
      invoke  scaffold_controller
      create    app/controllers/friends_controller.rb
      invoke    erb
      create      app/views/friends
      create      app/views/friends/index.html.erb
      create      app/views/friends/edit.html.erb
      create      app/views/friends/show.html.erb
      create      app/views/friends/new.html.erb
      create      app/views/friends/_form.html.erb
      create      app/views/friends/_friend.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/friends_controller_test.rb
      create      test/system/friends_test.rb
      invoke    helper
      create      app/helpers/friends_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/friends/index.json.jbuilder
      create      app/views/friends/show.json.jbuilder
      create      app/views/friends/_friend.json.jbuilder


rails db:migrate

Step 4: Adding Gem: devise

gem 'devise', '~> 4.9'
bundle install

rails g devise:views

rails generate devise MODEL

rails db:migrate

https://github.com/heartcombo/devise#getting-started

Step 5: Adding a new association (User friend)

rails g migration add_user_id_to_friends user_id:integer:index