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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10A23C95
	/// @DnDParent : 448B9026
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "v_spd"
	v_spd += global.grav;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 633DE9A6
	/// @DnDParent : 448B9026
	/// @DnDArgument : "var" "abs(h_spd)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.6"
	if(abs(h_spd) < 0.6)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16307C71
		/// @DnDParent : 633DE9A6
		/// @DnDArgument : "var" "h_spd"
		h_spd = 0;
	}
}