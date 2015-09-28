{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Webproperties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.patch@.
module Network.Google.API.Analytics.Management.Webproperties.Patch
    (
    -- * REST Resource
      ManagementWebpropertiesPatchAPI

    -- * Creating a Request
    , managementWebpropertiesPatch'
    , ManagementWebpropertiesPatch'

    -- * Request Lenses
    , mwpQuotaUser
    , mwpPrettyPrint
    , mwpWebPropertyId
    , mwpUserIp
    , mwpAccountId
    , mwpKey
    , mwpOauthToken
    , mwpFields
    , mwpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.webproperties.patch which the
-- 'ManagementWebpropertiesPatch'' request conforms to.
type ManagementWebpropertiesPatchAPI =
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
                           QueryParam "alt" Alt :> Patch '[JSON] Webproperty

-- | Updates an existing web property. This method supports patch semantics.
--
-- /See:/ 'managementWebpropertiesPatch'' smart constructor.
data ManagementWebpropertiesPatch' = ManagementWebpropertiesPatch'
    { _mwpQuotaUser     :: !(Maybe Text)
    , _mwpPrettyPrint   :: !Bool
    , _mwpWebPropertyId :: !Text
    , _mwpUserIp        :: !(Maybe Text)
    , _mwpAccountId     :: !Text
    , _mwpKey           :: !(Maybe Text)
    , _mwpOauthToken    :: !(Maybe Text)
    , _mwpFields        :: !(Maybe Text)
    , _mwpAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpQuotaUser'
--
-- * 'mwpPrettyPrint'
--
-- * 'mwpWebPropertyId'
--
-- * 'mwpUserIp'
--
-- * 'mwpAccountId'
--
-- * 'mwpKey'
--
-- * 'mwpOauthToken'
--
-- * 'mwpFields'
--
-- * 'mwpAlt'
managementWebpropertiesPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebpropertiesPatch'
managementWebpropertiesPatch' pMwpWebPropertyId_ pMwpAccountId_ =
    ManagementWebpropertiesPatch'
    { _mwpQuotaUser = Nothing
    , _mwpPrettyPrint = False
    , _mwpWebPropertyId = pMwpWebPropertyId_
    , _mwpUserIp = Nothing
    , _mwpAccountId = pMwpAccountId_
    , _mwpKey = Nothing
    , _mwpOauthToken = Nothing
    , _mwpFields = Nothing
    , _mwpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpQuotaUser :: Lens' ManagementWebpropertiesPatch' (Maybe Text)
mwpQuotaUser
  = lens _mwpQuotaUser (\ s a -> s{_mwpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpPrettyPrint :: Lens' ManagementWebpropertiesPatch' Bool
mwpPrettyPrint
  = lens _mwpPrettyPrint
      (\ s a -> s{_mwpPrettyPrint = a})

-- | Web property ID
mwpWebPropertyId :: Lens' ManagementWebpropertiesPatch' Text
mwpWebPropertyId
  = lens _mwpWebPropertyId
      (\ s a -> s{_mwpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpUserIp :: Lens' ManagementWebpropertiesPatch' (Maybe Text)
mwpUserIp
  = lens _mwpUserIp (\ s a -> s{_mwpUserIp = a})

-- | Account ID to which the web property belongs
mwpAccountId :: Lens' ManagementWebpropertiesPatch' Text
mwpAccountId
  = lens _mwpAccountId (\ s a -> s{_mwpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpKey :: Lens' ManagementWebpropertiesPatch' (Maybe Text)
mwpKey = lens _mwpKey (\ s a -> s{_mwpKey = a})

-- | OAuth 2.0 token for the current user.
mwpOauthToken :: Lens' ManagementWebpropertiesPatch' (Maybe Text)
mwpOauthToken
  = lens _mwpOauthToken
      (\ s a -> s{_mwpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpFields :: Lens' ManagementWebpropertiesPatch' (Maybe Text)
mwpFields
  = lens _mwpFields (\ s a -> s{_mwpFields = a})

-- | Data format for the response.
mwpAlt :: Lens' ManagementWebpropertiesPatch' Alt
mwpAlt = lens _mwpAlt (\ s a -> s{_mwpAlt = a})

instance GoogleRequest ManagementWebpropertiesPatch'
         where
        type Rs ManagementWebpropertiesPatch' = Webproperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertiesPatch'{..}
          = go _mwpQuotaUser (Just _mwpPrettyPrint)
              _mwpWebPropertyId
              _mwpUserIp
              _mwpAccountId
              _mwpKey
              _mwpOauthToken
              _mwpFields
              (Just _mwpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebpropertiesPatchAPI)
                      r
                      u
