# Module One Final Project - DELIVERUU - Niki and Alex

Congratulations, you've stumbled upon our CLI Courier Service App Thing!

## Installation Instructions

1. Fork this repo
2. Run bundle
```ruby
$ bundle
```
3. Run the file
```ruby
$ ruby bin/run.rb
```
If you run into errors, run
```ruby
$ rake db:migrate
```
to make sure the database has been created and you can optionally use
```ruby
$ rake db:seed
```
to seed the database with some examples.
## Project Outline

### Upon starting the app
---
You'll be greeted with a login and signup page so use your arrow keys to select what you want to do.

#### Log in

Log in with your username and password and you'll be taken to your homepage.

#### Sign up

Alternatively, you can sign up and you'll be asked to provide the following details:
- First name
- Last name
- Username
- Password

After filling in the basics you'll be asked to provide your [what3words website](https://what3words.com/logs.broken.youth). If you're not familiar with it, it's a service that maps the whole world into 3m x 3m "chunks", each accessible by a unique 3 words string like:
- **stiff.little.finger**
- **credit.card.denied**
- **imaginary.future.partner**
- **glorified.bodily.passage**
- **Inflamed.flesh.massaged**

You get the point.

You'll be asked if you have your address and if you don't you'll be redirected to the [what3words website](https://what3words.com/logs.broken.youth) to find it, after which you can come back and fill it in.
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

Once you have logged in you will have the option to create a new delivery. It will ask for the following details:
- The name of the recipient
- The [what3words website](https://what3words.com/logs.broken.youth) of the recipient (_please note that only valid addresses will be accepted or you'll be prompted to enter a valid one_)
- A description of the contents of your delivery
You will then choose of of three delivery speed options. Each option has a different price per kilometer.
    - **Standard** (_£1.23 per kilometer_)
    - **Express** (_£3.69 per kilometer_)
    - **Lightning** (_£12.01 per kilometer_)

Alternatively, you can cancel the new delivery by selecting the cancel option from the menu list or typing home at any point in the fields that take in an input which will take you back to the homepage.

#### Check current deliveries

This page will list all your deliveries that are currently in transit. Details such as the price you paid for the delivery, recipient details, and contents are also shown. From each delivery you can then navigate back to the list of deliveries or the homepage.

#### Update delivery details

This page will also list your current deliveries but after you select a certain one, you'll be prompted to select what you want to update about it - the recipient address or recipient name. After you input the new details you'll be prompted if you're sure you want to change them, and if you choose yes the delivery and destination details will be persisted to the database, and if you choose no, you'll have the option to go back to the homepage or list the deliveries again.

#### Check past deliveries

This page will only bring up the deliveries that have already been delivered. You can choose a delivery and its details will be brought up.

#### Cancel a current delivery

You can cancel a delivery that's in transit by selecting a delivery from the list on this page, after which you'll again be prompted if you're sure about it, and if you say yes, the delivery will be cancelled and destroyed from the database. If you say no, in a similar fashion to the update delivery option, you'll be given the option to go back to your homepage or list the deliveries once again so you can choose another current one to cancel.

#### Log out

Pretty self explanatory - if you log out, the app is taken back to main screen, where you'll have the option to log back in, sign up with a new account, or quit the app which will close the terminal window (_keep in mind you may be prompted to terminate the terminal process depending on your system preferences_)

### Contributor's Guide
---
If you wish to contribute to the app go for it.

### License
---
License is available in the [License.md file](https://github.com/Ned-el-ch/module-one-final-project-guidelines-london-web-100719/blob/master/LICENSE.md).