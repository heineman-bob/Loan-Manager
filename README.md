Loan-Manager
============

####Comments

With being so new to rails I'm sure this comes off as a very primitive design and I would blame that on not knowing the robustness of the language but I believe I have hit all your points in terms of functionality.  I hope this is what you were looking for and I just wanted to say that I'm really passionate about learning what rails can do and will work extremely hard to come up to speed on the ruby language and the rails framework (had to make the distinction).  

-Bob

P.S.  I had thought about providing a bit more functionality in the API and creating a client to consume the API but I figured I wouldn't bite off more than I could chew for how long this was supposed to take.

### Payments API Coding Exercise   

We need an API to manage a loan's scheduled payments.   The API should support:   

1. Retrieving a loan's scheduled payments  
2. Scheduling a new payment   

* Each payment should have  
  * date 
  * amount
  * We need to track whether a payment was successful or not.   

---

Implement a Rails app with working API, DB schema, and any controllers, models, views, or other miscellaneous classes that you deem necessary.  Feel free to make whatever assumptions you like and note them in a README. 

###Setup

1. git clone the app
2. bundle install to get sextant gem
3. run rake db:migrate db:seed to get test data
3. rails server
4. Navigate to localhost:3000 in browser 
5. use web proxy to submit post for creating payments or other similar toolset
   * I used this [tool](https://www.sprintapi.com/dhcs.html) 

The homepage should be self explanitory to find how to use the functionality.
   
####Environment
rails 4.1.6 being used
ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin12.5.0]

Using Sextant gem just to display a wsdl type homepage so the functionality can be seen
	
	
###Assumptions
Everything will be in json in terms of returning data.

Only running in development mode

I assume that the Loan objects already exist and I will populate these loan objects and some scheduled payments in the past to simulate an entire system.

I will only implement the requested functionality and assume these other functions are out of scope.

When app is run I will be able to view all of the loan objects and view all of their scheduled payments.  I will also be able to schedule a new payment against an existing loan.  

A loan will have basic information like 
* Principal
* Interest Rate
* List of Scheduled Loans

Payments will have
* date
* amount
* successful - ```this to me is a bit vague.  What I assume here is that this is just a bool.  When a payment is scheduled this does not necessarily mean that this api would be in charge of processing the payments as that seems like it may be another area of functionality.  To me this is just a bit.```

I assume that scheduling a payment doesn't actually affect the loan model other than putting this into the list of scheduled payments.  I believe this would be processed elsewhere.  

No data validation

Do not eager load payments when viewing all payments
	
###Initial Design Thoughts 
Create Loan model  
Create scheduled payment model  
Styling of client is insignificant
Data validation if time is available.
