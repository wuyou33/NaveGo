function qua = euler2qua(euler)
% euler2qua: converts from Euler angles to quaternions.
%
%   Copyright (C) 2014, Rodrigo González, all rights reserved. 
%     
%   This file is part of NaveGo, an open-source MATLAB toolbox for 
%   simulation of integrated navigation systems.
%     
%   NaveGo is free software: you can redistribute it and/or modify
%   it under the terms of the GNU Lesser General Public License (LGPL) 
%   version 3 as published by the Free Software Foundation.
% 
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU Lesser General Public License for more details.
% 
%   You should have received a copy of the GNU Lesser General Public 
%   License along with this program. If not, see 
%   <http://www.gnu.org/licenses/>.
%
% Version: 001
% Date:    2014/09/11
% Author:  Rodrigo Gonzalez <rodralez@frm.utn.edu.ar>
% URL:     https://github.com/rodralez/navego 
%
% Reference: D. H. Titterton and J. L. Weston, Strapdown Inertial 
% Navigation Technology. USA: Institution of Engineering and Technology, 
% 2nd ed., 2004. Eq. 3.65, p. 46.  

  phi = euler(1); theta = euler(2); psi = euler(3);

  cpsi2 = cos(psi/2); spsi2 = sin(psi/2);
  cthe2 = cos(theta/2); sthe2 = sin(theta/2);
  cphi2 = cos(phi/2); sphi2 = sin(phi/2);

  a = cphi2*cthe2*cpsi2 + sphi2*sthe2*spsi2;
  b = sphi2*cthe2*cpsi2 - cphi2*sthe2*spsi2;
  c = cphi2*sthe2*cpsi2 + sphi2*cthe2*spsi2;
  d = cphi2*cthe2*spsi2 + sphi2*sthe2*cpsi2;
  
  qua = [b c d a]';
end
