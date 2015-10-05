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
module Network.Google.Resource.Coordinate.Jobs.Get
    (
    -- * REST Resource
      JobsGetResource

    -- * Creating a Request
    , jobsGet'
    , JobsGet'

    -- * Request Lenses
    , jgQuotaUser
    , jgPrettyPrint
    , jgJobId
    , jgUserIP
    , jgTeamId
    , jgKey
    , jgOAuthToken
    , jgFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsGet@ which the
-- 'JobsGet'' request conforms to.
type JobsGetResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Retrieves a job, including all the changes made to the job.
--
-- /See:/ 'jobsGet'' smart constructor.
data JobsGet' = JobsGet'
    { _jgQuotaUser   :: !(Maybe Text)
    , _jgPrettyPrint :: !Bool
    , _jgJobId       :: !Word64
    , _jgUserIP      :: !(Maybe Text)
    , _jgTeamId      :: !Text
    , _jgKey         :: !(Maybe Key)
    , _jgOAuthToken  :: !(Maybe OAuthToken)
    , _jgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'jgUserIP'
--
-- * 'jgTeamId'
--
-- * 'jgKey'
--
-- * 'jgOAuthToken'
--
-- * 'jgFields'
jobsGet'
    :: Word64 -- ^ 'jobId'
    -> Text -- ^ 'teamId'
    -> JobsGet'
jobsGet' pJgJobId_ pJgTeamId_ =
    JobsGet'
    { _jgQuotaUser = Nothing
    , _jgPrettyPrint = True
    , _jgJobId = pJgJobId_
    , _jgUserIP = Nothing
    , _jgTeamId = pJgTeamId_
    , _jgKey = Nothing
    , _jgOAuthToken = Nothing
    , _jgFields = Nothing
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
jgUserIP :: Lens' JobsGet' (Maybe Text)
jgUserIP = lens _jgUserIP (\ s a -> s{_jgUserIP = a})

-- | Team ID
jgTeamId :: Lens' JobsGet' Text
jgTeamId = lens _jgTeamId (\ s a -> s{_jgTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jgKey :: Lens' JobsGet' (Maybe Key)
jgKey = lens _jgKey (\ s a -> s{_jgKey = a})

-- | OAuth 2.0 token for the current user.
jgOAuthToken :: Lens' JobsGet' (Maybe OAuthToken)
jgOAuthToken
  = lens _jgOAuthToken (\ s a -> s{_jgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jgFields :: Lens' JobsGet' (Maybe Text)
jgFields = lens _jgFields (\ s a -> s{_jgFields = a})

instance GoogleAuth JobsGet' where
        authKey = jgKey . _Just
        authToken = jgOAuthToken . _Just

instance GoogleRequest JobsGet' where
        type Rs JobsGet' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsGet'{..}
          = go _jgTeamId _jgJobId _jgQuotaUser
              (Just _jgPrettyPrint)
              _jgUserIP
              _jgFields
              _jgKey
              _jgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsGetResource) r
                      u
