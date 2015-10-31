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
-- Module      : Network.Google.Resource.Coordinate.Schedule.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.schedule.patch@.
module Network.Google.Resource.Coordinate.Schedule.Patch
    (
    -- * REST Resource
      SchedulePatchResource

    -- * Creating a Request
    , schedulePatch
    , SchedulePatch

    -- * Request Lenses
    , spJobId
    , spAllDay
    , spStartTime
    , spTeamId
    , spPayload
    , spEndTime
    , spDuration
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.schedule.patch@ method which the
-- 'SchedulePatch' request conforms to.
type SchedulePatchResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               Capture "jobId" (Textual Word64) :>
                 "schedule" :>
                   QueryParam "allDay" Bool :>
                     QueryParam "startTime" (Textual Word64) :>
                       QueryParam "endTime" (Textual Word64) :>
                         QueryParam "duration" (Textual Word64) :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Schedule :> Patch '[JSON] Schedule

-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ 'schedulePatch' smart constructor.
data SchedulePatch = SchedulePatch
    { _spJobId     :: !(Textual Word64)
    , _spAllDay    :: !(Maybe Bool)
    , _spStartTime :: !(Maybe (Textual Word64))
    , _spTeamId    :: !Text
    , _spPayload   :: !Schedule
    , _spEndTime   :: !(Maybe (Textual Word64))
    , _spDuration  :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchedulePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spJobId'
--
-- * 'spAllDay'
--
-- * 'spStartTime'
--
-- * 'spTeamId'
--
-- * 'spPayload'
--
-- * 'spEndTime'
--
-- * 'spDuration'
schedulePatch
    :: Word64 -- ^ 'spJobId'
    -> Text -- ^ 'spTeamId'
    -> Schedule -- ^ 'spPayload'
    -> SchedulePatch
schedulePatch pSpJobId_ pSpTeamId_ pSpPayload_ =
    SchedulePatch
    { _spJobId = _Coerce # pSpJobId_
    , _spAllDay = Nothing
    , _spStartTime = Nothing
    , _spTeamId = pSpTeamId_
    , _spPayload = pSpPayload_
    , _spEndTime = Nothing
    , _spDuration = Nothing
    }

-- | Job number
spJobId :: Lens' SchedulePatch Word64
spJobId
  = lens _spJobId (\ s a -> s{_spJobId = a}) . _Coerce

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
spAllDay :: Lens' SchedulePatch (Maybe Bool)
spAllDay = lens _spAllDay (\ s a -> s{_spAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
spStartTime :: Lens' SchedulePatch (Maybe Word64)
spStartTime
  = lens _spStartTime (\ s a -> s{_spStartTime = a}) .
      mapping _Coerce

-- | Team ID
spTeamId :: Lens' SchedulePatch Text
spTeamId = lens _spTeamId (\ s a -> s{_spTeamId = a})

-- | Multipart request metadata.
spPayload :: Lens' SchedulePatch Schedule
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Scheduled end time in milliseconds since epoch.
spEndTime :: Lens' SchedulePatch (Maybe Word64)
spEndTime
  = lens _spEndTime (\ s a -> s{_spEndTime = a}) .
      mapping _Coerce

-- | Job duration in milliseconds.
spDuration :: Lens' SchedulePatch (Maybe Word64)
spDuration
  = lens _spDuration (\ s a -> s{_spDuration = a}) .
      mapping _Coerce

instance GoogleRequest SchedulePatch where
        type Rs SchedulePatch = Schedule
        type Scopes SchedulePatch =
             '["https://www.googleapis.com/auth/coordinate"]
        requestClient SchedulePatch{..}
          = go _spTeamId _spJobId _spAllDay _spStartTime
              _spEndTime
              _spDuration
              (Just AltJSON)
              _spPayload
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy SchedulePatchResource)
                      mempty
