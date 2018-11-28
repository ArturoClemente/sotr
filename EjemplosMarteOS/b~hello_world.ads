pragma Ada_95;
pragma Warnings (Off);
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2016 (20160515-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_hello_world" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#5077c535#;
   pragma Export (C, u00001, "hello_worldB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#6f91c939#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#7dbbd31d#;
   pragma Export (C, u00004, "text_ioS");
   u00005 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00005, "adaS");
   u00006 : constant Version_32 := 16#dc18cb19#;
   pragma Export (C, u00006, "ada__text_ioB");
   u00007 : constant Version_32 := 16#7192f352#;
   pragma Export (C, u00007, "ada__text_ioS");
   u00008 : constant Version_32 := 16#1bc0fca1#;
   pragma Export (C, u00008, "ada__exceptionsB");
   u00009 : constant Version_32 := 16#feee21fd#;
   pragma Export (C, u00009, "ada__exceptionsS");
   u00010 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerB");
   u00011 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerS");
   u00012 : constant Version_32 := 16#9fc77f7f#;
   pragma Export (C, u00012, "systemS");
   u00013 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#0143a72a#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00015, "system__parametersB");
   u00016 : constant Version_32 := 16#e1ed7200#;
   pragma Export (C, u00016, "system__parametersS");
   u00017 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#34a6b016#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00019, "system__storage_elementsB");
   u00020 : constant Version_32 := 16#b204357b#;
   pragma Export (C, u00020, "system__storage_elementsS");
   u00021 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00021, "system__stack_checkingB");
   u00022 : constant Version_32 := 16#11781497#;
   pragma Export (C, u00022, "system__stack_checkingS");
   u00023 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00023, "system__exception_tableB");
   u00024 : constant Version_32 := 16#c269163d#;
   pragma Export (C, u00024, "system__exception_tableS");
   u00025 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00025, "system__exceptionsB");
   u00026 : constant Version_32 := 16#f7a41289#;
   pragma Export (C, u00026, "system__exceptionsS");
   u00027 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#e14d86bb#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#9d1c9fbd#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#c1e5a1bb#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#9f9c890f#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#6fd210f2#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00038, "ada__exceptions__tracebackB");
   u00039 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00039, "ada__exceptions__tracebackS");
   u00040 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00040, "system__address_imageB");
   u00041 : constant Version_32 := 16#3e2be245#;
   pragma Export (C, u00041, "system__address_imageS");
   u00042 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00042, "system__wch_conB");
   u00043 : constant Version_32 := 16#84ba5dad#;
   pragma Export (C, u00043, "system__wch_conS");
   u00044 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00044, "system__wch_stwB");
   u00045 : constant Version_32 := 16#a9ab71ac#;
   pragma Export (C, u00045, "system__wch_stwS");
   u00046 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00046, "system__wch_cnvB");
   u00047 : constant Version_32 := 16#8b0de75e#;
   pragma Export (C, u00047, "system__wch_cnvS");
   u00048 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00048, "interfacesS");
   u00049 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00049, "system__wch_jisB");
   u00050 : constant Version_32 := 16#0b7dfe7f#;
   pragma Export (C, u00050, "system__wch_jisS");
   u00051 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00051, "ada__streamsB");
   u00052 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00052, "ada__streamsS");
   u00053 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00053, "ada__io_exceptionsS");
   u00054 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00054, "ada__tagsB");
   u00055 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00055, "ada__tagsS");
   u00056 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00056, "system__htableB");
   u00057 : constant Version_32 := 16#1b05cc95#;
   pragma Export (C, u00057, "system__htableS");
   u00058 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00058, "system__string_hashB");
   u00059 : constant Version_32 := 16#b95ba7eb#;
   pragma Export (C, u00059, "system__string_hashS");
   u00060 : constant Version_32 := 16#ab4103fc#;
   pragma Export (C, u00060, "system__unsigned_typesS");
   u00061 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00061, "system__val_unsB");
   u00062 : constant Version_32 := 16#bbe9eec7#;
   pragma Export (C, u00062, "system__val_unsS");
   u00063 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00063, "system__val_utilB");
   u00064 : constant Version_32 := 16#3367c981#;
   pragma Export (C, u00064, "system__val_utilS");
   u00065 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00065, "system__case_utilB");
   u00066 : constant Version_32 := 16#bbce16a8#;
   pragma Export (C, u00066, "system__case_utilS");
   u00067 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00067, "interfaces__c_streamsB");
   u00068 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00068, "interfaces__c_streamsS");
   u00069 : constant Version_32 := 16#ef56a971#;
   pragma Export (C, u00069, "system__crtlS");
   u00070 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00070, "system__file_ioB");
   u00071 : constant Version_32 := 16#38b69e1a#;
   pragma Export (C, u00071, "system__file_ioS");
   u00072 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00072, "ada__finalizationS");
   u00073 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00073, "system__finalization_rootB");
   u00074 : constant Version_32 := 16#d0350cef#;
   pragma Export (C, u00074, "system__finalization_rootS");
   u00075 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00075, "interfaces__cB");
   u00076 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00076, "interfaces__cS");
   u00077 : constant Version_32 := 16#2fb7b9d2#;
   pragma Export (C, u00077, "system__os_libB");
   u00078 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00078, "system__os_libS");
   u00079 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00079, "system__stringsB");
   u00080 : constant Version_32 := 16#e1786e19#;
   pragma Export (C, u00080, "system__stringsS");
   u00081 : constant Version_32 := 16#6258e5d7#;
   pragma Export (C, u00081, "system__file_control_blockS");
   u00082 : constant Version_32 := 16#a6359005#;
   pragma Export (C, u00082, "system__memoryB");
   u00083 : constant Version_32 := 16#c6ba194b#;
   pragma Export (C, u00083, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  system.file_io%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  text_io%s
   --  hello_world%b
   --  END ELABORATION ORDER


end ada_main;
