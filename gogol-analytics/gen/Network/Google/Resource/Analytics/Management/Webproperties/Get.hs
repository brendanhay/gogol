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
-- Module      : Network.Google.Resource.Analytics.Management.Webproperties.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a web property to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertiesGet@.
module Network.Google.Resource.Analytics.Management.Webproperties.Get
    (
    -- * REST Resource
      ManagementWebpropertiesGetResource

    -- * Creating a Request
    , managementWebpropertiesGet'
    , ManagementWebpropertiesGet'

    -- * Request Lenses
    , mwgQuotaUser
    , mwgPrettyPrint
    , mwgWebPropertyId
    , mwgUserIp
    , mwgAccountId
    , mwgKey
    , mwgOauthToken
    , mwgFields
    , mwgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertiesGet@ which the
-- 'ManagementWebpropertiesGet'' request conforms to.
type ManagementWebpropertiesGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Webproperty

-- | Gets a web property to which the user has access.
--
-- /See:/ 'managementWebpropertiesGet'' smart constructor.
data ManagementWebpropertiesGet' = ManagementWebpropertiesGet'
    { _mwgQuotaUser     :: !(Maybe Text)
    , _mwgPrettyPrint   :: !Bool
    , _mwgWebPropertyId :: !Text
    , _mwgUserIp        :: !(Maybe Text)
    , _mwgAccountId     :: !Text
    , _mwgKey           :: !(Maybe Text)
    , _mwgOauthToken    :: !(Maybe Text)
    , _mwgFields        :: !(Maybe Text)
    , _mwgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwgQuotaUser'
--
-- * 'mwgPrettyPrint'
--
-- * 'mwgWebPropertyId'
--
-- * 'mwgUserIp'
--
-- * 'mwgAccountId'
--
-- * 'mwgKey'
--
-- * 'mwgOauthToken'
--
-- * 'mwgFields'
--
-- * 'mwgAlt'
managementWebpropertiesGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebpropertiesGet'
managementWebpropertiesGet' pMwgWebPropertyId_ pMwgAccountId_ =
    ManagementWebpropertiesGet'
    { _mwgQuotaUser = Nothing
    , _mwgPrettyPrint = False
    , _mwgWebPropertyId = pMwgWebPropertyId_
    , _mwgUserIp = Nothing
    , _mwgAccountId = pMwgAccountId_
    , _mwgKey = Nothing
    , _mwgOauthToken = Nothing
    , _mwgFields = Nothing
    , _mwgAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwgQuotaUser :: Lens' ManagementWebpropertiesGet' (Maybe Text)
mwgQuotaUser
  = lens _mwgQuotaUser (\ s a -> s{_mwgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwgPrettyPrint :: Lens' ManagementWebpropertiesGet' Bool
mwgPrettyPrint
  = lens _mwgPrettyPrint
      (\ s a -> s{_mwgPrettyPrint = a})

-- | ID to retrieve the web property for.
mwgWebPropertyId :: Lens' ManagementWebpropertiesGet' Text
mwgWebPropertyId
  = lens _mwgWebPropertyId
      (\ s a -> s{_mwgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwgUserIp :: Lens' ManagementWebpropertiesGet' (Maybe Text)
mwgUserIp
  = lens _mwgUserIp (\ s a -> s{_mwgUserIp = a})

-- | Account ID to retrieve the web property for.
mwgAccountId :: Lens' ManagementWebpropertiesGet' Text
mwgAccountId
  = lens _mwgAccountId (\ s a -> s{_mwgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwgKey :: Lens' ManagementWebpropertiesGet' (Maybe Text)
mwgKey = lens _mwgKey (\ s a -> s{_mwgKey = a})

-- | OAuth 2.0 token for the current user.
mwgOauthToken :: Lens' ManagementWebpropertiesGet' (Maybe Text)
mwgOauthToken
  = lens _mwgOauthToken
      (\ s a -> s{_mwgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwgFields :: Lens' ManagementWebpropertiesGet' (Maybe Text)
mwgFields
  = lens _mwgFields (\ s a -> s{_mwgFields = a})

-- | Data format for the response.
mwgAlt :: Lens' ManagementWebpropertiesGet' Alt
mwgAlt = lens _mwgAlt (\ s a -> s{_mwgAlt = a})

instance GoogleRequest ManagementWebpropertiesGet'
         where
        type Rs ManagementWebpropertiesGet' = Webproperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementWebpropertiesGet'{..}
          = go _mwgQuotaUser (Just _mwgPrettyPrint)
              _mwgWebPropertyId
              _mwgUserIp
              _mwgAccountId
              _mwgKey
              _mwgOauthToken
              _mwgFields
              (Just _mwgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebpropertiesGetResource)
                      r
                      u
