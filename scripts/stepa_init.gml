//resolution to init script




global.i_1_scr=display_get_width();

global.i_2_scr=display_get_height();

room_set_width(room1,global.i_1_scr);

room_set_height(room1,global.i_2_scr);

/*
view_visible[0]=1;
view_enabled=1;
view_xport[0]=0;
view_yport[0]=0;
view_wport[0]=global.i_1_scr;
view_hport[0]=global.i_2_scr;
view_xview[0]=0;
view_yview[0]=0;
view_wview[0]=global.i_1_scr;
view_hview[0]=global.i_2_scr;



*/






application_surface_enable(false);//!!!!!!!!!!!!!!! REM ! Global game settings!

display_set_gui_size(global.i_1_scr,global.i_2_scr);
window_set_size(global.i_1_scr-100,global.i_2_scr-100);
//window_set_rectangle(0,0,global.i_1_scr,global.i_2_scr);
display_set_gui_maximise(1,1,0,0);

window_set_fullscreen(true);



switch (os_type)
{
    case os_windows: global.Config = 0; break;
    case os_android: global.Config = 1; break;
    case os_linux: global.Config = 2; break;
    case os_macosx: global.Config = 3; break;
    case os_ios: global.Config = 4; break;
    case os_winphone: global.Config = 5; break;
}


if(os_type==0||os_type==2||os_type==3)global.type=0;
else global.type=1;



