FC=gfortran -g -O2
FL=gfortran
EEXE = 
OEXE = .o
SRC = $(wildcard src/*.f src/*.f90 src/*.for)
OBJ = obj/*
FFLAGS = -c
FDFLAGS = -o
LDFLAGS = -Llib
SRCDIR = src/
OBJDIR = obj/
BINDIR = bin/
RM = rm -f
LS = ls
TARGET0 = c2f
TARGET1 = errs
TARGET2 = ex22
TARGET3 = fintest
TARGET4 = format01
TARGET5 = natasha90
TARGET6 = natasha
TARGET7 = p26
TARGET8 = readfour90
TARGET9 = readfour
TARGET10 = s
TARGET11 = test310
TARGET12 = whattime
TARGETS = whattime test310 s readfour readfour90 p26 natasha natasha90 format01 fintest ex22 errs c2f
all: $(TARGETS)
.PHONY: clean
obj/$(TARGET0)$(OEXE): src/c2f.f90
	$(FC) -c   $? -o obj/c2f$(OEXE) $(FFLAGS)
$(TARGET0): obj/c2f$(OEXE)
	$(FC) -o c2f $< $(LDFLAGS)
obj/$(TARGET1)$(OEXE): src/errs.f90
	$(FC) -c   $? -o obj/errs$(OEXE) $(FFLAGS)
$(TARGET1): obj/errs$(OEXE)
	$(FC) -o errs $< $(LDFLAGS)
obj/$(TARGET2)$(OEXE): src/ex22.f90
	$(FC) -c   $? -o obj/ex22$(OEXE) $(FFLAGS)
$(TARGET2): obj/ex22$(OEXE)
	$(FC) -o ex22 $< $(LDFLAGS)
obj/$(TARGET3)$(OEXE): src/fintest.f90
	$(FC) -c   $? -o obj/fintest$(OEXE) $(FFLAGS)
$(TARGET3): obj/fintest$(OEXE)
	$(FC) -o fintest $< $(LDFLAGS)
obj/$(TARGET4)$(OEXE): src/format01.f90
	$(FC) -c   $? -o obj/format01$(OEXE) $(FFLAGS)
$(TARGET4): obj/format01$(OEXE)
	$(FC) -o format01 $< $(LDFLAGS)
obj/$(TARGET5)$(OEXE): src/natasha90.f90
	$(FC) -c   $? -o obj/natasha90$(OEXE) $(FFLAGS)
$(TARGET5): obj/natasha90$(OEXE)
	$(FC) -o natasha90 $< $(LDFLAGS)
obj/$(TARGET6)$(OEXE): src/natasha.f
	$(FC) -c   $? -o obj/natasha$(OEXE) $(FFLAGS)
$(TARGET6): obj/natasha$(OEXE)
	$(FC) -o natasha $< $(LDFLAGS)
obj/$(TARGET7)$(OEXE): src/p26.f90
	$(FC) -c   $? -o obj/p26$(OEXE) $(FFLAGS)
$(TARGET7): obj/p26$(OEXE)
	$(FC) -o p26 $< $(LDFLAGS)
obj/$(TARGET8)$(OEXE): src/readfour90.f90
	$(FC) -c   $? -o obj/readfour90$(OEXE) $(FFLAGS)
$(TARGET8): obj/readfour90$(OEXE)
	$(FC) -o readfour90 $< $(LDFLAGS)
obj/$(TARGET9)$(OEXE): src/readfour.f
	$(FC) -c   $? -o obj/readfour$(OEXE) $(FFLAGS)
$(TARGET9): obj/readfour$(OEXE)
	$(FC) -o readfour $< $(LDFLAGS)
obj/$(TARGET10)$(OEXE): src/s.f
	$(FC) -c   $? -o obj/s$(OEXE) $(FFLAGS)
$(TARGET10): obj/s$(OEXE)
	$(FC) -o s $< $(LDFLAGS)
obj/$(TARGET11)$(OEXE): src/test310.f90
	$(FC) -c   $? -o obj/test310$(OEXE) $(FFLAGS)
$(TARGET11): obj/test310$(OEXE)
	$(FC) -o test310 $< $(LDFLAGS)
obj/$(TARGET12)$(OEXE): src/whattime.f90
	$(FC) -c   $? -o obj/whattime$(OEXE) $(FFLAGS)
$(TARGET12): obj/whattime$(OEXE)
	$(FC) -o whattime $< $(LDFLAGS)
TARGET13 = stdio
$(SRCDIR)stdio.f: $(SRCDIR)stdio0.txt $(SRCDIR)stdio1.txt
	 cat $(SRCDIR)stdio0.txt $(SRCDIR)stdio.txt >$(SRCDIR)stdio.f
$(OBJDIR)$(TARGET13)$(OEXE): $(SRCDIR)$(TARGET13).f
	$(FC) $(FFLAGS) $< $(FDFLAGS) $(OBJDIR)$(TARGET13)$(OEXE) 
$(TARGET13)$(EEXE): $(OBJDIR)$(TARGET13)$(OEXE)
	$(FL) $< $(FDFLAGS) $(TARGET13)$(EEXE) $(LDFLAGS)
	$(RM) $(SRCDIR)$(TARGET13).f
install: all
	mv $(TARGETS) $(BINDIR)
clean:
	$(RM) $(OBJ) $(TARGETS) stdio *.dat *.csv fort.* *.log
distclean: clean
	$(RM) $(BINDIR)* Makefile*
lssrc: 
	echo $(SRC)
