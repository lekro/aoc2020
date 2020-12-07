all: $(basename $(wildcard *.f90))

%: %.f90
	gfortran $< -o $@
