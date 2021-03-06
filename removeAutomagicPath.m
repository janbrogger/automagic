function removeAutomagicPath()
% removeAutomagicPath  Remove all the Automagic paths from the MATLAB path
%   This is used when Automagic GUI is closed.
%
% Copyright (C) 2018  Amirreza Bahreini, methlabuzh@gmail.com
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

warning('off', 'MATLAB:rmpath:DirNotFound');
automagic_path = fileparts(mfilename('fullpath'));
all_auto_paths = genpath(automagic_path);
all_auto_paths = erase(all_auto_paths, automagic_path);
rmpath(all_auto_paths);
fprintf('All paths related to Automagic removed from MATLAB search path.\n');
end