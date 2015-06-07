.extern __dso_handle

.global __app_start
__app_start:

  /* Dirty hack to load gp and avoid load/store exceptions, this should be
  * defined by the linker */
  la gp, __dso_handle
  la tp, _tls_bottom

	j main

.bss
.align  8
_tls_bottom:
.space 1024 
_tls_top:



