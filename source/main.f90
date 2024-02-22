  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  !                                                                                        !
  !                       DAILY INSOLATION (DINSOL-v1.0) MODEL                             !
  !                                                                                        !
  !                Universidade Federal do Vale do São Francisco - UNIVASF                 !
  !                       Laboratório de Meteorologia - LabMet                             !
  !                                                                                        !
  !   Author: Emerson Damasceno de Oliveira                                                !
  !   Last update: 17 January 2022                                                         !
  !                                                                                        !
  !   contact: emerson.oliveira@univasf.edu.br                                             !
  !                                                                                        !
  !  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  !
  !                                                                                        !
  !  Copyright (C) <2022>  <Emerson Damasceno de Oliveira>                                 !
  !                                                                                        !
  !  This program is free software: you can redistribute it and/or modify                  !
  !  it under the terms of the GNU General Public License as published by                  !
  !  the Free Software Foundation, either version 3 of the License, or                     !
  !  (at your option) any later version.                                                   !
  !                                                                                        !
  !  This program is distributed in the hope that it will be useful,                       !
  !  but WITHOUT ANY WARRANTY; without even the implied warranty of                        !
  !  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                         !
  !  GNU General Public License for more details.                                          !
  !                                                                                        !
  !  You should have received a copy of the GNU General Public License                     !
  !  along with this program.  If not, see <https://www.gnu.org/licenses/>.                !
  !                                                                                        !
  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  program dinsol_main

  use dinsol_mod, only: dinsol_init, dinsol_model! , get_orbit_param, orb_param
  
  logical :: valid_request
  
!~   type(orb_param) :: OB
     
    call dinsol_init(valid_request)

    if (valid_request) then
     !Calling program that runs all run subroutines
     call dinsol_model

!~      OB = get_orbit_param(0.)
!~      write(*,*) "RESULTS = ", OB%ecc, OB%oblq, OB%prcs
    endif

  end program dinsol_main
