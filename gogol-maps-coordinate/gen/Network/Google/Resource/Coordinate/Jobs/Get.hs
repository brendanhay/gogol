{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a job, including all the changes made to the job.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateJobsGet@.
module Coordinate.Jobs.Get
    (
    -- * REST Resource
      JobsGetAPI

    -- * Creating a Request
    , jobsGet
    , JobsGet

    -- * Request Lenses
    , jgQuotaUser
    , jgPrettyPrint
    , jgJobId
    , jgUserIp
    , jgTeamId
    , jgKey
    , jgOauthToken
    , jgFields
    , jgAlt
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsGet@ which the
-- 'JobsGet' request conforms to.
type JobsGetAPI =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :> Capture "jobId" Word64 :> Get '[JSON] Job

-- | Retrieves a job, including all the changes made to the job.
--
-- /See:/ 'jobsGet' smart constructor.
data JobsGet = JobsGet
    { _jgQuotaUser   :: !(Maybe Text)
    , _jgPrettyPrint :: !Bool
    , _jgJobId       :: !Word64
    , _jgUserIp      :: !(Maybe Text)
    , _jgTeamId      :: !Text
    , _jgKey         :: !(Maybe Text)
    , _jgOauthToken  :: !(Maybe Text)
    , _jgFields      :: !(Maybe Text)
    , _jgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgQuotaUser'
--
-- * 'jgPrettyPrint'
--
-- * 'jgJobId'
--
-- * 'jgUserIp'
--
-- * 'jgTeamId'
--
-- * 'jgKey'
--
-- * 'jgOauthToken'
--
-- * 'jgFields'
--
-- * 'jgAlt'
jobsGet
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> JobsGet
jobsGet pJgJobId_ pJgTeamId_ =
    JobsGet
    { _jgQuotaUser = Nothing
    , _jgPrettyPrint = True
    , _jgJobId = pJgJobId_
    , _jgUserIp = Nothing
    , _jgTeamId = pJgTeamId_
    , _jgKey = Nothing
    , _jgOauthToken = Nothing
    , _jgFields = Nothing
    , _jgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jgQuotaUser :: Lens' JobsGet' (Maybe Text)
jgQuotaUser
  = lens _jgQuotaUser (\ s a -> s{_jgQuotaUser = a})

-- | Returns response with indentations and line breaks.
jgPrettyPrint :: Lens' JobsGet' Bool
jgPrettyPrint
  = lens _jgPrettyPrint
      (\ s a -> s{_jgPrettyPrint = a})

-- | Job number
jgJobId :: Lens' JobsGet' Word64
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jgUserIp :: Lens' JobsGet' (Maybe Text)
jgUserIp = lens _jgUserIp (\ s a -> s{_jgUserIp = a})

-- | Team ID
jgTeamId :: Lens' JobsGet' Text
jgTeamId = lens _jgTeamId (\ s a -> s{_jgTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jgKey :: Lens' JobsGet' (Maybe Text)
jgKey = lens _jgKey (\ s a -> s{_jgKey = a})

-- | OAuth 2.0 token for the current user.
jgOauthToken :: Lens' JobsGet' (Maybe Text)
jgOauthToken
  = lens _jgOauthToken (\ s a -> s{_jgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jgFields :: Lens' JobsGet' (Maybe Text)
jgFields = lens _jgFields (\ s a -> s{_jgFields = a})

-- | Data format for the response.
jgAlt :: Lens' JobsGet' Text
jgAlt = lens _jgAlt (\ s a -> s{_jgAlt = a})

instance GoogleRequest JobsGet' where
        type Rs JobsGet' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsGet{..}
          = go _jgQuotaUser _jgPrettyPrint _jgJobId _jgUserIp
              _jgTeamId
              _jgKey
              _jgOauthToken
              _jgFields
              _jgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsGetAPI) r u
