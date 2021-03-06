# cimport ParallelMPI
# cimport TimeStepping
cimport PrognosticVariables
# cimport DiagnosticVariables
cimport Grid
cdef class NetCDFIO_Stats:
    cdef:
        object root_grp
        object profiles_grp
        object ts_grp

        str stats_file_name
        str stats_path
        str output_path
        str path_plus_file
        str uuid

        public double last_output_time
        public double frequency
        public bint do_output

    cpdef initialize(self, dict namelist, Grid.Grid Gr)
    cpdef setup_stats_file(self, Grid.Grid Gr)
    cpdef add_profile(self, var_name)
    cpdef add_reference_profile(self, var_name, Grid.Grid Gr)
    cpdef add_ts(self, var_name, Grid.Grid Gr)
    cpdef open_files(self)
    cpdef close_files(self)
    cpdef write_profile(self, var_name, double[:] data)
    cpdef write_reference_profile(self, var_name, double[:] data)
    cpdef write_ts(self, var_name, double data)
    cpdef write_simulation_time(self, double t)



cdef class NetCDFIO_CondStats:
    cdef:
        str stats_file_name
        str stats_path
        str output_path
        str path_plus_file
        str uuid

        public double last_output_time
        public double frequency
        public bint do_output

    # cpdef initialize(self, dict namelist, Grid.Grid Gr, ParallelMPI.ParallelMPI Pa)
    # cpdef create_condstats_group(self, str groupname, str dimname, double[:] dimval, Grid.Grid Gr, ParallelMPI.ParallelMPI Pa)
    # cpdef add_condstat(self, str varname, str groupname, str dimname, Grid.Grid Gr, ParallelMPI.ParallelMPI Pa)
    # cpdef write_condstat(self, varname, groupname, double[:,:] data, ParallelMPI.ParallelMPI Pa)
    # cpdef write_condstat_time(self, double t, ParallelMPI.ParallelMPI Pa)
