///@description timer_init()
///@argument "timer_string"
function timer_init(argument0) {

	//setting up local variable
	var variable_name="timer_"+string(argument0)

	//check if variable exists
	if !variable_instance_exists(id,variable_name)
	{
		variable_instance_set(id,variable_name,-1)	
	}
	 else
	{		
		//countdown timer and set to 0 once done
		if variable_instance_get(id,variable_name)>0
		{
			variable_instance_set(id,variable_name,variable_instance_get(id,variable_name)-(1))
		}
			else
		{
			variable_instance_set(id,variable_name,-1)
			exit;
		}
	}


}
