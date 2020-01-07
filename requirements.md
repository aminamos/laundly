Here's a trial project - try forking the repo below and implementing one of the items I asked for through a pull request. You don't have to spend a ton of time on it, maybe just try creating two separate signups for different user types. If you're able to finish everything I outlined, then I'd be thrilled.

https://github.com/mdonagh/laundly/

A friend of mine owns a laundromat and wants to make an app that will allow him to schedule home laundry pickup for his customers, hopefully offering this platform as a Saas product to other laundromats in the area. If we actually get traction for this, we could also switch to Rails API/React Native mobile app.

I'll pay you $30 for completing each of the two milestones below.

For Stripe, go ahead and make an account controlled by an email you create like laundly@gmail.com (or similar), Stripe has test credentials that are really easy to use. I'm not sure how to manage the Stripe platform so that we can send the money to different owner users


Milestone #1
[x] User can sign up as either a laundromat owner or a person seeking to have their laundry done

Laundromat owner can enter details about their business including an address
[] if role id is not owner, hide the new store link
[] assuming each owner has one store. when creating a store, capture the owner id (owner has_many stores, store belongs_to owner)
[] if owner id is in the store id as foreign key, show (show, edit, destroy) links. Otherwise show nothing

Laundromat owner can enter their time availability for pickup
[] make store_availability table, columns store_id, availability_id
[] store has_many availabilities through above table, availability has_many stores through above table
[] make drop-down for the store that availability applies to

User can select a laundromat and order a pickup
[] new table: orders (columns = user_id, store_id, availability_id, weight, status=null, user phone number)
[] the new order page should have a form for submitting the order

Laundromat owner can set the status a load of laundry as collected, processed, and on the way to be returned
[] make an order status table (status:string)
[] have a form to change order status

Laundromat owner can see all of processed and current loads of laundry
[] owner show page for store should show orders and order details for each store

User can enter their phone number and laundromat owner can see it
[]

Milestone #2
Laundromat owner can enter the weight of the load of laundry

Laundromat owner can charge a user for the load of laundry via Stripe

User can enter their credit card details into Stripe.

Use the gem Geocodr and Bing Maps API (has more API calls) to allow the user to filter laundromats within 25 or 50 miles.

Find either an open-source logo for the business (like a cartoon laundry machine? But still professional) or try to get one made off of fiverr, $10/budget for that

Customer can see history of loads/stripe payment

Owner can see history of loads/stripe payment


For the signup flow, I really want it to look like:

First screen:
I am a...
Customer
Laundromat Operator

and then show two different signup flows. The login flow can be the same.LE”‰17N∏ÿ=√‡˜@ΩËÕ¿‹>A