CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_nod_var       num_info  O         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         gh21.e     maximum_name_length                    
time_whole                            t4   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                      0      �   coordy                      0         coordz                      0      D   eb_names                       $      t   ns_names      	                 D      �   ss_names      
                 D      �   
coor_names                         d      	    node_num_map                          	�   connect1                  	elem_type         EDGE2         (      	�   elem_num_map                          	�   elem_ss1                          	�   side_ss1                          	�   elem_ss2                          	�   side_ss2                          	�   node_ns1                          	�   node_ns2                          	�   vals_nod_var1                          0      t<   vals_nod_var2                          0      tl   name_nod_var                       D      	�   info_records                      j       
4                                 ��      ��333333�ə�����?ə�����?�333334?�                                                                                                                                          left                             right                              left                             right                                                                                                                                                                                                                   pressure                         Seff1VG_Aux                        ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               gh21.i                                                                                                                                                            ### Version Info ###                                                             Framework Information:                                                           SVN Revision:            23455                                                   PETSc Version:           3.4.3                                                   Current Time:            Mon Dec 16 06:08:14 2013                                Executable Timestamp:    Sun Dec 15 12:42:57 2013                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 block                          =                                                 coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       order                          = AUTO                                            active_bcs                     =                                                 active_kernels                 =                                                 inactive_bcs                   =                                                 inactive_kernels               =                                                 start                          = 0                                               decomposition                  =                                                 dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               long_name                      =                                                 solve                          = 1                                             []                                                                                                                                                                [AuxKernels]                                                                                                                                                        [./Seff1VG_AuxK]                                                                   type                         = RichardsSeffAux                                   block                        =                                                   boundary                     =                                                   execute_on                   = residual                                          long_name                    = AuxKernels/Seff1VG_AuxK                           pressure_vars                = pressure                                          seed                         = 0                                                 seff_UO                      = SeffVG                                            use_displaced_mesh           = 0                                                 variable                     = Seff1VG_Aux                                     [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./Seff1VG_Aux]                                                                    block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  =                                                 petsc_options_iname            =                                                 petsc_options_value            =                                                 solve_type                     = Newton                                          type                           = Transient                                       _fe_problem                    = 0x91bc80                                        abort_on_solve_fail            = 0                                               dt                             = 1                                               dtmax                          = 1e+30                                           dtmin                          = 2e-14                                           end_time                       = 100000                                          long_name                      = Executioner                                     n_startup_steps                = 0                                               num_steps                      = 4294967295                                      predictor_scale                =                                                 reset_dt                       = 0                                               restart_file_base              =                                                 scheme                         = implicit-euler                                  ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1.79769e+308                                   time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 timestep_tolerance             = 2e-14                                           trans_ss_check                 = 0                                               use_multiapp_dt                = 0                                               verbose                        = 0                                                                                                                                [./TimeStepper]                                                                    type                         = SolutionTimeAdaptiveDT                            _executioner                 = 0x926050                                          _fe_problem                  = 0x91bc80                                          adapt_log                    = 0                                                 dt                           = 100                                               initial_direction            = 1                                                 long_name                    = Executioner/TimeStepper                           percent_change               = 0.1                                               reset_dt                     = 0                                               [../]                                                                          []                                                                                                                                                                [GlobalParams]                                                                     porepressureNames_UO           = PPNames                                       []                                                                                                                                                                [Kernels]                                                                                                                                                           [./richardsf]                                                                      type                         = RichardsFlux                                      block                        =                                                   diag_save_in                 =                                                   linear_shape_fcns            = 1                                                 long_name                    = Kernels/richardsf                                 porepressureNames_UO         = PPNames                                           save_in                      =                                                   seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = pressure                                        [../]                                                                                                                                                             [./richardst]                                                                      type                         = RichardsMassChange                                block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/richardst                                 lumping                      = 0                                                 porepressureNames_UO         = PPNames                                           save_in                      =                                                   seed                         = 0                                                 use_displaced_mesh           = 0                                                 use_supg                     = 0                                                 variable                     = pressure                                        [../]                                                                          []                                                                                                                                                                [Materials]                                                                                                                                                         [./rock]                                                                           type                         = RichardsMaterial                                  SUPG_UO                      = SUPGstandard                                      block                        = 0                                                 boundary                     =                                                   density_UO                   = DensityConstBulk                                  gravity                      = '(x,y,z)=(      -1,        0,        0)'          linear_shape_fcns            = 1                                                 long_name                    = Materials/rock                                    mat_permeability             = '(xx,xy,xz)=(   1e-05,        0,        0)    (yx,yy,yz)=(       0,    1e-05,        0)                                        (zx,zy,zz)=(       0,        0,    1e-05)'                                           mat_porosity                 = 0.1                                               porepressureNames_UO         = PPNames                                           pressure_vars                = pressure                                          relperm_UO                   = RelPermPower                                      sat_UO                       = Saturation                                        seff_UO                      = SeffVG                                            use_displaced_mesh           = 0                                                 viscosity                    = 0.001                                           [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  =                                                 block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 construct_side_list_from_node_list = 0                                           ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 patch_size                     = 40                                              second_order                   = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               centroid_partitioner_direction =                                                 dim                            = 1                                               distribution                   = DEFAULT                                         elem_type                      =                                                 long_name                      = Mesh                                            nemesis                        = 0                                               nx                             = 5                                               ny                             = 1                                               nz                             = 1                                               partitioner                    = default                                         xmax                           = 1                                               xmin                           = -1                                              ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Output]                                                                           checkpoint_dir_suffix          = cp                                              file_base                      = gh21                                            all_var_norms                  = 0                                               checkpoint                     = 0                                               color_output                   = 1                                               elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               gmv                            = 0                                               gnuplot_format                 = ps                                              hidden_variables               =                                                 interval                       = 100                                             iteration_plot_start_time      = 1.79769e+308                                    linear_residuals               = 0                                               max_pps_rows_screen            = 15                                              nemesis                        = 0                                               num_checkpoint_files           = 0                                               output_displaced               = 0                                               output_es_info                 = 1                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               =                                                 perf_log                       = 0                                               position                       =                                                 postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               pps_fit_to_screen              = ENVIRONMENT                                     screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               time_interval                  =                                                 vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                               output_if_base_contains        =                                               []                                                                                                                                                                [Preconditioning]                                                                                                                                                   [./andy]                                                                           line_search                  = default                                           petsc_options                =                                                   petsc_options_iname          = '-ksp_type -pc_type -snes_atol -snes_rtol ... -snes_max_it'                                                                        petsc_options_value          = 'bcgs bjacobi 1E-15 1E-10 10000'                  solve_type                   =                                                   type                         = SMP                                               full                         = 1                                                 long_name                    = Preconditioning/andy                              off_diag_column              =                                                   off_diag_row                 =                                                   pc_side                      = right                                           [../]                                                                          []                                                                                                                                                                [UserObjects]                                                                                                                                                       [./DensityConstBulk]                                                               type                         = RichardsDensityConstBulk                          bulk_mod                     = 1000                                              dens0                        = 1                                                 execute_on                   = timestep                                          long_name                    = UserObjects/DensityConstBulk                      use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./PPNames]                                                                        type                         = RichardsPorepressureNames                         execute_on                   = timestep                                          long_name                    = UserObjects/PPNames                               porepressure_vars            = pressure                                          use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./RelPermPower]                                                                   type                         = RichardsRelPermPower                              execute_on                   = timestep                                          long_name                    = UserObjects/RelPermPower                          n                            = 2                                                 simm                         = 0.3                                               use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./SUPGstandard]                                                                   type                         = RichardsSUPGstandard                              execute_on                   = timestep                                          long_name                    = UserObjects/SUPGstandard                          p_SUPG                       = 1e-06                                             use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./Saturation]                                                                     type                         = RichardsSat                                       execute_on                   = timestep                                          long_name                    = UserObjects/Saturation                            s_res                        = 0.1                                               sum_s_res                    = 0.1                                               use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./SeffVG]                                                                         type                         = RichardsSeff1VG                                   al                           = 1                                                 execute_on                   = timestep                                          long_name                    = UserObjects/SeffVG                                m                            = 0.8                                               use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./pressure]                                                                       block                        =                                                   family                       = LAGRANGE                                          initial_condition            = -1                                                order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                        ��      ��      ��      ��      ��      ��                                                      @�j     ��3��Ñ����ָ���0�Ѽ����3������#�<����o��M�Q?��)v)?��{̧�}?����l-?׋_�ͭ�?�u��Nf?Ӑߢ���