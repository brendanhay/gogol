{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesUpdate@.
module Network.Google.Resource.Analytics.Management.WebProperties.Update
    (
    -- * REST Resource
      ManagementWebPropertiesUpdateResource

    -- * Creating a Request
    , managementWebPropertiesUpdate'
    , ManagementWebPropertiesUpdate'

    -- * Request Lenses
    , mwpuQuotaUser
    , mwpuPrettyPrint
    , mwpuWebPropertyId
    , mwpuUserIP
    , mwpuPayload
    , mwpuAccountId
    , mwpuKey
    , mwpuOAuthToken
    , mwpuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesUpdate@ which the
-- 'ManagementWebPropertiesUpdate'' request conforms to.
type ManagementWebPropertiesUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] WebProperty :>
                               Put '[JSON] WebProperty

-- | Updates an existing web property.
--
-- /See:/ 'managementWebPropertiesUpdate'' smart constructor.
data ManagementWebPropertiesUpdate' = ManagementWebPropertiesUpdate'
    { _mwpuQuotaUser     :: !(Maybe Text)
    , _mwpuPrettyPrint   :: !Bool
    , _mwpuWebPropertyId :: !Text
    , _mwpuUserIP        :: !(Maybe Text)
    , _mwpuPayload       :: !WebProperty
    , _mwpuAccountId     :: !Text
    , _mwpuKey           :: !(Maybe Key)
    , _mwpuOAuthToken    :: !(Maybe OAuthToken)
    , _mwpuFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuQuotaUser'
--
-- * 'mwpuPrettyPrint'
--
-- * 'mwpuWebPropertyId'
--
-- * 'mwpuUserIP'
--
-- * 'mwpuPayload'
--
-- * 'mwpuAccountId'
--
-- * 'mwpuKey'
--
-- * 'mwpuOAuthToken'
--
-- * 'mwpuFields'
managementWebPropertiesUpdate'
    :: Text -- ^ 'webPropertyId'
    -> WebProperty -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertiesUpdate'
managementWebPropertiesUpdate' pMwpuWebPropertyId_ pMwpuPayload_ pMwpuAccountId_ =
    ManagementWebPropertiesUpdate'
    { _mwpuQuotaUser = Nothing
    , _mwpuPrettyPrint = False
    , _mwpuWebPropertyId = pMwpuWebPropertyId_
    , _mwpuUserIP = Nothing
    , _mwpuPayload = pMwpuPayload_
    , _mwpuAccountId = pMwpuAccountId_
    , _mwpuKey = Nothing
    , _mwpuOAuthToken = Nothing
    , _mwpuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpuQuotaUser :: Lens' ManagementWebPropertiesUpdate' (Maybe Text)
mwpuQuotaUser
  = lens _mwpuQuotaUser
      (\ s a -> s{_mwpuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpuPrettyPrint :: Lens' ManagementWebPropertiesUpdate' Bool
mwpuPrettyPrint
  = lens _mwpuPrettyPrint
      (\ s a -> s{_mwpuPrettyPrint = a})

-- | Web property ID
mwpuWebPropertyId :: Lens' ManagementWebPropertiesUpdate' Text
mwpuWebPropertyId
  = lens _mwpuWebPropertyId
      (\ s a -> s{_mwpuWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpuUserIP :: Lens' ManagementWebPropertiesUpdate' (Maybe Text)
mwpuUserIP
  = lens _mwpuUserIP (\ s a -> s{_mwpuUserIP = a})

-- | Multipart request metadata.
mwpuPayload :: Lens' ManagementWebPropertiesUpdate' WebProperty
mwpuPayload
  = lens _mwpuPayload (\ s a -> s{_mwpuPayload = a})

-- | Account ID to which the web property belongs
mwpuAccountId :: Lens' ManagementWebPropertiesUpdate' Text
mwpuAccountId
  = lens _mwpuAccountId
      (\ s a -> s{_mwpuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpuKey :: Lens' ManagementWebPropertiesUpdate' (Maybe Key)
mwpuKey = lens _mwpuKey (\ s a -> s{_mwpuKey = a})

-- | OAuth 2.0 token for the current user.
mwpuOAuthToken :: Lens' ManagementWebPropertiesUpdate' (Maybe OAuthToken)
mwpuOAuthToken
  = lens _mwpuOAuthToken
      (\ s a -> s{_mwpuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpuFields :: Lens' ManagementWebPropertiesUpdate' (Maybe Text)
mwpuFields
  = lens _mwpuFields (\ s a -> s{_mwpuFields = a})

instance GoogleAuth ManagementWebPropertiesUpdate'
         where
        authKey = mwpuKey . _Just
        authToken = mwpuOAuthToken . _Just

instance GoogleRequest ManagementWebPropertiesUpdate'
         where
        type Rs ManagementWebPropertiesUpdate' = WebProperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertiesUpdate'{..}
          = go _mwpuAccountId _mwpuWebPropertyId _mwpuQuotaUser
              (Just _mwpuPrettyPrint)
              _mwpuUserIP
              _mwpuFields
              _mwpuKey
              _mwpuOAuthToken
              (Just AltJSON)
              _mwpuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertiesUpdateResource)
                      r
                      u
