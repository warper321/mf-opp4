/* -*- mode:c++ -*- ********************************************************
 * file:        StateView.h
 *
 * author:      Andreas Koepke
 *
 * copyright:   (C) 2004 Telecommunication Networks Group (TKN) at
 *              Technische Universitaet Berlin, Germany.
 *
 *              This program is free software; you can redistribute it 
 *              and/or modify it under the terms of the GNU General Public 
 *              License as published by the Free Software Foundation; either
 *              version 2 of the License, or (at your option) any later 
 *              version.
 *              For further information see file COPYING 
 *              in the top level directory
 ***************************************************************************
 * part of:     testsuite of framework
 * description: vsiualizes state read from blackboard
 ***************************************************************************
 * changelog:   $Revision: 1.2 $
 *              last modified:   $Date: 2004/02/09 13:59:33 $
 *              by:              $Author: omfw-willkomm $
 **************************************************************************/


#ifndef STATE_VIEW_H
#define STATE_VIEW_H

#include <BasicModule.h>

class StateView : public BasicModule
{
private:
    int catHostState;
    cModule *host;

public:

    virtual ~StateView();
    virtual void initialize(int);
    virtual void handleMessage( cMessage* );
    virtual void receiveBBItem(int category, const BBItem *details, int scopeModuleId);
};

#endif
