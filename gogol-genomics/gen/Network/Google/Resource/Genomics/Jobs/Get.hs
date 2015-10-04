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
module Network.Google.Resource.Genomics.Jobs.Get
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
    , jgKey
    , jgOAuthToken
    , jgFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsJobsGet@ which the
-- 'JobsGet'' request conforms to.
type JobsGetResource =
     "jobs" :>
       Capture "jobId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets a job by ID.
--
-- /See:/ 'jobsGet'' smart constructor.
data JobsGet' = JobsGet'
    { _jgQuotaUser   :: !(Maybe Text)
    , _jgPrettyPrint :: !Bool
    , _jgJobId       :: !Text
    , _jgUserIP      :: !(Maybe Text)
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
-- * 'jgKey'
--
-- * 'jgOAuthToken'
--
-- * 'jgFields'
jobsGet'
    :: Text -- ^ 'jobId'
    -> JobsGet'
jobsGet' pJgJobId_ =
    JobsGet'
    { _jgQuotaUser = Nothing
    , _jgPrettyPrint = True
    , _jgJobId = pJgJobId_
    , _jgUserIP = Nothing
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

-- | Required. The ID of the job.
jgJobId :: Lens' JobsGet' Text
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jgUserIP :: Lens' JobsGet' (Maybe Text)
jgUserIP = lens _jgUserIP (\ s a -> s{_jgUserIP = a})

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
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u JobsGet'{..}
          = go _jgJobId _jgQuotaUser (Just _jgPrettyPrint)
              _jgUserIP
              _jgFields
              _jgKey
              _jgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsGetResource) r
                      u
