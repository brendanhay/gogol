{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Schedule.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the schedule for a job.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.schedule.get@.
module Network.Google.Resource.Coordinate.Schedule.Get
    (
    -- * REST Resource
      ScheduleGetResource

    -- * Creating a Request
    , scheduleGet
    , ScheduleGet

    -- * Request Lenses
    , sgJobId
    , sgTeamId
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.schedule.get@ method which the
-- 'ScheduleGet' request conforms to.
type ScheduleGetResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               Capture "jobId" Word64 :>
                 "schedule" :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Schedule

-- | Retrieves the schedule for a job.
--
-- /See:/ 'scheduleGet' smart constructor.
data ScheduleGet = ScheduleGet
    { _sgJobId  :: !Word64
    , _sgTeamId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgJobId'
--
-- * 'sgTeamId'
scheduleGet
    :: Word64 -- ^ 'sgJobId'
    -> Text -- ^ 'sgTeamId'
    -> ScheduleGet
scheduleGet pSgJobId_ pSgTeamId_ =
    ScheduleGet
    { _sgJobId = pSgJobId_
    , _sgTeamId = pSgTeamId_
    }

-- | Job number
sgJobId :: Lens' ScheduleGet Word64
sgJobId = lens _sgJobId (\ s a -> s{_sgJobId = a})

-- | Team ID
sgTeamId :: Lens' ScheduleGet Text
sgTeamId = lens _sgTeamId (\ s a -> s{_sgTeamId = a})

instance GoogleRequest ScheduleGet where
        type Rs ScheduleGet = Schedule
        requestClient ScheduleGet{..}
          = go _sgTeamId _sgJobId (Just AltJSON)
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy ScheduleGetResource)
                      mempty
