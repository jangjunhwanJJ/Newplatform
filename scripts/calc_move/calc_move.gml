/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 448B9026
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "calc_move"
function calc_move() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5004B546
	/// @DnDParent : 448B9026
	/// @DnDArgument : "expr" "h_spd*drag"
	/// @DnDArgument : "var" "h_spd"
	h_spd = h_spd*drag;
}