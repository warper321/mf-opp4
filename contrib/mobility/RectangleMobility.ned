package org.mf2.contrib.mobility;
//
// Copyright (C) 2005 Andras Varga
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

import org.mf2.core.basicModules.IBasicMobility;


//
// Moves the node around a rectangle.
//
// @see ChannelControl
// @author Andras Varga
//
simple RectangleMobility like IBasicMobility
{
    parameters:
        bool coreDebug = default(false); // debug switch
        bool debug = default(false); // debug switch
        double x1; // rectangle is denoted by the (x1,y1) and (x2,y2) coords
        double y1;
        double x2;
        double y2;
        double startPos; // in range [0.0,4.0): topleft=0, topright=1, bottomright=2, bottomleft=3
        double speed; // speed of the host (in m/s)
        double updateInterval; // time interval to update the hosts position
        @display("i=block/square");
}

