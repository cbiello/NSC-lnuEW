      subroutine setvirtual(p,vflav,virtual)
c Wrapper subroutine to call OL Virtual
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      integer, parameter :: nlegs=nlegbornexternal
      real * 8, intent(in)  :: p(0:3,nlegs)
      integer,  intent(in)  :: vflav(nlegs)
      real * 8, intent(out) :: virtual


c      print*, 'vflav= ', vflav
c      p(:,1) = (/ 100.69795272538047d0,  0.0000000000000000d0,  0.0000000000000000d0,  100.69795272538047d0 /)
c      p(:,2) = (/ 100.69795272538047d0,  0.0000000000000000d0,  0.0000000000000000d0, -100.69795272538047d0 /)
c      p(:,3) = (/ 100.69795272538047d0,  69.978557758545435d0,  13.076413847852908d0, -71.218582813733107d0 /)
c      p(:,4) = (/ 100.69795272538047d0, -69.978557758545435d0, -13.076413847852908d0,  71.218582813733107d0 /)
      
      call openloops_virtual(p,vflav,virtual)

c      print*, 'virtual= ', virtual
      
      end
