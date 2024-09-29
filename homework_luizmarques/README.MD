#  ENSTA Paris - ROS311 Homeworks

Luiz Henrique Marques Gonçalves \
Sep - Oct 2025

## Homework 1: The Telephone Game

### Description:

The proposed activity describes a cyclic communication two-by-two, where the last node (D) sends a message back to A, closing the loop.

Once we don't want everyone to subscribe to everyone's messages, each communication pair must bem transmitted through a unique topic. For a good code readability, it was chose to name the topics with the name ``` incoming_[receiver_letter] ```. So, if we want the message to be trasmitted as ```A -> B -> C -> D -> A``` we can define:

- ```A``` publishes to ```incoming_B``` and subscribes to ```incoming_A```.
- ```B``` publishes to ```incoming_C``` and subscribes to ```incoming_B```.
- ```C``` publishes to ```incoming_D``` and subscribes to ```incoming_C```.
- ```D``` publishes to ```incoming_A``` and subscribes to ```incoming_D```.

Everytime a node receives its message, its callback function must read the message, add its letter to it and publish it - except for A, who will just print the original and final received message.

Also, as we want ```node_A``` to trigger the initial message each 2 seconds we can create a ```rate = rospy.rate(0.5)``` (0.5 Hz = once each 2 secs) to be called in the and of ```node_A```'s main loop with ```rate.sleep()```. This function will add dynamic sleeps to ensure - if possible - the desired loop frequency.

The final code for nodes A, B, C and D can be found in its respective source files (see **Folder Structure below**).

There are two possible ways to run the nodes and see them working:

1. Open 5 different terminal windows and run the following commands, one in each tab:
    - ```roscore``` to initiate a ROS Master.
    - ```rosrun homework_1 node_D.py```
    - ```rosrun homework_1 node_C.py```
    - ```rosrun homework_1 node_B.py```
    - ```rosrun homework_1 node_A.py```

    With the info logs you may see the message flow.

2. Create a launch file to manage the start of all nodes:
    - Create a folder ```launch``` in the package and create a ```homework_1.launch``` file inside it.
    - Write the following XML inside ```homework_1.launch```: 
     ```
        <launch>
        <node name="node_B" pkg="homework_1" type="node_B.py" output="screen" />
        <node name="node_C" pkg="homework_1" type="node_C.py" output="screen" />
        <node name="node_D" pkg="homework_1" type="node_D.py" output="screen" />
        <node name="node_A" pkg="homework_1" type="node_A.py" output="screen" />
        </launch>    
    ```
    - Run ```roslaunch homework_1 homework_1.launch```.

    All info logs will be shown in the same window.

After launching the nodes, we can use ```rqt``` to see the following Node/Topic graph that shows perfectly the message flow desired for the actity. 

     




### Folder Structure:

```
└───homework_luizmarques
    │   README.MD
    │
    ├───build
    ├───devel
    └───src
        │   CMakeLists.txt
        │
        └───homework_1
            │   CMakeLists.txt
            │   package.xml
            │
            ├───launch
            │   homework_1.launch
            │
            └───src
                │   node_A.py
                │   node_B.py
                │   node_C.py
                │   node_D.py
```

