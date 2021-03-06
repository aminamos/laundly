Here's a trial project - try forking the repo below and implementing one of the items I asked for through a pull request. You don't have to spend a ton of time on it, maybe just try creating two separate signups for different user types. If you're able to finish everything I outlined, then I'd be thrilled.

https://github.com/mdonagh/laundly/

A friend of mine owns a laundromat and wants to make an app that will allow him to schedule home laundry pickup for his customers, hopefully offering this platform as a Saas product to other laundromats in the area. If we actually get traction for this, we could also switch to Rails API/React Native mobile app.

For Stripe, go ahead and make an account controlled by an email you create like laundly@gmail.com (or similar), Stripe has test credentials that are really easy to use. I'm not sure how to manage the Stripe platform so that we can send the money to different owner users

Milestone #1
- [x] User can sign up as either a laundromat owner or a person seeking to have their laundry done

Laundromat owner can enter details about their business including an address
- [x] if role id is not owner, hide the new store link
- [x] assuming each owner can see all stores
- [ ] TODO: if multiple owners, will need to add owner id to store table via migration. logic = if owner id is in the store table as foreign key, show store. Otherwise show nothing (owner should only see stores they own and manage). Also helps with Stripe integration

- [x] Laundromat owner can enter their time availability for pickup

- [x] User can select a laundromat and order a pickup

- [x] Laundromat owner can set the status a load of laundry as collected, processed, and on the way to be returned

- [x] Laundromat owner can see all of processed and current loads of laundry

- [x] User can enter their phone number and laundromat owner can see it

Milestone #2
- [x] Laundromat owner can enter the weight of the load of laundry

Laundromat owner can charge a user for the load of laundry via Stripe
- [x] 
User can enter their credit card details into Stripe.
- [x] 
Use the gem Geocodr and Bing Maps API (has more API calls) to allow the user to filter laundromats within 25 or 50 miles.
- [ ] 
Find either an open-source logo for the business (like a cartoon laundry machine? But still professional) or try to get one made off of fiverr, $10/budget for that
- [x] Credit for the logo in app/assets/images: <div>Icons made by <a href="https://www.flaticon.com/authors/xnimrodx" title="xnimrodx">xnimrodx</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

Customer can see history of loads/stripe payment
- [x]
Owner can see history of loads/stripe payment
- [x] 

For the signup flow, I really want it to look like:

First screen:
I am a...
Customer
Laundromat Operator

and then show two different signup flows. The login flow can be the same.LE”‰17N∏ÿ=√‡˜@ΩËÕ¿‹>A