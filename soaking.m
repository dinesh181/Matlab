%water setup script
switch mode
    case 1
       assignin('base', 'Temperature_max', 30);
        disp('setting up water flow parameters for soaking');
         assignin('base', 'Water_switch', 1);
         
         assignin('base', 'N_l_limit', 5);
          
         assignin('base', 'N_u_limit', 10);
      
         assignin('base', 'flow_rate', 5);
          
         assignin('base', 'Temperature_max', 30);
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        
        
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
        assignin('base', 'set_time', 5);
     
       assignin('base', 'set_speed', 5);
      
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        motor_speed_data = motor_out.get('motor_speed_data');
        desired_speed_data = motor_out.get('desired_speed_data');
        assignin('base', 'motor_speed_data', motor_speed_data);
        assignin('base', 'desired_speed_data', desired_speed_data );
        disp('Done with soaking');
        
       
        case 2
        Temperature_max = 50;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 10;
        N_u_limit  = 20;
        flow_rate  = 10;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 10;
       set_speed = 50;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 3
 Temperature_max = 90;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 15;
        N_u_limit  = 25;
        flow_rate  = 10;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 20;
       set_speed = 50;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 4
        Temperature_max = 40;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 5;
        N_u_limit  = 10;
        flow_rate  = 5;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 5;
       set_speed = 50;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 5
         Temperature_max = 90;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 15;
        N_u_limit  = 25;
        flow_rate  = 10;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 20;
       set_speed = 50;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 6
        Temperature_max = 40;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 10;
        N_u_limit  = 20;
        flow_rate  = 5;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 20;
       set_speed = 60;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 7
         Temperature_max = 40;
        disp('setting up water flow parameters for soaking');
        Water_switch = 1;
        N_l_limit  = 15;
        N_u_limit  = 25;
        flow_rate  = 5;
        % Loading  the water control module
        disp('intiating water flow.....');
        model = 'WaterFlowSubsystem';
        load_system(model);
        Water_out = sim(model);
        water_fill_flag = Water_out.water_fill_flag;         
        if water_fill_flag == 1
        disp('water filled to desired level......setting up temperature');
        disp('intiating water flow.....');
        model = 'Temperature_control';
        load_system(model);
        temp_out = sim(model);
        disp('starting motor');
       set_time = 10;
       set_speed = 50;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with soaking');
        else
            disp('issue with water flow.....please check');
            return
        end
       

end

        