# optimal frenet path and stanley control


### (given global map and global path to be tracked)


- find possible candidate paths selected under constraint conditions. (max accelrations, max velocity, max curvature, collisions with obstacles) - cand_paths

- find optimal paths among cand_paths, which has lowest cost among costs of cand_paths taking consistency of path, jerk, time lapsed, target velocity and global path tracking performance.

- get actuation values

- get acceleration with pid control to get to the target speed given difference to target speed(for p), difference to previous velocity(for d) and accumulated difference to target speed(for i) - longitudinal control

- get steering angle with stanley control given x, y, s points of the optimal path to be tracked and currnet x, y, yaw, v(speed) - lateral control

***

### results
1.20km/h with 5 d valuse in sd coordinate in df_set                             
2.30km/h with 3 d values in sd coordinate in df_set
<iframe width="640" height="360" src="https://www.youtube.com/embed/6Az2cNU7gUw" frameborder="0" gesture="media" allowfullscreen=""></iframe>

[![20km/h](https://img.youtube.com/vi/2tYRtg-Atvw/0.jpg)](https://www.youtube.com/watch?v=2tYRtg-Atvw) [![30km/h](https://img.youtube.com/vi/J3nuulkmOPE/0.jpg)](https://www.youtube.com/watch?v=J3nuulkmOPE)2
