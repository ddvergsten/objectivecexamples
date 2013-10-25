/*
 *  DaveInheritance.cp
 *  DaveInheritance
 *
 *  Created by David Dvergsten on 8/14/13.
 *  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
 *
 */

#include "DaveInheritance.h"
#include "DaveInheritancePriv.h"

CFStringRef DaveInheritanceUUID(void)
{
	CDaveInheritance* theObj = new CDaveInheritance;
	return theObj->UUID();
}

CFStringRef CDaveInheritance::UUID()
{
	return CFSTR("0001020304050607");
}
