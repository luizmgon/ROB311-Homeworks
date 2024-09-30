#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(message):
    new_message = message.data + "D"
    rospy.loginfo(f"node_D received: {message.data}, sending: {new_message}")
    pub.publish(new_message)

def node_D():
    rospy.init_node('node_D')

    # Publisher for outgoing message
    global pub
    pub = rospy.Publisher('incoming_A', String, queue_size=10)

    # Subscriber for incoming message from C
    rospy.Subscriber('incoming_D', String, callback)

    rospy.spin()

if __name__ == '__main__':
    try:
        node_D()
    except rospy.ROSInterruptException:
        pass
