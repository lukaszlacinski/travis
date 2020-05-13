#!/bin/bash


date 
exit 0

cd cime/scripts
./create_newcase --case master.A_WCYCL1850.ne4_oQU240.baseline --compset A_WCYCL1850 --res ne4_oQU240
cd master.A_WCYCL1850.ne4_oQU240.baseline
./case.setup
./case.build
