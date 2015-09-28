{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Jobs.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of jobs matching the criteria.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.jobs.search@.
module Network.Google.API.Genomics.Jobs.Search
    (
    -- * REST Resource
      JobsSearchAPI

    -- * Creating a Request
    , jobsSearch'
    , JobsSearch'

    -- * Request Lenses
    , jsQuotaUser
    , jsPrettyPrint
    , jsUserIp
    , jsKey
    , jsOauthToken
    , jsFields
    , jsAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.jobs.search which the
-- 'JobsSearch'' request conforms to.
type JobsSearchAPI =
     "jobs" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchJobsResponse

-- | Gets a list of jobs matching the criteria.
--
-- /See:/ 'jobsSearch'' smart constructor.
data JobsSearch' = JobsSearch'
    { _jsQuotaUser   :: !(Maybe Text)
    , _jsPrettyPrint :: !Bool
    , _jsUserIp      :: !(Maybe Text)
    , _jsKey         :: !(Maybe Text)
    , _jsOauthToken  :: !(Maybe Text)
    , _jsFields      :: !(Maybe Text)
    , _jsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsQuotaUser'
--
-- * 'jsPrettyPrint'
--
-- * 'jsUserIp'
--
-- * 'jsKey'
--
-- * 'jsOauthToken'
--
-- * 'jsFields'
--
-- * 'jsAlt'
jobsSearch'
    :: JobsSearch'
jobsSearch' =
    JobsSearch'
    { _jsQuotaUser = Nothing
    , _jsPrettyPrint = True
    , _jsUserIp = Nothing
    , _jsKey = Nothing
    , _jsOauthToken = Nothing
    , _jsFields = Nothing
    , _jsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jsQuotaUser :: Lens' JobsSearch' (Maybe Text)
jsQuotaUser
  = lens _jsQuotaUser (\ s a -> s{_jsQuotaUser = a})

-- | Returns response with indentations and line breaks.
jsPrettyPrint :: Lens' JobsSearch' Bool
jsPrettyPrint
  = lens _jsPrettyPrint
      (\ s a -> s{_jsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jsUserIp :: Lens' JobsSearch' (Maybe Text)
jsUserIp = lens _jsUserIp (\ s a -> s{_jsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jsKey :: Lens' JobsSearch' (Maybe Text)
jsKey = lens _jsKey (\ s a -> s{_jsKey = a})

-- | OAuth 2.0 token for the current user.
jsOauthToken :: Lens' JobsSearch' (Maybe Text)
jsOauthToken
  = lens _jsOauthToken (\ s a -> s{_jsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jsFields :: Lens' JobsSearch' (Maybe Text)
jsFields = lens _jsFields (\ s a -> s{_jsFields = a})

-- | Data format for the response.
jsAlt :: Lens' JobsSearch' Alt
jsAlt = lens _jsAlt (\ s a -> s{_jsAlt = a})

instance GoogleRequest JobsSearch' where
        type Rs JobsSearch' = SearchJobsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u JobsSearch'{..}
          = go _jsQuotaUser (Just _jsPrettyPrint) _jsUserIp
              _jsKey
              _jsOauthToken
              _jsFields
              (Just _jsAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsSearchAPI) r u
