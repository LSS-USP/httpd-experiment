dnl ## XXX - Need a more thorough check of the proper flags to use

APACHE_MPM_MODULE(mvas_worker, $enable_mpm_mvas_worker, mvas_worker.lo fdqueue.lo,[
    AC_CHECK_FUNCS(pthread_kill)
])
