#!/usr/bin/env python3
import rospy
import numpy as np
import sensor_msgs.msg
import sensor_msgs.point_cloud2 as pc2
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.axes3d import Axes3D
from sklearn.cluster import DBSCAN
import cv2 as cv

def callback():
    new_points = np.genfromtxt("/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/extra_files/pc2.csv", delimiter=',')
    # Assuming you have a NumPy array called "point_cloud" with shape (500000, 3)
    # where each row represents a point in 3D space with (x, y, z) coordinates

    # # Define the parameters for DBSCAN clustering
    # eps = 0.01  # Distance threshold for neighboring points
    # min_samples = 10  # Minimum number of points in a cluster

    # # Perform DBSCAN clustering
    # dbscan = DBSCAN(eps=eps, min_samples=min_samples)
    # labels = dbscan.fit_predict(new_points)

    # # Get unique labels assigned to each point
    # unique_labels = np.unique(labels)

    # # Segment the point cloud based on the unique labels
    # segmented_point_cloud = []
    # for label in unique_labels:
    #     segment = new_points[labels == label]
    #     segmented_point_cloud.append(segment)

    # # Convert the segmented point clouds to NumPy arrays
    # segmented_point_cloud = np.array([np.asarray(segment) for segment in segmented_point_cloud])
    # # print(segmented_point_cloud)
    # print(segmented_point_cloud[0].shape)

    # points = np.float32(segmented_point_cloud[0])
    # mean, eivec, eival = cv.PCACompute2(points, mean=None)

    # points = segmented_point_cloud[0].reshape(len(segmented_point_cloud[0]), 3).astype('float64')
    # mean, eivec, eival = cv.PCACompute2(points, np.array([]))

    # cntr = (mean[0, 0], mean[0, 1], mean[0, 2])
    # p1 = np.array([cntr[0] + 0.1 * eivec[0, 0] * eival[0],
    #                cntr[1] + 0.1 * eivec[0, 1] * eival[0],
    #                cntr[2] + 0.1 * eivec[0, 2] * eival[0]])
    # p2 = np.array([cntr[0] - 0.1 * eivec[1, 0] * eival[1],
    #                cntr[1] - 0.1 * eivec[1, 1] * eival[1],
    #                cntr[2] - 0.1 * eivec[1, 2] * eival[1]])

    # # print("Mean: ", mean, "\nCntr: ", cntr,"\nEivec: ", eivec, "\nEival: ", eival)
    # print("Mean: ", mean, "\nP1: ", p1,"\nP2: ", p2)

    # t1 = 600
    # t2 = 10000
    # cp1 = [cntr[0] + t1 * (p1[0][0] - cntr[0]), cntr[1] + t1 * (p1[1][0] - cntr[1]), cntr[2] + t1 * (p1[2][0] - cntr[2])]
    # cp2 = [cntr[0] + t2 * (p2[0][0] - cntr[0]), cntr[1] + t2 * (p2[1][0] - cntr[1]), cntr[2] + t2 * (p2[2][0] - cntr[2])]


    x = new_points[:, 0]
    y = new_points[:, 1]
    z = new_points[:, 2]
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.scatter(x, y, z, s=0.1)
    # ax.scatter(0,0,0,s=5,c="green")
    # ax.scatter(0,0,z.mean(),s=5,c="red")
    # ax.scatter(segmented_point_cloud[0][:, 0],segmented_point_cloud[0][:, 1],segmented_point_cloud[0][:, 2],s=0.01,c="red")
    # ax.scatter(segmented_point_cloud[1][:, 0],segmented_point_cloud[1][:, 1],segmented_point_cloud[1][:, 2],s=2,c="red")
    # ax.scatter(segmented_point_cloud[2][:, 0],segmented_point_cloud[2][:, 1],segmented_point_cloud[2][:, 2],s=2,c="red")
    # ax.scatter(segmented_point_cloud[3][:, 0],segmented_point_cloud[3][:, 1],segmented_point_cloud[3][:, 2],s=2,c="red")
    # ax.scatter(mean[0, 0], mean[0, 1], mean[0, 2],s=50,c="red")
    # ax.scatter(cp1[0], cp1[1], cp1[2],s=20,c="blue")
    # ax.scatter(cp2[0], cp2[1], cp2[2],s=20,c="green")
    # ax.plot([cntr[0], cp1[0]], [cntr[1], cp1[1]], [cntr[2], cp1[2]], color='blue')
    # ax.plot([cntr[0], cp2[0]], [cntr[1], cp2[1]], [cntr[2], cp2[2]], color='green')

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title('Point Cloud Visualization')
    plt.show()



callback()