%water setup script
switch mode
    case 1
        
        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 20;
        N_u_limit  = 30;
        flow_rate  = 5;
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
       set_time = 20;
       set_speed = 400;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
       
       
    case 2
        
        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 20;
        N_u_limit  = 50;
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
       set_time = 40;
       set_speed = 400;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 3

        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 25;
        N_u_limit  = 35;
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
       set_time = 40;
       set_speed = 900;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 4

        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 10;
        N_u_limit  = 30;
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
       set_time = 30;
       set_speed = 600;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 5
      
        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 25;
        N_u_limit  = 55;
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
       set_time = 30;
       set_speed = 800;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 6
        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 20;
        N_u_limit  = 40;
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
       set_time = 40;
       set_speed = 1200;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

    case 7
        disp('setting up water flow parameters for washing');
        Water_switch = 1;
        N_l_limit  = 25;
        N_u_limit  = 75;
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
       set_time = 30;
       set_speed = 900;
       model = 'BLDC_motor';
        load_system(model);
        motor_out = sim(model);
        disp('Done with washing');
        else
            disp('issue with water flow.....please check');
            return
        end
       

end

        