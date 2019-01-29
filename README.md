# EMSI Website

Evangelical Mission and Seminary International website is created using Google Maps API, Google Firebase APIs, NodeJS/Express, and React. The website contains a public view and an authenticated admin web content management dashboard. The development pipeline embraces CI/CD and uses Jenkins, Docker, and Digital Oceans to streamline and automate development and testing. 

## Active Deployed URL

Proof of concept Site: https://emsi-e77d5.firebaseapp.com/ 

Released Site: TBD

## Description

Spreading the gospel to the chinese community

Headquartered in Towaco, New Jersey U.S.A (36 Alpine Road, Towaco, NJ 07082). EMSI was founded by Pastor Moses Yang. EMSI has branches in 4 continents: Europe, North America, Asia, and Africa. EMSI is made up of the following organizations - Evangelical Bible Institute, Christian Evangelical Mission, and Christian Evangelical Overseas Outreach.

CEM has 9 churches in the eastern United States, 5 in the western United States, 4 in Belgium, 1 in France, 12 in the Netherlands, 4 in Portugal, 2 in Italy, 1 in Hungary, 3 in South Africa, 3 in Japan, 1 in Taipei Taiwan, and 8 in Spain for a total of 53 churches. The primary mission is to establish churches, shepherd the flock, and to plant new churches.

To reach out to people all over the world we have create this amazing website.

This website will be responsible for:

1. Displaying EMSI related data on the web and mobile devices
2. Finding all nearby churches via Google Maps API
3. Administering church details and users by delegating admin roles to different users using Firebase Authentication Services and Database Validation Rules and an intuitive dashboard
4. Multi-lingual content, primarily in English and Chinese
5. Seminary course management for international Seminary Students
6. Online Bookstore including EMSI publication

The website is completely serveless development, relying on Google's Cloud Platform and services. The Firebase database is protectect via Validation rules. Users are securly authenticated through Firebase authentication's Email / Password module. Front end development product documents are extremely modular and intuitive by leveraging ReactJS. Component files are separated into custom, page, or util components, styled by external css files in styles folder and imported as dom modules. The end result is a well optimized and mobile web app where people can immediately find a nearby church. 

## Getting Started

1. Download or clone repository
2. Run npm install
3. Run start.sh to populate the environment variables
4. Run npm start
5. Open localhost:3000

## Building Your Application

1. Run npm run build

## Running Tests

1. Run npm run test

## Deploying

1. Open a pull request to dev branch
2. An admin will approve and merge your changes after code review
3. Jenkins Job will automatically run and deploy to dev server

