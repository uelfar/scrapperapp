Ok , my task was :

The system you need to implement consists of two components:
1 web scraper
1 web server
All the components should run with docker.
You need to do the following:


Write a simple app that retrieves a new random "Fortune of the Day" message from the endpoint below every 10s
http://dojodevopschallenge.s3-website-eu-west-1.amazonaws.com/fortune_of_the_day.json

Expose the random message as a HTML page in the web server container every 10 seconds

==============================================================================================================
What I did till now , which is not the best practice :
- scrapper container which has shell script running all the time , sleep 20 seconds , then using wget download the current
page of required link , generate randome number and get the message of the day of that number .

- simple web server with nginx 

- mounted same directory in both containers , so that the scrapped from the first container shown in the web server 

why it is not best practice , and what to be done better?
1- Although I have included the Dockerfile for the scrapper , I used image in the docker-compose , it is much better to make
docker-compose use the Dockerfile and build (for updating , maintenance ,.. etc )
2- it is better to make a cronjop that call the script instead of using sleep ,.. 






