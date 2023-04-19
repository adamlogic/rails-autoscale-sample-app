# Judoscale Sample App

This is a small Rails app that you can deploy to Heroku in a single click. It provides tools for generating web traffic and background jobs so you can test capacity issues and trigger autoscaling when using the [Judoscale Heroku add-on](https://elements.heroku.com/judoscale).

To get started right away with the default setup, click the button below.

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/judoscale/rails-autoscale-sample-app/tree/render-deloy)

The app includes Sidekiq for job processing and Judoscale pre-installed.

## Use cases

- You’ve never used Judoscale and want to play with it.
- You already use Judoscale and want to experiment with different configurations.
- You don’t care at all about Judoscale but just need a simple Rails app on Heroku or Render for whatever reason.

## Making changes to your deployment

If you want to make code changes to your own deployment of this app, [create a new repo from the template](https://github.com/adamlogic/rails-autoscale-sample-app/generate) first. As long as the repo is public, you can then use the deploy button from your own repo.

If you only want to make _configuration changes_ to your deployment, you can do that using the deploy buttons here (without creating your own repo).

## How to use the app

After you deploy the app and open it, you’ll see a home screen with a summary of how to use it and a sidebar with the following links:

- **Requests** – Use this tool to generate web traffic and trigger web autoscaling.
- **Jobs** – Use this tool to generate background jobs and trigger worker autoscaling.
- **Job Dashboard** – Open the web UI specific to the job processing library.
- **Heroku** – Launch the Heroku dashboard for the app.
<!-- - **Judoscale** – Launch the Judoscale dashboard for the app. -->

<!-- ## Request Generator

The request generator has two components: a form for sending one-off web requests from your web browser with configurable server processing time, and a helper for running load tests from the command line with `wrk`.

The default configuration deploys with three web (Puma) threads and a single web worker (Puma process). This means it can handle at most three concurrent requests on a single dyno.

To see this in action, configure the requests to each take a second (1000ms) for application processing time, then quickly hit the button four times to send four requests. The fourth request will take longer because it had to wait for an available thread. **This is request queueing in action!**

If the app had autoscaling enabled, it likely just triggered an upscale depending on the autoscale settings.

Firing requests from the browser is useful for tiny experiments like this, but since browsers are limited on the number of concurrent requests, you’ll want to use `wrk` for hit the app with any substantial traffic. -->
