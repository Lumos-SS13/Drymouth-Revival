//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Sunnyvale\Sunnyvale.dmm"
		#include "map_files\Sunnyvale\Sunnyvale_underground.dmm"
		#include "map_files\Pahrump\Dungeons.dmm"

		#ifdef TRAVISBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
