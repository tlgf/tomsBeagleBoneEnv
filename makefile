# makefile
# author: tom flynn
#   date: 20.10.2016
#   desc: compiling, deploying code to a beaglebone

# project specific variables
project_name = 'test_env'

# hardware specific variables
beaglebone_address = '192.168.1.1'
beaglebone_useracc = 'debian'
beaglebone_dir     = '/home/${beaglebone_useracc}/${project_name}'

# recipes 

build:
	arm-linux-gnueabihf-g++ main.cpp -o ${project_name}
deploy:
	scp ./${project_name} '${beaglebone_useracc}@${beaglebone_address}:${beaglebone_dir}'
clean:
	rm -v ./*.o
