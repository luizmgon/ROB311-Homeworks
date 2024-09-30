#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(message):
    new_message = message.data + "B"
    rospy.loginfo(f"node_B received: {message.data}, sending: {new_message}")
    pub.publish(new_message)

def node_B():
    rospy.init_node('node_B')

    # Publisher for outgoing message
    global pub
    pub = rospy.Publisher('incoming_C', String, queue_size=10)

    # Subscriber for incoming message from A
    rospy.Subscriber('incoming_B', String, callback)

    rospy.spin()

if __name__ == '__main__':
    try:
        node_B()
    except rospy.ROSInterruptException:
        pass
