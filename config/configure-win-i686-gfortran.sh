#/usr/bin/env bash
echo "generating total makefile ..." >&2
a=0;t=0;TARGETS=;RMTARGETS=;EEXT=.exe;OEXT=.o;RM="rm -f"
SRC=$(ls -1 src/*.f src/*.f90 src/*.for);OBJDIR=obj
echo 'FC = i686-w64-mingw32-gfortran -g -O2'
echo 'SRC = $(wildcard src/*.f src/*.f90 src/*.for)'
echo "RM = rm -f"
echo "EEXT = .exe"
echo "OEXT = .o"
echo 'OBJ    = $(addsuffix $(OEXT), $(basename ${SRC}))'
echo "OBJDIR = obj"
echo 'FFLAGS = -Iinclude'
echo 'LDFLAGS = -Llib -lm'

for t in $(echo $SRC)
do
	TARGET=$(basename ${t%.*})
	echo 'TARGET'$a = $TARGET
	TARGETS="$TARGET $TARGETS"
	RMTARGETS="$TARGET$EEXT $RMTARGETS"
	a=$(($a+1)) 
done
	echo 'TARGETS' = $TARGETS
	echo 'OBJS' = $OBJS
	echo 'RMTARGETS' = $RMTARGETS
	echo 'all: $(TARGETS)'
a=0
for s in $(echo $SRC)
do
	TARGET=$(basename ${s%.*})
	echo 'obj/$(TARGET'$a')$(OEXT): '$s
	echo -e "\t"'$(FC) -c   $? -o obj/'$TARGET'$(OEXT) $(FFLAGS)'
	if [[ $TARGET != "analysis" ]]
	then
		echo '$(TARGET'$a'): obj/'$TARGET'$(OEXT)'
		echo -e "\t"'$(FC) -o '$TARGET'$(EEXT) $< $(LDFLAGS)'
	else
		echo 'analysis:'
	fi
	a=$(($a+1)) 
done
	echo 'echo created all targets' >&2
	echo 'install: all'
        echo -e '\tmv $(RMTARGETS) bin'
	echo '.PHONY: clean'
	echo 'clean:'
	echo -e "\t"'$(RM) $(OBJDIR)/*$(OEXT) $(OBJS) $(RMTARGETS)'
	echo 'distclean: clean'
    echo -e '\t$(RM) bin/* Makefile'
echo "generating dirs" >&2
echo "generating dirs" >&2
if ! test -d bin; then mkdir  bin; fi
if ! test -d obj; then mkdir  obj; fi
