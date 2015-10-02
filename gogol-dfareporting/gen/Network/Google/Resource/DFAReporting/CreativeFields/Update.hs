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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsUpdate@.
module Network.Google.Resource.DFAReporting.CreativeFields.Update
    (
    -- * REST Resource
      CreativeFieldsUpdateResource

    -- * Creating a Request
    , creativeFieldsUpdate'
    , CreativeFieldsUpdate'

    -- * Request Lenses
    , cfuQuotaUser
    , cfuPrettyPrint
    , cfuUserIP
    , cfuProfileId
    , cfuKey
    , cfuOAuthToken
    , cfuCreativeField
    , cfuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsUpdate@ which the
-- 'CreativeFieldsUpdate'' request conforms to.
type CreativeFieldsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CreativeField :>
                           Put '[JSON] CreativeField

-- | Updates an existing creative field.
--
-- /See:/ 'creativeFieldsUpdate'' smart constructor.
data CreativeFieldsUpdate' = CreativeFieldsUpdate'
    { _cfuQuotaUser     :: !(Maybe Text)
    , _cfuPrettyPrint   :: !Bool
    , _cfuUserIP        :: !(Maybe Text)
    , _cfuProfileId     :: !Int64
    , _cfuKey           :: !(Maybe Key)
    , _cfuOAuthToken    :: !(Maybe OAuthToken)
    , _cfuCreativeField :: !CreativeField
    , _cfuFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfuQuotaUser'
--
-- * 'cfuPrettyPrint'
--
-- * 'cfuUserIP'
--
-- * 'cfuProfileId'
--
-- * 'cfuKey'
--
-- * 'cfuOAuthToken'
--
-- * 'cfuCreativeField'
--
-- * 'cfuFields'
creativeFieldsUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativeField -- ^ 'CreativeField'
    -> CreativeFieldsUpdate'
creativeFieldsUpdate' pCfuProfileId_ pCfuCreativeField_ =
    CreativeFieldsUpdate'
    { _cfuQuotaUser = Nothing
    , _cfuPrettyPrint = True
    , _cfuUserIP = Nothing
    , _cfuProfileId = pCfuProfileId_
    , _cfuKey = Nothing
    , _cfuOAuthToken = Nothing
    , _cfuCreativeField = pCfuCreativeField_
    , _cfuFields = Nothing
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
cfuUserIP :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuUserIP
  = lens _cfuUserIP (\ s a -> s{_cfuUserIP = a})

-- | User profile ID associated with this request.
cfuProfileId :: Lens' CreativeFieldsUpdate' Int64
cfuProfileId
  = lens _cfuProfileId (\ s a -> s{_cfuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfuKey :: Lens' CreativeFieldsUpdate' (Maybe Key)
cfuKey = lens _cfuKey (\ s a -> s{_cfuKey = a})

-- | OAuth 2.0 token for the current user.
cfuOAuthToken :: Lens' CreativeFieldsUpdate' (Maybe OAuthToken)
cfuOAuthToken
  = lens _cfuOAuthToken
      (\ s a -> s{_cfuOAuthToken = a})

-- | Multipart request metadata.
cfuCreativeField :: Lens' CreativeFieldsUpdate' CreativeField
cfuCreativeField
  = lens _cfuCreativeField
      (\ s a -> s{_cfuCreativeField = a})

-- | Selector specifying which fields to include in a partial response.
cfuFields :: Lens' CreativeFieldsUpdate' (Maybe Text)
cfuFields
  = lens _cfuFields (\ s a -> s{_cfuFields = a})

instance GoogleAuth CreativeFieldsUpdate' where
        authKey = cfuKey . _Just
        authToken = cfuOAuthToken . _Just

instance GoogleRequest CreativeFieldsUpdate' where
        type Rs CreativeFieldsUpdate' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsUpdate'{..}
          = go _cfuQuotaUser (Just _cfuPrettyPrint) _cfuUserIP
              _cfuProfileId
              _cfuKey
              _cfuOAuthToken
              _cfuFields
              (Just AltJSON)
              _cfuCreativeField
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsUpdateResource)
                      r
                      u
