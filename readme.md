## Programmers project - Do not collide!

```
(terminal1)
roscore

(t2 visualize map)
rosrun map_server map_visualizer.py

(t3 run rviz)
rviz rviz -d rviz.config.rviz

(t4 - generate parking obstacles)
rosrun obstacles parking_car.py

(t5 - collision check algorithm + visualize cars from topics)
rosrun obstacles collision_check_with_visualizing_car.py

(t6 -  spawn the autonomous agent)
rosrun cv_agents spawn_agent.py

```


### Guideline
1. Implement PID speed controller
2. Implement pure pursuit (or stanley, PID, MPC) as a lateral controller
3. Implement optimal frenet planning algorithm
