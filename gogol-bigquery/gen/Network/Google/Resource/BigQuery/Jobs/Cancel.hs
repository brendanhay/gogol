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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsCancel@.
module Network.Google.Resource.BigQuery.Jobs.Cancel
    (
    -- * REST Resource
      JobsCancelResource

    -- * Creating a Request
    , jobsCancel'
    , JobsCancel'

    -- * Request Lenses
    , jcQuotaUser
    , jcPrettyPrint
    , jcJobId
    , jcUserIP
    , jcKey
    , jcProjectId
    , jcOAuthToken
    , jcFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsCancel@ which the
-- 'JobsCancel'' request conforms to.
type JobsCancelResource =
     "project" :>
       Capture "projectId" Text :>
         "jobs" :>
           Capture "jobId" Text :>
             "cancel" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] JobCancelResponse

-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ 'jobsCancel'' smart constructor.
data JobsCancel' = JobsCancel'
    { _jcQuotaUser   :: !(Maybe Text)
    , _jcPrettyPrint :: !Bool
    , _jcJobId       :: !Text
    , _jcUserIP      :: !(Maybe Text)
    , _jcKey         :: !(Maybe AuthKey)
    , _jcProjectId   :: !Text
    , _jcOAuthToken  :: !(Maybe OAuthToken)
    , _jcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcQuotaUser'
--
-- * 'jcPrettyPrint'
--
-- * 'jcJobId'
--
-- * 'jcUserIP'
--
-- * 'jcKey'
--
-- * 'jcProjectId'
--
-- * 'jcOAuthToken'
--
-- * 'jcFields'
jobsCancel'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> JobsCancel'
jobsCancel' pJcJobId_ pJcProjectId_ =
    JobsCancel'
    { _jcQuotaUser = Nothing
    , _jcPrettyPrint = True
    , _jcJobId = pJcJobId_
    , _jcUserIP = Nothing
    , _jcKey = Nothing
    , _jcProjectId = pJcProjectId_
    , _jcOAuthToken = Nothing
    , _jcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jcQuotaUser :: Lens' JobsCancel' (Maybe Text)
jcQuotaUser
  = lens _jcQuotaUser (\ s a -> s{_jcQuotaUser = a})

-- | Returns response with indentations and line breaks.
jcPrettyPrint :: Lens' JobsCancel' Bool
jcPrettyPrint
  = lens _jcPrettyPrint
      (\ s a -> s{_jcPrettyPrint = a})

-- | Job ID of the job to cancel
jcJobId :: Lens' JobsCancel' Text
jcJobId = lens _jcJobId (\ s a -> s{_jcJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jcUserIP :: Lens' JobsCancel' (Maybe Text)
jcUserIP = lens _jcUserIP (\ s a -> s{_jcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jcKey :: Lens' JobsCancel' (Maybe AuthKey)
jcKey = lens _jcKey (\ s a -> s{_jcKey = a})

-- | Project ID of the job to cancel
jcProjectId :: Lens' JobsCancel' Text
jcProjectId
  = lens _jcProjectId (\ s a -> s{_jcProjectId = a})

-- | OAuth 2.0 token for the current user.
jcOAuthToken :: Lens' JobsCancel' (Maybe OAuthToken)
jcOAuthToken
  = lens _jcOAuthToken (\ s a -> s{_jcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jcFields :: Lens' JobsCancel' (Maybe Text)
jcFields = lens _jcFields (\ s a -> s{_jcFields = a})

instance GoogleAuth JobsCancel' where
        _AuthKey = jcKey . _Just
        _AuthToken = jcOAuthToken . _Just

instance GoogleRequest JobsCancel' where
        type Rs JobsCancel' = JobCancelResponse
        request = requestWith bigQueryRequest
        requestWith rq JobsCancel'{..}
          = go _jcProjectId _jcJobId _jcQuotaUser
              (Just _jcPrettyPrint)
              _jcUserIP
              _jcFields
              _jcKey
              _jcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy JobsCancelResource) rq
