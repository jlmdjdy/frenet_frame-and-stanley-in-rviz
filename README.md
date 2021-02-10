# optimal frenet path and stanley control


### (given global map and global path to be tracked)


- find possible candidate paths selected under constraint conditions. (max accelrations, max velocity, max curvature, collisions with obstacles) - cand_paths

- find optimal paths among cand_paths, which has lowest cost among costs of cand_paths taking consistency of path, jerk, time lapsed, target velocity and global path tracking performance.

- get actuation values

- get acceleration with pid control to get to the target speed given difference to target speed(for p), difference to previous velocity(for d) and accumulated difference to target speed(for i) - longitudinal control

- get steering angle with stanley control given x, y, s points of the optimal path to be tracked and currnet x, y, yaw, v(speed) - lateral control

***

### results

[![20km/h](https://img.youtube.com/vi/2tYRtg-Atvw/sddefault.jpg)](https://www.youtube.com/watch?v=2tYRtg-Atvw)
