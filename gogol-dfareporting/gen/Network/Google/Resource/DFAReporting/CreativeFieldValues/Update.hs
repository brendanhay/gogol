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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesUpdate@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
    (
    -- * REST Resource
      CreativeFieldValuesUpdateResource

    -- * Creating a Request
    , creativeFieldValuesUpdate'
    , CreativeFieldValuesUpdate'

    -- * Request Lenses
    , cfvuCreativeFieldId
    , cfvuQuotaUser
    , cfvuPrettyPrint
    , cfvuUserIP
    , cfvuProFileId
    , cfvuPayload
    , cfvuKey
    , cfvuOAuthToken
    , cfvuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesUpdate@ which the
-- 'CreativeFieldValuesUpdate'' request conforms to.
type CreativeFieldValuesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreativeFieldValue :>
                               Put '[JSON] CreativeFieldValue

-- | Updates an existing creative field value.
--
-- /See:/ 'creativeFieldValuesUpdate'' smart constructor.
data CreativeFieldValuesUpdate' = CreativeFieldValuesUpdate'
    { _cfvuCreativeFieldId :: !Int64
    , _cfvuQuotaUser       :: !(Maybe Text)
    , _cfvuPrettyPrint     :: !Bool
    , _cfvuUserIP          :: !(Maybe Text)
    , _cfvuProFileId       :: !Int64
    , _cfvuPayload         :: !CreativeFieldValue
    , _cfvuKey             :: !(Maybe Key)
    , _cfvuOAuthToken      :: !(Maybe OAuthToken)
    , _cfvuFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvuCreativeFieldId'
--
-- * 'cfvuQuotaUser'
--
-- * 'cfvuPrettyPrint'
--
-- * 'cfvuUserIP'
--
-- * 'cfvuProFileId'
--
-- * 'cfvuPayload'
--
-- * 'cfvuKey'
--
-- * 'cfvuOAuthToken'
--
-- * 'cfvuFields'
creativeFieldValuesUpdate'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> CreativeFieldValue -- ^ 'payload'
    -> CreativeFieldValuesUpdate'
creativeFieldValuesUpdate' pCfvuCreativeFieldId_ pCfvuProFileId_ pCfvuPayload_ =
    CreativeFieldValuesUpdate'
    { _cfvuCreativeFieldId = pCfvuCreativeFieldId_
    , _cfvuQuotaUser = Nothing
    , _cfvuPrettyPrint = True
    , _cfvuUserIP = Nothing
    , _cfvuProFileId = pCfvuProFileId_
    , _cfvuPayload = pCfvuPayload_
    , _cfvuKey = Nothing
    , _cfvuOAuthToken = Nothing
    , _cfvuFields = Nothing
    }

-- | Creative field ID for this creative field value.
cfvuCreativeFieldId :: Lens' CreativeFieldValuesUpdate' Int64
cfvuCreativeFieldId
  = lens _cfvuCreativeFieldId
      (\ s a -> s{_cfvuCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvuQuotaUser :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuQuotaUser
  = lens _cfvuQuotaUser
      (\ s a -> s{_cfvuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvuPrettyPrint :: Lens' CreativeFieldValuesUpdate' Bool
cfvuPrettyPrint
  = lens _cfvuPrettyPrint
      (\ s a -> s{_cfvuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvuUserIP :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuUserIP
  = lens _cfvuUserIP (\ s a -> s{_cfvuUserIP = a})

-- | User profile ID associated with this request.
cfvuProFileId :: Lens' CreativeFieldValuesUpdate' Int64
cfvuProFileId
  = lens _cfvuProFileId
      (\ s a -> s{_cfvuProFileId = a})

-- | Multipart request metadata.
cfvuPayload :: Lens' CreativeFieldValuesUpdate' CreativeFieldValue
cfvuPayload
  = lens _cfvuPayload (\ s a -> s{_cfvuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvuKey :: Lens' CreativeFieldValuesUpdate' (Maybe Key)
cfvuKey = lens _cfvuKey (\ s a -> s{_cfvuKey = a})

-- | OAuth 2.0 token for the current user.
cfvuOAuthToken :: Lens' CreativeFieldValuesUpdate' (Maybe OAuthToken)
cfvuOAuthToken
  = lens _cfvuOAuthToken
      (\ s a -> s{_cfvuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvuFields :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuFields
  = lens _cfvuFields (\ s a -> s{_cfvuFields = a})

instance GoogleAuth CreativeFieldValuesUpdate' where
        authKey = cfvuKey . _Just
        authToken = cfvuOAuthToken . _Just

instance GoogleRequest CreativeFieldValuesUpdate'
         where
        type Rs CreativeFieldValuesUpdate' =
             CreativeFieldValue
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesUpdate'{..}
          = go _cfvuProFileId _cfvuCreativeFieldId
              _cfvuQuotaUser
              (Just _cfvuPrettyPrint)
              _cfvuUserIP
              _cfvuFields
              _cfvuKey
              _cfvuOAuthToken
              (Just AltJSON)
              _cfvuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesUpdateResource)
                      r
                      u
