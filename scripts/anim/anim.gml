/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 232538F2
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E88E441
	/// @DnDParent : 232538F2
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C21B114
		/// @DnDParent : 1E88E441
		/// @DnDArgument : "var" "h_spd"
		/// @DnDArgument : "not" "1"
		if(!(h_spd == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 48B74BAB
			/// @DnDParent : 2C21B114
			/// @DnDArgument : "expr" "Spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = Spr_walk;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14070D2F
			/// @DnDParent : 2C21B114
			/// @DnDArgument : "var" "h_spd"
			/// @DnDArgument : "not" "1"
			if(!(h_spd == 0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 301576E1
				/// @DnDParent : 14070D2F
				/// @DnDArgument : "var" "h_spd"
				/// @DnDArgument : "op" "2"
				if(h_spd > 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 345B18D3
					/// @DnDParent : 301576E1
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "facing"
					facing = 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 7E177CEF
				/// @DnDParent : 14070D2F
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 390E9622
					/// @DnDParent : 7E177CEF
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "var" "facing"
					facing = -1;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4484C483
		/// @DnDParent : 1E88E441
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63C6ECBB
			/// @DnDParent : 4484C483
			/// @DnDArgument : "expr" "Spr_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = Spr_idle;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 54D94A68
	/// @DnDParent : 232538F2
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7B14A949
		/// @DnDParent : 54D94A68
		/// @DnDArgument : "value" "Spr_air"
		/// @DnDArgument : "instvar" "10"
		sprite_index = Spr_air;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 006B289E
		/// @DnDParent : 54D94A68
		/// @DnDArgument : "var" "v_spd"
		/// @DnDArgument : "op" "1"
		if(v_spd < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3DBD1F5C
			/// @DnDParent : 006B289E
			/// @DnDArgument : "instvar" "11"
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 61818F19
		/// @DnDParent : 54D94A68
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6BF798E2
			/// @DnDParent : 61818F19
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "instvar" "11"
			image_index = 1;
		}
	}
}