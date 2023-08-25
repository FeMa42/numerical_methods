# 7. Introduction to Neural Networks 

In this exercise we will learn how to use neural networks to solve regression problems. We will use a neural network to predict the currents of the actuators and the change in the joint angle of our Openmanipulator robot arm. In the lecture we learned that we need: 
- data to train the neural network
- pre and post processing functions to prepare the data for the neural network and to interpret the output of the neural network
- a neural network architecture
- a loss function to calculate the error between the output of the neural network and the desired output
- a forward function to calculate the output of the neural network
- a Optimize function to update the weights of the neural network

To build and train the neural network we will use the **flux.jl** package. This package provides a lot of functions to build and train neural networks. The documentation of the package can be found [here](https://fluxml.ai/Flux.jl/stable/).