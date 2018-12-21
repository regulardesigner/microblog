# How to install your microblog.

## First clone the repos on your computer
```sh
git clone https://github.com/regulardesigner/microblog.git
```

Then you can intialize your rails project.
```sh
bundle install

rake db:migrate
```

## You have to create your administrator account (with the rails console) to be able to create and save articles.
```sh
$ MyAdminAccount = Admin.create(:email => "youremailaddress@gmail.com", :password => "yourpassord")
$ MyAdminAccount.save
```

That's it! It's so damned simple!
