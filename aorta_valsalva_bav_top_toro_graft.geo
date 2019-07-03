#
## 
#
algebraic3d

solid valsalva_sinus_ball = sphere (0, 7, 0.86; 1.735)
      and plane ( 0, 7, 0; 0, 0, -1);
#      and plane ( 0, 7, 1.828; 0, 0, 1);

solid supra_coronary_aneurysm = sphere (0, 7, 1.8375; 2.05)
      and plane ( 0, 7, 0.5; 0, 0, -1);
#      and plane ( 0, 7, 1.828; 0, 0, 1);

solid valsalva_sinus = valsalva_sinus_ball or supra_coronary_aneurysm;

solid ascending = torus ( 0, 3.5, 1.8375; 1, 0, 0; 3.5; 1.375 )
      and plane ( 0, 7, 1.8375; 0, 0, -1);

solid toro_graft = cylinder(0, 6, 1.8375; 0, 12, 1.8375; 0.25)
	and plane(0, 6, 1.8375; 0, -1, 0)
	and plane(0, 12, 1.8375; 0, 1, 0);

solid descending = cylinder ( 0, 0, 2; 0, 0, -16; 1.375 )
	and plane (0, 0, 1.8375; 0, 0, 1)
	and plane (0, 0, -15; 0, 0, -1);

solid brach_trunk = cylinder(0, 4.5, 4; 0, 7.5, 10; 0.6)
	and plane(0, 4.5, 4; 0, -1, -1)
	and plane(0, 7.5, 10; 0, 1, 2);

solid left_carotid_artery = cylinder(0, 3.5, 3.5; 0, 3.5, 18; 0.29)
	and plane(0, 3.5, 6; 0, 0, -1)
	and plane(0, 3.5, 12; 0, 0, 1);

solid left_subclavian_artery = cylinder(0, 1.5, 4; 0, -3.5, 9; 1.22)
	and plane(0, 1.5, 4; 0, 1, -1)
	and plane(0, -3.5, 9; 0, -1, 1);

solid right_renal_artery = cylinder(0, 0, -12; 0, 5, -12; 0.25)
	and plane(0, 0, -12; 0, -1, 0)
	and plane(0, 5, -12; 0, 1, 0);

solid left_renal_artery = cylinder(0, 0, -12; 0, -5, -12; 0.25)
	and plane(0, 0, -12; 0, 1, 0)
	and plane(0, -5, -12; 0, -1, 0);


solid arch = valsalva_sinus or ascending or brach_trunk or left_carotid_artery or left_subclavian_artery or toro_graft;

solid aorta = arch or descending or right_renal_artery or left_renal_artery; 

tlo aorta;
