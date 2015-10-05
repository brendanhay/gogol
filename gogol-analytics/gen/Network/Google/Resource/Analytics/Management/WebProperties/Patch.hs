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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesPatch@.
module Network.Google.Resource.Analytics.Management.WebProperties.Patch
    (
    -- * REST Resource
      ManagementWebPropertiesPatchResource

    -- * Creating a Request
    , managementWebPropertiesPatch'
    , ManagementWebPropertiesPatch'

    -- * Request Lenses
    , mwppQuotaUser
    , mwppPrettyPrint
    , mwppWebPropertyId
    , mwppUserIP
    , mwppPayload
    , mwppAccountId
    , mwppKey
    , mwppOAuthToken
    , mwppFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesPatch@ which the
-- 'ManagementWebPropertiesPatch'' request conforms to.
type ManagementWebPropertiesPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] WebProperty :>
                               Patch '[JSON] WebProperty

-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ 'managementWebPropertiesPatch'' smart constructor.
data ManagementWebPropertiesPatch' = ManagementWebPropertiesPatch'
    { _mwppQuotaUser     :: !(Maybe Text)
    , _mwppPrettyPrint   :: !Bool
    , _mwppWebPropertyId :: !Text
    , _mwppUserIP        :: !(Maybe Text)
    , _mwppPayload       :: !WebProperty
    , _mwppAccountId     :: !Text
    , _mwppKey           :: !(Maybe AuthKey)
    , _mwppOAuthToken    :: !(Maybe OAuthToken)
    , _mwppFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwppQuotaUser'
--
-- * 'mwppPrettyPrint'
--
-- * 'mwppWebPropertyId'
--
-- * 'mwppUserIP'
--
-- * 'mwppPayload'
--
-- * 'mwppAccountId'
--
-- * 'mwppKey'
--
-- * 'mwppOAuthToken'
--
-- * 'mwppFields'
managementWebPropertiesPatch'
    :: Text -- ^ 'webPropertyId'
    -> WebProperty -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertiesPatch'
managementWebPropertiesPatch' pMwppWebPropertyId_ pMwppPayload_ pMwppAccountId_ =
    ManagementWebPropertiesPatch'
    { _mwppQuotaUser = Nothing
    , _mwppPrettyPrint = False
    , _mwppWebPropertyId = pMwppWebPropertyId_
    , _mwppUserIP = Nothing
    , _mwppPayload = pMwppPayload_
    , _mwppAccountId = pMwppAccountId_
    , _mwppKey = Nothing
    , _mwppOAuthToken = Nothing
    , _mwppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwppQuotaUser :: Lens' ManagementWebPropertiesPatch' (Maybe Text)
mwppQuotaUser
  = lens _mwppQuotaUser
      (\ s a -> s{_mwppQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwppPrettyPrint :: Lens' ManagementWebPropertiesPatch' Bool
mwppPrettyPrint
  = lens _mwppPrettyPrint
      (\ s a -> s{_mwppPrettyPrint = a})

-- | Web property ID
mwppWebPropertyId :: Lens' ManagementWebPropertiesPatch' Text
mwppWebPropertyId
  = lens _mwppWebPropertyId
      (\ s a -> s{_mwppWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwppUserIP :: Lens' ManagementWebPropertiesPatch' (Maybe Text)
mwppUserIP
  = lens _mwppUserIP (\ s a -> s{_mwppUserIP = a})

-- | Multipart request metadata.
mwppPayload :: Lens' ManagementWebPropertiesPatch' WebProperty
mwppPayload
  = lens _mwppPayload (\ s a -> s{_mwppPayload = a})

-- | Account ID to which the web property belongs
mwppAccountId :: Lens' ManagementWebPropertiesPatch' Text
mwppAccountId
  = lens _mwppAccountId
      (\ s a -> s{_mwppAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwppKey :: Lens' ManagementWebPropertiesPatch' (Maybe AuthKey)
mwppKey = lens _mwppKey (\ s a -> s{_mwppKey = a})

-- | OAuth 2.0 token for the current user.
mwppOAuthToken :: Lens' ManagementWebPropertiesPatch' (Maybe OAuthToken)
mwppOAuthToken
  = lens _mwppOAuthToken
      (\ s a -> s{_mwppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwppFields :: Lens' ManagementWebPropertiesPatch' (Maybe Text)
mwppFields
  = lens _mwppFields (\ s a -> s{_mwppFields = a})

instance GoogleAuth ManagementWebPropertiesPatch'
         where
        authKey = mwppKey . _Just
        authToken = mwppOAuthToken . _Just

instance GoogleRequest ManagementWebPropertiesPatch'
         where
        type Rs ManagementWebPropertiesPatch' = WebProperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertiesPatch'{..}
          = go _mwppAccountId _mwppWebPropertyId _mwppQuotaUser
              (Just _mwppPrettyPrint)
              _mwppUserIP
              _mwppFields
              _mwppKey
              _mwppOAuthToken
              (Just AltJSON)
              _mwppPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebPropertiesPatchResource)
                      r
                      u
