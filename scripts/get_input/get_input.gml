/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3BFBE44F
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2E6337BE
	/// @DnDParent : 3BFBE44F
	/// @DnDArgument : "key" "vk_right"
	var l2E6337BE_0;
	l2E6337BE_0 = keyboard_check(vk_right);
	if (l2E6337BE_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 198BD3BC
		/// @DnDParent : 2E6337BE
		/// @DnDArgument : "expr" "walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4DDD5BB7
	/// @DnDParent : 3BFBE44F
	/// @DnDArgument : "key" "vk_left"
	var l4DDD5BB7_0;
	l4DDD5BB7_0 = keyboard_check(vk_left);
	if (l4DDD5BB7_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20D4CB8B
		/// @DnDParent : 4DDD5BB7
		/// @DnDArgument : "expr" "-walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = -walk_spd;
	}
}