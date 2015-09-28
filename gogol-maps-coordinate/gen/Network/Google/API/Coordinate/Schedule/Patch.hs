{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Coordinate.Schedule.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.schedule.patch@.
module Network.Google.API.Coordinate.Schedule.Patch
    (
    -- * REST Resource
      SchedulePatchAPI

    -- * Creating a Request
    , schedulePatch'
    , SchedulePatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spJobId
    , spAllDay
    , spStartTime
    , spUserIp
    , spTeamId
    , spKey
    , spEndTime
    , spOauthToken
    , spDuration
    , spFields
    , spAlt
    ) where

import           Network.Google.Maps.Coordinate.Types
import           Network.Google.Prelude

-- | A resource alias for coordinate.schedule.patch which the
-- 'SchedulePatch'' request conforms to.
type SchedulePatchAPI =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             "schedule" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "allDay" Bool :>
                     QueryParam "startTime" Word64 :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "endTime" Word64 :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "duration" Word64 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Patch '[JSON] Schedule

-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ 'schedulePatch'' smart constructor.
data SchedulePatch' = SchedulePatch'
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spJobId       :: !Word64
    , _spAllDay      :: !(Maybe Bool)
    , _spStartTime   :: !(Maybe Word64)
    , _spUserIp      :: !(Maybe Text)
    , _spTeamId      :: !Text
    , _spKey         :: !(Maybe Text)
    , _spEndTime     :: !(Maybe Word64)
    , _spOauthToken  :: !(Maybe Text)
    , _spDuration    :: !(Maybe Word64)
    , _spFields      :: !(Maybe Text)
    , _spAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchedulePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spJobId'
--
-- * 'spAllDay'
--
-- * 'spStartTime'
--
-- * 'spUserIp'
--
-- * 'spTeamId'
--
-- * 'spKey'
--
-- * 'spEndTime'
--
-- * 'spOauthToken'
--
-- * 'spDuration'
--
-- * 'spFields'
--
-- * 'spAlt'
schedulePatch'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> SchedulePatch'
schedulePatch' pSpJobId_ pSpTeamId_ =
    SchedulePatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spJobId = pSpJobId_
    , _spAllDay = Nothing
    , _spStartTime = Nothing
    , _spUserIp = Nothing
    , _spTeamId = pSpTeamId_
    , _spKey = Nothing
    , _spEndTime = Nothing
    , _spOauthToken = Nothing
    , _spDuration = Nothing
    , _spFields = Nothing
    , _spAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' SchedulePatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' SchedulePatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | Job number
spJobId :: Lens' SchedulePatch' Word64
spJobId = lens _spJobId (\ s a -> s{_spJobId = a})

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
spAllDay :: Lens' SchedulePatch' (Maybe Bool)
spAllDay = lens _spAllDay (\ s a -> s{_spAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
spStartTime :: Lens' SchedulePatch' (Maybe Word64)
spStartTime
  = lens _spStartTime (\ s a -> s{_spStartTime = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIp :: Lens' SchedulePatch' (Maybe Text)
spUserIp = lens _spUserIp (\ s a -> s{_spUserIp = a})

-- | Team ID
spTeamId :: Lens' SchedulePatch' Text
spTeamId = lens _spTeamId (\ s a -> s{_spTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SchedulePatch' (Maybe Text)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Scheduled end time in milliseconds since epoch.
spEndTime :: Lens' SchedulePatch' (Maybe Word64)
spEndTime
  = lens _spEndTime (\ s a -> s{_spEndTime = a})

-- | OAuth 2.0 token for the current user.
spOauthToken :: Lens' SchedulePatch' (Maybe Text)
spOauthToken
  = lens _spOauthToken (\ s a -> s{_spOauthToken = a})

-- | Job duration in milliseconds.
spDuration :: Lens' SchedulePatch' (Maybe Word64)
spDuration
  = lens _spDuration (\ s a -> s{_spDuration = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SchedulePatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

-- | Data format for the response.
spAlt :: Lens' SchedulePatch' Alt
spAlt = lens _spAlt (\ s a -> s{_spAlt = a})

instance GoogleRequest SchedulePatch' where
        type Rs SchedulePatch' = Schedule
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u SchedulePatch'{..}
          = go _spQuotaUser (Just _spPrettyPrint) _spJobId
              _spAllDay
              _spStartTime
              _spUserIp
              _spTeamId
              _spKey
              _spEndTime
              _spOauthToken
              _spDuration
              _spFields
              (Just _spAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SchedulePatchAPI) r
                      u
