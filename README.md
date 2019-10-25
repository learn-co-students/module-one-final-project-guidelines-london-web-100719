# Module One Final Project - DELIVERUU - Niki and Alex
---
Congratulations, you've stumbled upon our CLI Courier Service App Thing!

## Installation Instructions
---
1. Fork this repo
2. Run
```ruby
ruby bin/run.rb
```

## Project Outline
---
### Upon starting the app
---
You'll be greeted with a login and signup page so use your arrow keys to select what you want to do.

#### Log in

Log in with your username and password and you'll be taken to your homepage.

#### Sign up

Alternatively, you can sign up and you'll be asked to provide the following details:
-First name
-Last name
-Username
-Password
After filling in the basics you'll be asked to provide you what3words address. If you're not familiar with it, it's a service that maps the whole world in 3m x 3m "chunks", each accessible with a unique 3 words string like:
- **stiff.little.finger**
- **credit.card.denied**
- **imaginary.future.partner**
- **glorified.bodily.passage**
- **Inflamed.flesh.massaged**

You get the point.

You'll be asked if you have your address, and if you don't you'll be redirected to the [what3words website](https://what3words.com/logs.broken.youth) to find it, after which you can come back and fill it in.
That will complete your registration and you'll be able to proceed to your homepage where you can access all the features of this amazing app.

### Homepage
---
You have a few options here:

- Create a new delivery
- Check current deliveries
- Update delivery details
- Check past deliveries
- Cancel a current delivery
- Log out

#### Create a new delivery

placeholder

#### Check current deliveries

This page will list all your deliveries that are currently in transit. Details such as the price you paid for the delivery, recepient details, and contents are also shown. From each delivery you can then navigate back to the list of deliveries or the homepage.

#### Update delivery details

This page will also list your current deliveries but after you select a certain one, you'll be prompted to select what you want to update about it - the recepient address or recepient name. After you input the new details you'll be prompted if you're sure you want to change them, and if you choose yes the delivery and destination details will be persisted to the database, and if you choose no, you'll have the option to go back to the homepage or list the deliveries again.

#### Check past deliveries

This page will only bring up the deliveries that have already been delivered. You can choose a delivery and its details will be brought up.

#### Cancel a current delivery

You can cancel a delivery that's in transit by selecting a delivery from the list on this page, after which you'll again be prompted if you're sure about it, and if you say yes, the delivery will be cancelled and destroyed from the database. If you say no, in a similar fashion to the update delivery option, you'll be given the option to go back to your homepage or list the deliveries once again so you can choose another current one to cancel.

#### Log out

Pretty self explanatory - if you log out, the app is taken back to main screen, where you'll have the option to log back in, sign up with a new account, or quit the app which will close the terminal window (keep in mind you may be prompted to terminate the terminal process depending on your system preferences)

### Contributor's Guide
---
If you wish to contribute to the app go for it.

### License
---
License is available in the [License.md file](https://github.com/Ned-el-ch/module-one-final-project-guidelines-london-web-100719/blob/master/LICENSE.md).



#### Introducing Yourself
At the beginning of your presentation you'll want to introduce yourself to the audience. Even if you already know your peers and this feels awkward, this is great & low-stakes way to practice for your personal elevator pitch in a welcoming space. Take it seriously and be kind to others; maybe you'll learn something new about someone!

Aim for a short, 30-second summary of your career progression, leading up to Flatiron School, with an emphasis on your professional skills and goals. Think of it as a condensed narration of your story; where you started, what inspired you to get into coding (did you have a pivotal "aha!" moment?), what you're passionate about, and what you're looking forward to going forward (job and/or career wise).

Here are two examples as inspiration:

> Hi, my name is Pam and building and creating things have always been in my blood. It started when I used to make model airplanes in the 5th grade, and continued through college, during which I took a few computer science classes. After graduating with a environmental sustainability degree I worked at hazardous waste and solar energy companies. It wasn't long before I realized that my creative spirit had been stifled and was aching to escape...and that coding was what truly made me come alive! I'm now thrilled to be here at Flatiron and soon launching my new career in software engineering!

> Hi, my name is Tony and I'm a former educator with a Bachelor and Masters in English and Professional Studies from Stony Brook. I've held roles as a teacher, academic policy programmer, and dean of students at two NYC public high schools. I've always loved puzzles and solving problems, and I see coding as an extension of this. I'm excited to merge my previous background in education with my new found programming skills to launch a new career as a developer in the ed tech space.

There's no right or wrong way to introduce yourself. It's your story, so make it your own. :)

#### Technical Presentation Requirements
Having built your project on your own with a partner, you are the expert on it! Even though that's the case, talking about techincal topics can be challenging. Do your best to communicate what you have learned in a way others can digest.
  - Describe something you struggled to build, and show us how you ultimately implemented it in your code.
  - Discuss 3 things you learned in the process of working on this project.
  - Address, if anything, what you would change or add to what you have today?
  - Present any code you would like to highlight.   
  - Be prepared to answer questions from your peers!

---
### Common Questions:
- How do I turn off my SQL logger?
```ruby
# in config/environment.rb add this line:
ActiveRecord::Base.logger = nil
```
