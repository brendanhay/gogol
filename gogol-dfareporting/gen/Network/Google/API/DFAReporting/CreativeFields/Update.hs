{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.CreativeFields.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFields.update@.
module Network.Google.API.DFAReporting.CreativeFields.Update
    (
    -- * REST Resource
      CreativeFieldsUpdateAPI

    -- * Creating a Request
    , creativeFieldsUpdate'
    , CreativeFieldsUpdate'

    -- * Request Lenses
    , cfuQuotaUser
    , cfuPrettyPrint
    , cfuUserIp
    , cfuProfileId
    , cfuKey
    , cfuOauthToken
    , cfuFields
    , cfuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creativeFields.update which the
-- 'CreativeFieldsUpdate'' request conforms to.
type CreativeFieldsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] CreativeField

-- | Updates an existing creative field.
--
-- /See:/ 'creativeFieldsUpdate'' smart constructor.
data CreativeFieldsUpdate' = CreativeFieldsUpdate'
    { _cfuQuotaUser   :: !(Maybe Text)
    , _cfuPrettyPrint :: !Bool
    , _cfuUserIp      :: !(Maybe Text)
    , _cfuProfileId   :: !Int64
    , _cfuKey         :: !(Maybe Text)
    , _cfuOauthToken  :: !(Maybe Text)
    , _cfuFields      :: !(Maybe Text)
    , _cfuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfuQuotaUser'
--
-- * 'cfuPrettyPrint'
--
-- * 'cfuUserIp'
--
-- * 'cfuProfileId'
--
-- * 'cfuKey'
--
-- * 'cfuOauthToken'
--
-- * 'cfuFields'
--
-- * 'cfuAlt'
creativeFieldsUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativeFieldsUpdate'
creativeFieldsUpdate' pCfuProfileId_ =
    CreativeFieldsUpdate'
    { _cfuQuotaUser = Nothing
    , _cfuPrettyPrint = True
    , _cfuUserIp = Nothing
    , _cfuProfileId = pCfuProfileId_
    , _cfuKey = Nothing
    , _cfuOauthToken = Nothing
    , _cfuFields = Nothing
    , _cfuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfuQuotaUser :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuQuotaUser
  = lens _cfuQuotaUser (\ s a -> s{_cfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfuPrettyPrint :: Lens' CreativeFieldsUpdate' Bool
cfuPrettyPrint
  = lens _cfuPrettyPrint
      (\ s a -> s{_cfuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfuUserIp :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuUserIp
  = lens _cfuUserIp (\ s a -> s{_cfuUserIp = a})

-- | User profile ID associated with this request.
cfuProfileId :: Lens' CreativeFieldsUpdate' Int64
cfuProfileId
  = lens _cfuProfileId (\ s a -> s{_cfuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfuKey :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuKey = lens _cfuKey (\ s a -> s{_cfuKey = a})

-- | OAuth 2.0 token for the current user.
cfuOauthToken :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuOauthToken
  = lens _cfuOauthToken
      (\ s a -> s{_cfuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfuFields :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuFields
  = lens _cfuFields (\ s a -> s{_cfuFields = a})

-- | Data format for the response.
cfuAlt :: Lens' CreativeFieldsUpdate' Alt
cfuAlt = lens _cfuAlt (\ s a -> s{_cfuAlt = a})

instance GoogleRequest CreativeFieldsUpdate' where
        type Rs CreativeFieldsUpdate' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsUpdate'{..}
          = go _cfuQuotaUser (Just _cfuPrettyPrint) _cfuUserIp
              _cfuProfileId
              _cfuKey
              _cfuOauthToken
              _cfuFields
              (Just _cfuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsUpdateAPI)
                      r
                      u
