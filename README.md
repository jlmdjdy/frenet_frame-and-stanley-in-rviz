# optimal frenet path and stanley control


### (given global map and global path to be tracked)


1. find possible candidate paths selected under constraint conditions. (max accelrations, max velocity, max curvature, collisions with obstacles) - cand_paths

2. find optimal paths among cand_paths, which has lowest cost among costs of cand_paths, taking several performance factors such as consistency of path, jerk, time lapsed, target velocity and global path tracking performance into account.

3. get actuation values (acceleration, steering angle)

    - get acceleration with pid control to get to the target speed given difference to target speed(for p), difference to previous velocity(for d) and accumulated difference to target speed(for i) - longitudinal control

    - get steering angle with stanley control given x, y points and yaws of the optimal path to be tracked and currnet x, y, yaw, v(speed) - lateral control




#### commands to start the simulation

```
roscd cd_agents/launch && roslaunch launch_all.launch
```


![demo](https://github.com/jlmdjdy/frenet_frame-and-stanley-in-rviz/blob/main/frenet_20.gif)


***

### results
1.20km/h with 5 d valuse in sd coordinate in df_set, click on the iamge below!                         

[![20km/h](https://img.youtube.com/vi/2tYRtg-Atvw/0.jpg)](https://www.youtube.com/watch?v=2tYRtg-Atvw) 

2.30km/h with 3 d values in sd coordinate in df_set, click on the image below!

[![30km/h](https://img.youtube.com/vi/J3nuulkmOPE/0.jpg)](https://www.youtube.com/watch?v=J3nuulkmOPE)
