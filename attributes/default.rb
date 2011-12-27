# MPI does not truly have the concept of
# master/slave.  Use ['mpi']['role'] for any
# node you want in the default host list
default['mpi']['role'] = "node"

# Setting this will force
# MPI to use a specific network adapter.
# This is useful for complicated network
# setups.
default['mpi']['tcp_if'] = nil
