# This is a message to hold data to jog by specifying a target
# frame. It uses MoveIt! kinematics, so you need to specify the
# JointGroup name to use in group_name. (linear|angular)_delta is the
# amount of displacement.

# header message. You must set frame_id to define the reference
# coordinate system of the displacement
std_msgs/Header header

# Name of JointGroup of MoveIt!
string group_name

# Target link name to jog. The link must be in the JointGroup
string link_name

# Linear displacement vector to jog. The reference frame is defined by
# frame_id in header. Unit is in meter.
geometry_msgs/Vector3 linear_delta

# Angular displacement vector to jog. The reference frame is defined by
# frame_id in header. Unit is in radian.
geometry_msgs/Vector3 angular_delta

# It uses avoid_collisions option of MoveIt! kinematics. If it is
# true, the robot doesn't move if any collisions occurred.
bool avoid_collisions
