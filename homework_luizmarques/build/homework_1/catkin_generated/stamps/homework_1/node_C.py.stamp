#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def callback(message):
    new_message = message.data + "C"
    rospy.loginfo(f"node_C received: {message.data}, sending: {new_message}")
    pub.publish(new_message)

def node_C():
    rospy.init_node('node_C')

    # Publisher for outgoing message
    global pub
    pub = rospy.Publisher('incoming_D', String, queue_size=10)

    # Subscriber for incoming message from B
    rospy.Subscriber('incoming_C', String, callback)

    rospy.spin()

if __name__ == '__main__':
    try:
        node_C()
    except rospy.ROSInterruptException:
        pass
