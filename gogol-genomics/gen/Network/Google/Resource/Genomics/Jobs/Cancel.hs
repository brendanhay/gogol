{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Jobs.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a job by ID. Note that it is possible for partial results to be
-- generated and stored for cancelled jobs.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsJobsCancel@.
module Genomics.Jobs.Cancel
    (
    -- * REST Resource
      JobsCancelAPI

    -- * Creating a Request
    , jobsCancel
    , JobsCancel

    -- * Request Lenses
    , jcQuotaUser
    , jcPrettyPrint
    , jcJobId
    , jcUserIp
    , jcKey
    , jcOauthToken
    , jcFields
    , jcAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsJobsCancel@ which the
-- 'JobsCancel' request conforms to.
type JobsCancelAPI =
     "jobs" :>
       Capture "jobId" Text :> "cancel" :> Post '[JSON] ()

-- | Cancels a job by ID. Note that it is possible for partial results to be
-- generated and stored for cancelled jobs.
--
-- /See:/ 'jobsCancel' smart constructor.
data JobsCancel = JobsCancel
    { _jcQuotaUser   :: !(Maybe Text)
    , _jcPrettyPrint :: !Bool
    , _jcJobId       :: !Text
    , _jcUserIp      :: !(Maybe Text)
    , _jcKey         :: !(Maybe Text)
    , _jcOauthToken  :: !(Maybe Text)
    , _jcFields      :: !(Maybe Text)
    , _jcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'jcUserIp'
--
-- * 'jcKey'
--
-- * 'jcOauthToken'
--
-- * 'jcFields'
--
-- * 'jcAlt'
jobsCancel
    :: Text -- ^ 'jobId'
    -> JobsCancel
jobsCancel pJcJobId_ =
    JobsCancel
    { _jcQuotaUser = Nothing
    , _jcPrettyPrint = True
    , _jcJobId = pJcJobId_
    , _jcUserIp = Nothing
    , _jcKey = Nothing
    , _jcOauthToken = Nothing
    , _jcFields = Nothing
    , _jcAlt = "json"
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

-- | Required. The ID of the job.
jcJobId :: Lens' JobsCancel' Text
jcJobId = lens _jcJobId (\ s a -> s{_jcJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jcUserIp :: Lens' JobsCancel' (Maybe Text)
jcUserIp = lens _jcUserIp (\ s a -> s{_jcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jcKey :: Lens' JobsCancel' (Maybe Text)
jcKey = lens _jcKey (\ s a -> s{_jcKey = a})

-- | OAuth 2.0 token for the current user.
jcOauthToken :: Lens' JobsCancel' (Maybe Text)
jcOauthToken
  = lens _jcOauthToken (\ s a -> s{_jcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jcFields :: Lens' JobsCancel' (Maybe Text)
jcFields = lens _jcFields (\ s a -> s{_jcFields = a})

-- | Data format for the response.
jcAlt :: Lens' JobsCancel' Text
jcAlt = lens _jcAlt (\ s a -> s{_jcAlt = a})

instance GoogleRequest JobsCancel' where
        type Rs JobsCancel' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u JobsCancel{..}
          = go _jcQuotaUser _jcPrettyPrint _jcJobId _jcUserIp
              _jcKey
              _jcOauthToken
              _jcFields
              _jcAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsCancelAPI) r u
