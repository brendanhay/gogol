{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Jobs.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of jobs matching the criteria.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsJobsSearch@.
module Network.Google.Resource.Genomics.Jobs.Search
    (
    -- * REST Resource
      JobsSearchResource

    -- * Creating a Request
    , jobsSearch'
    , JobsSearch'

    -- * Request Lenses
    , jsQuotaUser
    , jsPrettyPrint
    , jsUserIP
    , jsSearchJobsRequest
    , jsKey
    , jsOAuthToken
    , jsFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsJobsSearch@ which the
-- 'JobsSearch'' request conforms to.
type JobsSearchResource =
     "jobs" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchJobsRequest :>
                         Post '[JSON] SearchJobsResponse

-- | Gets a list of jobs matching the criteria.
--
-- /See:/ 'jobsSearch'' smart constructor.
data JobsSearch' = JobsSearch'
    { _jsQuotaUser         :: !(Maybe Text)
    , _jsPrettyPrint       :: !Bool
    , _jsUserIP            :: !(Maybe Text)
    , _jsSearchJobsRequest :: !SearchJobsRequest
    , _jsKey               :: !(Maybe Key)
    , _jsOAuthToken        :: !(Maybe OAuthToken)
    , _jsFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsQuotaUser'
--
-- * 'jsPrettyPrint'
--
-- * 'jsUserIP'
--
-- * 'jsSearchJobsRequest'
--
-- * 'jsKey'
--
-- * 'jsOAuthToken'
--
-- * 'jsFields'
jobsSearch'
    :: SearchJobsRequest -- ^ 'SearchJobsRequest'
    -> JobsSearch'
jobsSearch' pJsSearchJobsRequest_ =
    JobsSearch'
    { _jsQuotaUser = Nothing
    , _jsPrettyPrint = True
    , _jsUserIP = Nothing
    , _jsSearchJobsRequest = pJsSearchJobsRequest_
    , _jsKey = Nothing
    , _jsOAuthToken = Nothing
    , _jsFields = Nothing
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
jsUserIP :: Lens' JobsSearch' (Maybe Text)
jsUserIP = lens _jsUserIP (\ s a -> s{_jsUserIP = a})

-- | Multipart request metadata.
jsSearchJobsRequest :: Lens' JobsSearch' SearchJobsRequest
jsSearchJobsRequest
  = lens _jsSearchJobsRequest
      (\ s a -> s{_jsSearchJobsRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jsKey :: Lens' JobsSearch' (Maybe Key)
jsKey = lens _jsKey (\ s a -> s{_jsKey = a})

-- | OAuth 2.0 token for the current user.
jsOAuthToken :: Lens' JobsSearch' (Maybe OAuthToken)
jsOAuthToken
  = lens _jsOAuthToken (\ s a -> s{_jsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jsFields :: Lens' JobsSearch' (Maybe Text)
jsFields = lens _jsFields (\ s a -> s{_jsFields = a})

instance GoogleAuth JobsSearch' where
        authKey = jsKey . _Just
        authToken = jsOAuthToken . _Just

instance GoogleRequest JobsSearch' where
        type Rs JobsSearch' = SearchJobsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u JobsSearch'{..}
          = go _jsQuotaUser (Just _jsPrettyPrint) _jsUserIP
              _jsKey
              _jsOAuthToken
              _jsFields
              (Just AltJSON)
              _jsSearchJobsRequest
          where go
                  = clientWithRoute (Proxy :: Proxy JobsSearchResource)
                      r
                      u
