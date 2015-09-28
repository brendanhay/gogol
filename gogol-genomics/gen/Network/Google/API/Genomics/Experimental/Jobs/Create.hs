{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Experimental.Jobs.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates and asynchronously runs an ad-hoc job. This is an experimental
-- call and may be removed or changed at any time.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.experimental.jobs.create@.
module Network.Google.API.Genomics.Experimental.Jobs.Create
    (
    -- * REST Resource
      ExperimentalJobsCreateAPI

    -- * Creating a Request
    , experimentalJobsCreate'
    , ExperimentalJobsCreate'

    -- * Request Lenses
    , ejcQuotaUser
    , ejcPrettyPrint
    , ejcUserIp
    , ejcKey
    , ejcOauthToken
    , ejcFields
    , ejcAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.experimental.jobs.create which the
-- 'ExperimentalJobsCreate'' request conforms to.
type ExperimentalJobsCreateAPI =
     "experimental" :>
       "jobs" :>
         "create" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] ExperimentalCreateJobResponse

-- | Creates and asynchronously runs an ad-hoc job. This is an experimental
-- call and may be removed or changed at any time.
--
-- /See:/ 'experimentalJobsCreate'' smart constructor.
data ExperimentalJobsCreate' = ExperimentalJobsCreate'
    { _ejcQuotaUser   :: !(Maybe Text)
    , _ejcPrettyPrint :: !Bool
    , _ejcUserIp      :: !(Maybe Text)
    , _ejcKey         :: !(Maybe Text)
    , _ejcOauthToken  :: !(Maybe Text)
    , _ejcFields      :: !(Maybe Text)
    , _ejcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalJobsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejcQuotaUser'
--
-- * 'ejcPrettyPrint'
--
-- * 'ejcUserIp'
--
-- * 'ejcKey'
--
-- * 'ejcOauthToken'
--
-- * 'ejcFields'
--
-- * 'ejcAlt'
experimentalJobsCreate'
    :: ExperimentalJobsCreate'
experimentalJobsCreate' =
    ExperimentalJobsCreate'
    { _ejcQuotaUser = Nothing
    , _ejcPrettyPrint = True
    , _ejcUserIp = Nothing
    , _ejcKey = Nothing
    , _ejcOauthToken = Nothing
    , _ejcFields = Nothing
    , _ejcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ejcQuotaUser :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcQuotaUser
  = lens _ejcQuotaUser (\ s a -> s{_ejcQuotaUser = a})

-- | Returns response with indentations and line breaks.
ejcPrettyPrint :: Lens' ExperimentalJobsCreate' Bool
ejcPrettyPrint
  = lens _ejcPrettyPrint
      (\ s a -> s{_ejcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ejcUserIp :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcUserIp
  = lens _ejcUserIp (\ s a -> s{_ejcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ejcKey :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcKey = lens _ejcKey (\ s a -> s{_ejcKey = a})

-- | OAuth 2.0 token for the current user.
ejcOauthToken :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcOauthToken
  = lens _ejcOauthToken
      (\ s a -> s{_ejcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ejcFields :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcFields
  = lens _ejcFields (\ s a -> s{_ejcFields = a})

-- | Data format for the response.
ejcAlt :: Lens' ExperimentalJobsCreate' Alt
ejcAlt = lens _ejcAlt (\ s a -> s{_ejcAlt = a})

instance GoogleRequest ExperimentalJobsCreate' where
        type Rs ExperimentalJobsCreate' =
             ExperimentalCreateJobResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ExperimentalJobsCreate'{..}
          = go _ejcQuotaUser (Just _ejcPrettyPrint) _ejcUserIp
              _ejcKey
              _ejcOauthToken
              _ejcFields
              (Just _ejcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ExperimentalJobsCreateAPI)
                      r
                      u
