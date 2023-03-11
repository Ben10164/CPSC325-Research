# Project Proposal

Hey Gina, I decided to do a complete 180 on my Project as a way to make it more tangible. After doing research into unsupervised categorizing for audio files I came to the realization that I mainly wanted to work with MIDI and audio generation, and therefore decided to change my overall topic to be predicting and visualizing market trends in player-player trading in the game Old School RuneScape.  
It might be weird to change after so long, but I feel i'll be able to utilize a lot of the tutorials given by other students rather and familiarize myself with data scrapping and server hosting better with this project while still being related to something I am actively participating and interested in. Anyway, I hope this is okay!

## What is the main motivation and purpose of the project… essentially, “so what?”

The main motivation and purpose of this project is to be able to collect, view, and predict market trends among player-to-player trades of items in the game Old School RuneScape.

### Background

The Grand Exchange (GE) is a way for players to trade with each other by exchanging Gold Pieces (GP) for items. One player puts in a Sell Offer for an item that they have, and another player puts in a buy offer for an amount of GP that they have. If a buy offer is higher than any current sell offer, the buyer will buy the highest current sell offer and is refunded the excess GP.

For a more detailed description of the process, see my file [Background/GrandExchangeBasics.md](Background/GrandExchangeBasics.md)

#### Important Notes

An important thing to note is that GP is not allowed to be exchanged for any real life currency, and doing so will result in an account ban. There is a way to purchase an item known as a Bond from JaGeX (the developers of OSRS) with real money that can be used to either purchase membership for the game or to sell it for GE.

Another thing to know about the GE is that there is a 5% tax when selling items. As a way to implement a "Money Sink" (reducing the amount of GP in the game as a way to balance out the GP brought into the game from item drops) the seller gives up 5% of the money on items more than 100gp.

### Who are stakeholders (users/groups that are impacted by the outcome of the project) interested in this project?

The game Old School RuneScape (OSRS) is estimated to have around 38 million players, the majority of which have accounts that have access to the Grand Exchange. There is even a community in the game that primarily focuses on "flipping" items through market analysis and predictions. Although most users (including me) are not an active member of the flipping community, many still occasionally buy an expensive item or an absurd amount of cheap items hoping for a price increase.

## How does it meet the project requirements (e.g. original, substantial, etc., see above)

Although there are multiple applications that can be used to visualize market trading in OSRS, the majority of which are closed-source and lack any prediction features.

My project will not only utilize the market history, but also mine the weekly update-logs and blogs the dev team posts in order to predict changes in price for certain items involved in the blogs. An example could be if in their blog they list an item being buffed 15%, the program will predict an intense price increase for that weapon, as well as a decrease in price for similar items that are now overshadowed.

### What is the tech stack and how much of it are you familiar with

I am familiar with data visualization and aspects of the game (i.e. ways to distinguish categories of items). I also have contributed to a few open source programs relating to the game that involve knowing item IDs. Some items on the tech stack I am not totally familiar with include deploying to Google servers, although with the tutorials given by fellow students, I have multiple sources to learn how to do this.

### What are the data source(s), how are they timely, and how are you going to ingest them

The data sources come from both JaGeX and a community source from the OSRS Wiki. JaGeX updates the prices daily, whereas the Wiki uses crowdsourcing from a popular client RuneLite to get access to more specific trades in real time! [The Wiki's article on their RealTime Data API](https://oldschool.runescape.wiki/w/RuneScape:Real-time_Prices). Adding onto the realtime data of item transfers, I also plan (stretch goal) to incorporate the weekly update blogs into the predictions of the program. This will involve processing the blog with NLP algorithms and extracting item names and the context surrounding the item.

### What are your major analyses and anticipated findings/results

The main output from this program will be to analyze trends in real time an output any particularly interesting data. The user may also be able to specify certain items to view and keep track of. I anticipate a few results for certain Items, but this might be garblegoop to people who do not know much about the game. The main one is the increase of Best In Slot (BIS) items for Prayer with the upcoming release of the Ruinous Powers prayer book. I also predict that any items relating to Woodcutting, specifically the dragon picaxe, will have a price increase leading up to the forestry expansion.

### What does deployment look like for your project (e.g. how will people “use” it?)

Deployment for this project could be many things. I definitely want to be able to run this in the commandline, but my main focus is for there to be a dashboard that allows for a multitude of data visualization on items and categories.

### What cloud platforms/tools will you be using and how much will the app/system cost

I will be using Google's database tools for the server hosing, as well as possibly streamlit as a way to quickly create an easy webpage. I can't image the app/system cost will be more than the $20 provided for Google Cloud.

## What are the risks of the project and what are your mitigation plans

The only risks for this project is overspending on Google Cloud, and my mitigation plan for that is to set up caps and reminders to turn off the server when not in use.
