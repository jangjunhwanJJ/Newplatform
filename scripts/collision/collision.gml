/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05D14B9D
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C9A2D56
	/// @DnDParent : 05D14B9D
	/// @DnDArgument : "x" "h_spd"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Obj_solid"
	/// @DnDSaveInfo : "object" "Obj_solid"
	var l3C9A2D56_0 = instance_place(x + h_spd, y + 0, Obj_solid);
	if ((l3C9A2D56_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55678DAF
		/// @DnDParent : 3C9A2D56
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 7406BC0E
		/// @DnDParent : 3C9A2D56
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 40C94468
			/// @DnDParent : 7406BC0E
			/// @DnDArgument : "x" "sign(h_spd)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "Obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "Obj_solid"
			var l40C94468_0 = instance_place(x + sign(h_spd), y + 0, Obj_solid);
			if (!(l40C94468_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 37D30FCE
				/// @DnDParent : 40C94468
				/// @DnDArgument : "expr" "sign(h_spd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(h_spd);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1EAFC647
			/// @DnDParent : 7406BC0E
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 76C058C8
				/// @DnDParent : 1EAFC647
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21982506
				/// @DnDParent : 1EAFC647
				/// @DnDArgument : "var" "h_spd"
				h_spd = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F7470C0
	/// @DnDParent : 05D14B9D
	/// @DnDArgument : "expr" "h_spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += h_spd;
}