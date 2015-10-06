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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsInsert@.
module Network.Google.Resource.BigQuery.Jobs.Insert
    (
    -- * REST Resource
      JobsInsertResource

    -- * Creating a Request
    , jobsInsert'
    , JobsInsert'

    -- * Request Lenses
    , jiQuotaUser
    , jiPrettyPrint
    , jiUserIP
    , jiPayload
    , jiMedia
    , jiKey
    , jiProjectId
    , jiOAuthToken
    , jiFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsInsert@ which the
-- 'JobsInsert'' request conforms to.
type JobsInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] Job Stream :>
                           Post '[JSON] Job

-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ 'jobsInsert'' smart constructor.
data JobsInsert' = JobsInsert'
    { _jiQuotaUser   :: !(Maybe Text)
    , _jiPrettyPrint :: !Bool
    , _jiUserIP      :: !(Maybe Text)
    , _jiPayload     :: !Job
    , _jiMedia       :: !Stream
    , _jiKey         :: !(Maybe AuthKey)
    , _jiProjectId   :: !Text
    , _jiOAuthToken  :: !(Maybe OAuthToken)
    , _jiFields      :: !(Maybe Text)
    }

-- | Creates a value of 'JobsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jiQuotaUser'
--
-- * 'jiPrettyPrint'
--
-- * 'jiUserIP'
--
-- * 'jiPayload'
--
-- * 'jiMedia'
--
-- * 'jiKey'
--
-- * 'jiProjectId'
--
-- * 'jiOAuthToken'
--
-- * 'jiFields'
jobsInsert'
    :: Job -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'projectId'
    -> JobsInsert'
jobsInsert' pJiPayload_ pJiMedia_ pJiProjectId_ =
    JobsInsert'
    { _jiQuotaUser = Nothing
    , _jiPrettyPrint = True
    , _jiUserIP = Nothing
    , _jiPayload = pJiPayload_
    , _jiMedia = pJiMedia_
    , _jiKey = Nothing
    , _jiProjectId = pJiProjectId_
    , _jiOAuthToken = Nothing
    , _jiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jiQuotaUser :: Lens' JobsInsert' (Maybe Text)
jiQuotaUser
  = lens _jiQuotaUser (\ s a -> s{_jiQuotaUser = a})

-- | Returns response with indentations and line breaks.
jiPrettyPrint :: Lens' JobsInsert' Bool
jiPrettyPrint
  = lens _jiPrettyPrint
      (\ s a -> s{_jiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jiUserIP :: Lens' JobsInsert' (Maybe Text)
jiUserIP = lens _jiUserIP (\ s a -> s{_jiUserIP = a})

-- | Multipart request metadata.
jiPayload :: Lens' JobsInsert' Job
jiPayload
  = lens _jiPayload (\ s a -> s{_jiPayload = a})

jiMedia :: Lens' JobsInsert' Stream
jiMedia = lens _jiMedia (\ s a -> s{_jiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jiKey :: Lens' JobsInsert' (Maybe AuthKey)
jiKey = lens _jiKey (\ s a -> s{_jiKey = a})

-- | Project ID of the project that will be billed for the job
jiProjectId :: Lens' JobsInsert' Text
jiProjectId
  = lens _jiProjectId (\ s a -> s{_jiProjectId = a})

-- | OAuth 2.0 token for the current user.
jiOAuthToken :: Lens' JobsInsert' (Maybe OAuthToken)
jiOAuthToken
  = lens _jiOAuthToken (\ s a -> s{_jiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jiFields :: Lens' JobsInsert' (Maybe Text)
jiFields = lens _jiFields (\ s a -> s{_jiFields = a})

instance GoogleAuth JobsInsert' where
        authKey = jiKey . _Just
        authToken = jiOAuthToken . _Just

instance GoogleRequest JobsInsert' where
        type Rs JobsInsert' = Job
        request = requestWith bigQueryRequest
        requestWith rq JobsInsert'{..}
          = go _jiProjectId _jiQuotaUser (Just _jiPrettyPrint)
              _jiUserIP
              _jiFields
              _jiKey
              _jiOAuthToken
              (Just AltJSON)
              _jiPayload
              _jiMedia
          where go
                  = clientBuild (Proxy :: Proxy JobsInsertResource) rq
