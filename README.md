# Network Connectivity Logger

## Introduction

This project is for logging how reliable my internet connection is.
I have wondered when I'm on a video call and the call stutters, "is it me or them"?

### Project plan

My plan (for now) is to log the ethernet connection and see how frequently the connection drops.
I plan to analyze the time between events (lost connection) with a rare events control chart.
I'll also look at the duration of each drop.

Before attempting any improvements, I may run a designed experiment with the log as response.
I've noticed the Wi-Fi tends to have issues if the vacuum cleaner is running. 
I may try a simple 3 factor experiment:

  1. ethernet vs Wi-Fi, 
  2. no vacuum vs vacuum on
  3. before improvement vs after

### Goals

  - Use a shell as much as possible - I'm trying to get out of my super convenient R + RStudio workflow rut and do something different
  - Explore how my connection is currently working
  - Improve the connectivity if there are issues
  - Collaborate with others - I'd love to hear how to improve my shell work, and other ways to analyze the data

### Setup

  - Powershell script LogConnectivity.ps1 that does the logging work
  - using Github desktop and Bash shell to manage git workflow
  - I'm not sure yet, once I have logs to look at I'll write some code for analysis

### Usage

Log file(s) will be used to see how reliable my connection is

### Contributing

Feel free to submit issues or pull requests if you'd like to improve something or contribute.