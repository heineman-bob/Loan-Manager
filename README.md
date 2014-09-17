Loan-Manager
============

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
	
	
###Assumptions
Everything will be in json in terms of returning data.  I will have a homepage to show the loans and simple page to schedule payments

I assume that the Loan objects already exist and I will populate these loan objects and some scheduled payments in the past to simulate an entire system.

I will only implement the requested functionality and assume these other functions are out of scope.

When app is run I will be able to view all of the loan objects and view all of their scheduled payments.  I will also be able to schedule a new payment against an existing loan.  

A loan will have basic information like 
* Principal
* Interest Rate
* Customer First Name
* Customer Last Name
* List of Scheduled Loans

Payments will have
* date
* amount
* successful - ```this to me is a bit vague.  What I assume here is that this is just a bool.  When a payment is scheduled this does not necessarily mean that this api would be in charge of processing the payments as that seems like it may be another area of functionality.  To me this is just a bit.```

I assume that scheduling a payment doesn't actually affect the loan model other than putting this into the list of scheduled payments.  I believe this would be processed elsewhere.  

I assume I should be doing some error checking for scheduling a payment like greater than or equal to the current date
	
###Initial Design Thoughts 
Create Loan model  
Create scheduled payment model  
Styling of client is insignificant
