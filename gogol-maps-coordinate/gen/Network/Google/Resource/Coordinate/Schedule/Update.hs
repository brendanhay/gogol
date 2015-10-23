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
-- Module      : Network.Google.Resource.Coordinate.Schedule.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the schedule of a job with the provided schedule.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.schedule.update@.
module Network.Google.Resource.Coordinate.Schedule.Update
    (
    -- * REST Resource
      ScheduleUpdateResource

    -- * Creating a Request
    , scheduleUpdate
    , ScheduleUpdate

    -- * Request Lenses
    , suJobId
    , suAllDay
    , suStartTime
    , suTeamId
    , suPayload
    , suEndTime
    , suDuration
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.schedule.update@ method which the
-- 'ScheduleUpdate' request conforms to.
type ScheduleUpdateResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               Capture "jobId" (JSONText Word64) :>
                 "schedule" :>
                   QueryParam "allDay" Bool :>
                     QueryParam "startTime" (JSONText Word64) :>
                       QueryParam "endTime" (JSONText Word64) :>
                         QueryParam "duration" (JSONText Word64) :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Schedule :> Put '[JSON] Schedule

-- | Replaces the schedule of a job with the provided schedule.
--
-- /See:/ 'scheduleUpdate' smart constructor.
data ScheduleUpdate = ScheduleUpdate
    { _suJobId     :: !(JSONText Word64)
    , _suAllDay    :: !(Maybe Bool)
    , _suStartTime :: !(Maybe (JSONText Word64))
    , _suTeamId    :: !Text
    , _suPayload   :: !Schedule
    , _suEndTime   :: !(Maybe (JSONText Word64))
    , _suDuration  :: !(Maybe (JSONText Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suJobId'
--
-- * 'suAllDay'
--
-- * 'suStartTime'
--
-- * 'suTeamId'
--
-- * 'suPayload'
--
-- * 'suEndTime'
--
-- * 'suDuration'
scheduleUpdate
    :: Word64 -- ^ 'suJobId'
    -> Text -- ^ 'suTeamId'
    -> Schedule -- ^ 'suPayload'
    -> ScheduleUpdate
scheduleUpdate pSuJobId_ pSuTeamId_ pSuPayload_ =
    ScheduleUpdate
    { _suJobId = _Coerce # pSuJobId_
    , _suAllDay = Nothing
    , _suStartTime = Nothing
    , _suTeamId = pSuTeamId_
    , _suPayload = pSuPayload_
    , _suEndTime = Nothing
    , _suDuration = Nothing
    }

-- | Job number
suJobId :: Lens' ScheduleUpdate Word64
suJobId
  = lens _suJobId (\ s a -> s{_suJobId = a}) . _Coerce

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
suAllDay :: Lens' ScheduleUpdate (Maybe Bool)
suAllDay = lens _suAllDay (\ s a -> s{_suAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
suStartTime :: Lens' ScheduleUpdate (Maybe Word64)
suStartTime
  = lens _suStartTime (\ s a -> s{_suStartTime = a}) .
      mapping _Coerce

-- | Team ID
suTeamId :: Lens' ScheduleUpdate Text
suTeamId = lens _suTeamId (\ s a -> s{_suTeamId = a})

-- | Multipart request metadata.
suPayload :: Lens' ScheduleUpdate Schedule
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Scheduled end time in milliseconds since epoch.
suEndTime :: Lens' ScheduleUpdate (Maybe Word64)
suEndTime
  = lens _suEndTime (\ s a -> s{_suEndTime = a}) .
      mapping _Coerce

-- | Job duration in milliseconds.
suDuration :: Lens' ScheduleUpdate (Maybe Word64)
suDuration
  = lens _suDuration (\ s a -> s{_suDuration = a}) .
      mapping _Coerce

instance GoogleRequest ScheduleUpdate where
        type Rs ScheduleUpdate = Schedule
        requestClient ScheduleUpdate{..}
          = go _suTeamId _suJobId _suAllDay _suStartTime
              _suEndTime
              _suDuration
              (Just AltJSON)
              _suPayload
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy ScheduleUpdateResource)
                      mempty
