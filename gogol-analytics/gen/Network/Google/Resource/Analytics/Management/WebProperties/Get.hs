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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a web property to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesGet@.
module Network.Google.Resource.Analytics.Management.WebProperties.Get
    (
    -- * REST Resource
      ManagementWebPropertiesGetResource

    -- * Creating a Request
    , managementWebPropertiesGet'
    , ManagementWebPropertiesGet'

    -- * Request Lenses
    , mwpgQuotaUser
    , mwpgPrettyPrint
    , mwpgWebPropertyId
    , mwpgUserIP
    , mwpgAccountId
    , mwpgKey
    , mwpgOAuthToken
    , mwpgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesGet@ which the
-- 'ManagementWebPropertiesGet'' request conforms to.
type ManagementWebPropertiesGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] WebProperty

-- | Gets a web property to which the user has access.
--
-- /See:/ 'managementWebPropertiesGet'' smart constructor.
data ManagementWebPropertiesGet' = ManagementWebPropertiesGet'
    { _mwpgQuotaUser     :: !(Maybe Text)
    , _mwpgPrettyPrint   :: !Bool
    , _mwpgWebPropertyId :: !Text
    , _mwpgUserIP        :: !(Maybe Text)
    , _mwpgAccountId     :: !Text
    , _mwpgKey           :: !(Maybe Key)
    , _mwpgOAuthToken    :: !(Maybe OAuthToken)
    , _mwpgFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpgQuotaUser'
--
-- * 'mwpgPrettyPrint'
--
-- * 'mwpgWebPropertyId'
--
-- * 'mwpgUserIP'
--
-- * 'mwpgAccountId'
--
-- * 'mwpgKey'
--
-- * 'mwpgOAuthToken'
--
-- * 'mwpgFields'
managementWebPropertiesGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertiesGet'
managementWebPropertiesGet' pMwpgWebPropertyId_ pMwpgAccountId_ =
    ManagementWebPropertiesGet'
    { _mwpgQuotaUser = Nothing
    , _mwpgPrettyPrint = False
    , _mwpgWebPropertyId = pMwpgWebPropertyId_
    , _mwpgUserIP = Nothing
    , _mwpgAccountId = pMwpgAccountId_
    , _mwpgKey = Nothing
    , _mwpgOAuthToken = Nothing
    , _mwpgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpgQuotaUser :: Lens' ManagementWebPropertiesGet' (Maybe Text)
mwpgQuotaUser
  = lens _mwpgQuotaUser
      (\ s a -> s{_mwpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpgPrettyPrint :: Lens' ManagementWebPropertiesGet' Bool
mwpgPrettyPrint
  = lens _mwpgPrettyPrint
      (\ s a -> s{_mwpgPrettyPrint = a})

-- | ID to retrieve the web property for.
mwpgWebPropertyId :: Lens' ManagementWebPropertiesGet' Text
mwpgWebPropertyId
  = lens _mwpgWebPropertyId
      (\ s a -> s{_mwpgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpgUserIP :: Lens' ManagementWebPropertiesGet' (Maybe Text)
mwpgUserIP
  = lens _mwpgUserIP (\ s a -> s{_mwpgUserIP = a})

-- | Account ID to retrieve the web property for.
mwpgAccountId :: Lens' ManagementWebPropertiesGet' Text
mwpgAccountId
  = lens _mwpgAccountId
      (\ s a -> s{_mwpgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpgKey :: Lens' ManagementWebPropertiesGet' (Maybe Key)
mwpgKey = lens _mwpgKey (\ s a -> s{_mwpgKey = a})

-- | OAuth 2.0 token for the current user.
mwpgOAuthToken :: Lens' ManagementWebPropertiesGet' (Maybe OAuthToken)
mwpgOAuthToken
  = lens _mwpgOAuthToken
      (\ s a -> s{_mwpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpgFields :: Lens' ManagementWebPropertiesGet' (Maybe Text)
mwpgFields
  = lens _mwpgFields (\ s a -> s{_mwpgFields = a})

instance GoogleAuth ManagementWebPropertiesGet' where
        authKey = mwpgKey . _Just
        authToken = mwpgOAuthToken . _Just

instance GoogleRequest ManagementWebPropertiesGet'
         where
        type Rs ManagementWebPropertiesGet' = WebProperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementWebPropertiesGet'{..}
          = go _mwpgQuotaUser (Just _mwpgPrettyPrint)
              _mwpgWebPropertyId
              _mwpgUserIP
              _mwpgAccountId
              _mwpgKey
              _mwpgOAuthToken
              _mwpgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebPropertiesGetResource)
                      r
                      u
