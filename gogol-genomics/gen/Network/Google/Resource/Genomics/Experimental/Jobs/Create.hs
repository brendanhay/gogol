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
-- Module      : Network.Google.Resource.Genomics.Experimental.Jobs.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates and asynchronously runs an ad-hoc job. This is an experimental
-- call and may be removed or changed at any time.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsExperimentalJobsCreate@.
module Network.Google.Resource.Genomics.Experimental.Jobs.Create
    (
    -- * REST Resource
      ExperimentalJobsCreateResource

    -- * Creating a Request
    , experimentalJobsCreate'
    , ExperimentalJobsCreate'

    -- * Request Lenses
    , ejcQuotaUser
    , ejcPrettyPrint
    , ejcUserIP
    , ejcPayload
    , ejcKey
    , ejcOAuthToken
    , ejcFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsExperimentalJobsCreate@ which the
-- 'ExperimentalJobsCreate'' request conforms to.
type ExperimentalJobsCreateResource =
     "experimental" :>
       "jobs" :>
         "create" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ExperimentalCreateJobRequest :>
                           Post '[JSON] ExperimentalCreateJobResponse

-- | Creates and asynchronously runs an ad-hoc job. This is an experimental
-- call and may be removed or changed at any time.
--
-- /See:/ 'experimentalJobsCreate'' smart constructor.
data ExperimentalJobsCreate' = ExperimentalJobsCreate'
    { _ejcQuotaUser   :: !(Maybe Text)
    , _ejcPrettyPrint :: !Bool
    , _ejcUserIP      :: !(Maybe Text)
    , _ejcPayload     :: !ExperimentalCreateJobRequest
    , _ejcKey         :: !(Maybe Key)
    , _ejcOAuthToken  :: !(Maybe OAuthToken)
    , _ejcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalJobsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejcQuotaUser'
--
-- * 'ejcPrettyPrint'
--
-- * 'ejcUserIP'
--
-- * 'ejcPayload'
--
-- * 'ejcKey'
--
-- * 'ejcOAuthToken'
--
-- * 'ejcFields'
experimentalJobsCreate'
    :: ExperimentalCreateJobRequest -- ^ 'payload'
    -> ExperimentalJobsCreate'
experimentalJobsCreate' pEjcPayload_ =
    ExperimentalJobsCreate'
    { _ejcQuotaUser = Nothing
    , _ejcPrettyPrint = True
    , _ejcUserIP = Nothing
    , _ejcPayload = pEjcPayload_
    , _ejcKey = Nothing
    , _ejcOAuthToken = Nothing
    , _ejcFields = Nothing
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
ejcUserIP :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcUserIP
  = lens _ejcUserIP (\ s a -> s{_ejcUserIP = a})

-- | Multipart request metadata.
ejcPayload :: Lens' ExperimentalJobsCreate' ExperimentalCreateJobRequest
ejcPayload
  = lens _ejcPayload (\ s a -> s{_ejcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ejcKey :: Lens' ExperimentalJobsCreate' (Maybe Key)
ejcKey = lens _ejcKey (\ s a -> s{_ejcKey = a})

-- | OAuth 2.0 token for the current user.
ejcOAuthToken :: Lens' ExperimentalJobsCreate' (Maybe OAuthToken)
ejcOAuthToken
  = lens _ejcOAuthToken
      (\ s a -> s{_ejcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ejcFields :: Lens' ExperimentalJobsCreate' (Maybe Text)
ejcFields
  = lens _ejcFields (\ s a -> s{_ejcFields = a})

instance GoogleAuth ExperimentalJobsCreate' where
        authKey = ejcKey . _Just
        authToken = ejcOAuthToken . _Just

instance GoogleRequest ExperimentalJobsCreate' where
        type Rs ExperimentalJobsCreate' =
             ExperimentalCreateJobResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ExperimentalJobsCreate'{..}
          = go _ejcQuotaUser (Just _ejcPrettyPrint) _ejcUserIP
              _ejcFields
              _ejcKey
              _ejcOAuthToken
              (Just AltJSON)
              _ejcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ExperimentalJobsCreateResource)
                      r
                      u
