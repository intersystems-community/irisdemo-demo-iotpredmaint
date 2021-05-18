# IoT power transformer predictive maintenance demo.

To just run the application on your PC, make sure you have git and Docker installed on your machine.

You will need to fork or clone this repository to you local machine to get the entire source code. So, go to your git folder and run the following:

```bash
git clone https://github.com/intersystems-community/irisdemo-demo-iotpredmaint
cd irisdemo-demo-iotpredmaint
docker-compose up
```

That should trigger the download of the images that compose this application and it will soon start all the containers. When starting, it is going to show you lots of messages from all the containers that are staring. That is fine. Don't worry.

When it is done, it will just hang there, without returning control to you. That is fine too. Just leave this window open. If you CTRL+C on this window, docker compose will stop all the containers (and stop the application!).

After all the containers have started, open the application landing page on [http://localhost:9094/csp/appint/demo.csp](http://localhost:9092/csp/appint/demo.csp).

Use the username **SuperUser** and the password **sys**. This is just a demo application that is running on your machine, so we are using a default password. The landing page has instructions about how to use the demo application.

### Why do I need to clone/fork the entire repo to run the app?

You don't need all the source code to run the application. But the application relies on a folder structure that allows:
* Zeppelin to store its configuration and log files outside of the containers
* Zeppelin to read/save the notebooks from/to outside of the containers
* Have a shared folder that allows IRIS to read a ML model exported as PMML

It is just easier to clone the repository and get this folder structure "out of the box" instead of having to recreate it.

