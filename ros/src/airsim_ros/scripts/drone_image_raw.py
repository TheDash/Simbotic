#!/usr/bin/env python

# Example ROS node for publishing AirSim images.

# AirSim Python API
import setup_path 
import airsim
import pprint

import rospy

# ROS Image message
from sensor_msgs.msg import Image

def airpub():
    pub = rospy.Publisher("airsim/image_raw", Image, queue_size=1)
    rospy.init_node('image_raw', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    # connect to the AirSim simulator 
    client = airsim.MultirotorClient()
    client.confirmConnection()
    rospy.loginfo("Connection confirmed")
    client.enableApiControl(True, "Drone1")
    client.enableApiControl(True, "Drone2")

    state1 = client.getMultirotorState(vehicle_name="Drone1")
    s = pprint.pformat(state1)
    rospy.loginfo("%s", s)

    while not rospy.is_shutdown():
         # get camera images from the car
        rospy.loginfo("Retrieving image")
        responses = client.simGetImages([
            airsim.ImageRequest("1", airsim.ImageType.Scene, False, False)], vehicle_name="Drone1")  #scene vision image in uncompressed RGBA array

        for response in responses:
            img_rgba_string = response.image_data_uint8

        rospy.loginfo("Populating image")
        # Populate image message
        msg=Image() 
        msg.header.stamp = rospy.Time.now()
        msg.header.frame_id = "frameId"
        msg.encoding = "rgba8"
        msg.height = 360  # resolution should match values in settings.json 
        msg.width = 640
        msg.data = img_rgba_string
        msg.is_bigendian = 0
        msg.step = msg.width * 4

        # log time and size of published image
        rospy.loginfo(len(response.image_data_uint8))
        # publish image message
        pub.publish(msg)
        rospy.loginfo("Published image")
        # sleep until next cycle
        rate.sleep()


if __name__ == '__main__':
    try:
        airpub()
    except rospy.ROSInterruptException:
        pass
