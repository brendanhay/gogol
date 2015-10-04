{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Schedule.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces the schedule of a job with the provided schedule.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateScheduleUpdate@.
module Network.Google.Resource.Coordinate.Schedule.Update
    (
    -- * REST Resource
      ScheduleUpdateResource

    -- * Creating a Request
    , scheduleUpdate'
    , ScheduleUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suJobId
    , suAllDay
    , suStartTime
    , suUserIP
    , suTeamId
    , suPayload
    , suKey
    , suEndTime
    , suOAuthToken
    , suDuration
    , suFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateScheduleUpdate@ which the
-- 'ScheduleUpdate'' request conforms to.
type ScheduleUpdateResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             "schedule" :>
               QueryParam "allDay" Bool :>
                 QueryParam "startTime" Word64 :>
                   QueryParam "endTime" Word64 :>
                     QueryParam "duration" Word64 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Schedule :>
                                       Put '[JSON] Schedule

-- | Replaces the schedule of a job with the provided schedule.
--
-- /See:/ 'scheduleUpdate'' smart constructor.
data ScheduleUpdate' = ScheduleUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suJobId       :: !Word64
    , _suAllDay      :: !(Maybe Bool)
    , _suStartTime   :: !(Maybe Word64)
    , _suUserIP      :: !(Maybe Text)
    , _suTeamId      :: !Text
    , _suPayload     :: !Schedule
    , _suKey         :: !(Maybe Key)
    , _suEndTime     :: !(Maybe Word64)
    , _suOAuthToken  :: !(Maybe OAuthToken)
    , _suDuration    :: !(Maybe Word64)
    , _suFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suJobId'
--
-- * 'suAllDay'
--
-- * 'suStartTime'
--
-- * 'suUserIP'
--
-- * 'suTeamId'
--
-- * 'suPayload'
--
-- * 'suKey'
--
-- * 'suEndTime'
--
-- * 'suOAuthToken'
--
-- * 'suDuration'
--
-- * 'suFields'
scheduleUpdate'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> Schedule -- ^ 'payload'
    -> ScheduleUpdate'
scheduleUpdate' pSuJobId_ pSuTeamId_ pSuPayload_ =
    ScheduleUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suJobId = pSuJobId_
    , _suAllDay = Nothing
    , _suStartTime = Nothing
    , _suUserIP = Nothing
    , _suTeamId = pSuTeamId_
    , _suPayload = pSuPayload_
    , _suKey = Nothing
    , _suEndTime = Nothing
    , _suOAuthToken = Nothing
    , _suDuration = Nothing
    , _suFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' ScheduleUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' ScheduleUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | Job number
suJobId :: Lens' ScheduleUpdate' Word64
suJobId = lens _suJobId (\ s a -> s{_suJobId = a})

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
suAllDay :: Lens' ScheduleUpdate' (Maybe Bool)
suAllDay = lens _suAllDay (\ s a -> s{_suAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
suStartTime :: Lens' ScheduleUpdate' (Maybe Word64)
suStartTime
  = lens _suStartTime (\ s a -> s{_suStartTime = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIP :: Lens' ScheduleUpdate' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | Team ID
suTeamId :: Lens' ScheduleUpdate' Text
suTeamId = lens _suTeamId (\ s a -> s{_suTeamId = a})

-- | Multipart request metadata.
suPayload :: Lens' ScheduleUpdate' Schedule
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' ScheduleUpdate' (Maybe Key)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | Scheduled end time in milliseconds since epoch.
suEndTime :: Lens' ScheduleUpdate' (Maybe Word64)
suEndTime
  = lens _suEndTime (\ s a -> s{_suEndTime = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' ScheduleUpdate' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Job duration in milliseconds.
suDuration :: Lens' ScheduleUpdate' (Maybe Word64)
suDuration
  = lens _suDuration (\ s a -> s{_suDuration = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' ScheduleUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth ScheduleUpdate' where
        authKey = suKey . _Just
        authToken = suOAuthToken . _Just

instance GoogleRequest ScheduleUpdate' where
        type Rs ScheduleUpdate' = Schedule
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u ScheduleUpdate'{..}
          = go _suTeamId _suJobId _suAllDay _suStartTime
              _suEndTime
              _suDuration
              _suQuotaUser
              (Just _suPrettyPrint)
              _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScheduleUpdateResource)
                      r
                      u
