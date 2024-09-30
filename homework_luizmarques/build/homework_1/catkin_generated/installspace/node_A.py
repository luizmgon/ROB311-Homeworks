#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(message):
    rospy.loginfo(f"Original message: {secret_message}")
    rospy.loginfo(f"Final message received by A: {message.data}")

def node_A():
    rospy.init_node('node_A')

    # Publisher for outgoing message
    pub = rospy.Publisher('incoming_B', String, queue_size=10)

    # Subscriber for incoming message from D
    rospy.Subscriber('incoming_A', String, callback)

    rate = rospy.Rate(0.5)  # 1 message every 2 seconds
    while not rospy.is_shutdown():
        global secret_message
        secret_message = "A"
        pub.publish(secret_message)
        rospy.loginfo("node_A started the sequence")
        rate.sleep()

if __name__ == '__main__':
    try:
        node_A()
    except rospy.ROSInterruptException:
        pass
