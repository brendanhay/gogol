{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Coordinate.Schedule.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the schedule for a job.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.schedule.get@.
module Network.Google.API.Coordinate.Schedule.Get
    (
    -- * REST Resource
      ScheduleGetAPI

    -- * Creating a Request
    , scheduleGet'
    , ScheduleGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgJobId
    , sgUserIp
    , sgTeamId
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Maps.Coordinate.Types
import           Network.Google.Prelude

-- | A resource alias for coordinate.schedule.get which the
-- 'ScheduleGet'' request conforms to.
type ScheduleGetAPI =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             "schedule" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Schedule

-- | Retrieves the schedule for a job.
--
-- /See:/ 'scheduleGet'' smart constructor.
data ScheduleGet' = ScheduleGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgJobId       :: !Word64
    , _sgUserIp      :: !(Maybe Text)
    , _sgTeamId      :: !Text
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgJobId'
--
-- * 'sgUserIp'
--
-- * 'sgTeamId'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
scheduleGet'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> ScheduleGet'
scheduleGet' pSgJobId_ pSgTeamId_ =
    ScheduleGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgJobId = pSgJobId_
    , _sgUserIp = Nothing
    , _sgTeamId = pSgTeamId_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' ScheduleGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' ScheduleGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | Job number
sgJobId :: Lens' ScheduleGet' Word64
sgJobId = lens _sgJobId (\ s a -> s{_sgJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' ScheduleGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | Team ID
sgTeamId :: Lens' ScheduleGet' Text
sgTeamId = lens _sgTeamId (\ s a -> s{_sgTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' ScheduleGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' ScheduleGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' ScheduleGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' ScheduleGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest ScheduleGet' where
        type Rs ScheduleGet' = Schedule
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u ScheduleGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgJobId
              _sgUserIp
              _sgTeamId
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ScheduleGetAPI) r u
