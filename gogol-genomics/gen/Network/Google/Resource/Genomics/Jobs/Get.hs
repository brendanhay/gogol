{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a job by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsJobsGet@.
module Genomics.Jobs.Get
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
    , jgKey
    , jgOauthToken
    , jgFields
    , jgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsJobsGet@ which the
-- 'JobsGet' request conforms to.
type JobsGetAPI =
     "jobs" :> Capture "jobId" Text :> Get '[JSON] Job

-- | Gets a job by ID.
--
-- /See:/ 'jobsGet' smart constructor.
data JobsGet = JobsGet
    { _jgQuotaUser   :: !(Maybe Text)
    , _jgPrettyPrint :: !Bool
    , _jgJobId       :: !Text
    , _jgUserIp      :: !(Maybe Text)
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
-- * 'jgKey'
--
-- * 'jgOauthToken'
--
-- * 'jgFields'
--
-- * 'jgAlt'
jobsGet
    :: Text -- ^ 'jobId'
    -> JobsGet
jobsGet pJgJobId_ =
    JobsGet
    { _jgQuotaUser = Nothing
    , _jgPrettyPrint = True
    , _jgJobId = pJgJobId_
    , _jgUserIp = Nothing
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

-- | Required. The ID of the job.
jgJobId :: Lens' JobsGet' Text
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jgUserIp :: Lens' JobsGet' (Maybe Text)
jgUserIp = lens _jgUserIp (\ s a -> s{_jgUserIp = a})

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
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u JobsGet{..}
          = go _jgQuotaUser _jgPrettyPrint _jgJobId _jgUserIp
              _jgKey
              _jgOauthToken
              _jgFields
              _jgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsGetAPI) r u
