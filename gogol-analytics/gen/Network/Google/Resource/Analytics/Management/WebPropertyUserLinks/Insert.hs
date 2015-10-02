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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyUserLinksInsert@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksInsertResource

    -- * Creating a Request
    , managementWebPropertyUserLinksInsert'
    , ManagementWebPropertyUserLinksInsert'

    -- * Request Lenses
    , mwpuliQuotaUser
    , mwpuliPrettyPrint
    , mwpuliWebPropertyId
    , mwpuliUserIP
    , mwpuliAccountId
    , mwpuliKey
    , mwpuliEntityUserLink
    , mwpuliOAuthToken
    , mwpuliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyUserLinksInsert@ which the
-- 'ManagementWebPropertyUserLinksInsert'' request conforms to.
type ManagementWebPropertyUserLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] EntityUserLink :>
                                 Post '[JSON] EntityUserLink

-- | Adds a new user to the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksInsert'' smart constructor.
data ManagementWebPropertyUserLinksInsert' = ManagementWebPropertyUserLinksInsert'
    { _mwpuliQuotaUser      :: !(Maybe Text)
    , _mwpuliPrettyPrint    :: !Bool
    , _mwpuliWebPropertyId  :: !Text
    , _mwpuliUserIP         :: !(Maybe Text)
    , _mwpuliAccountId      :: !Text
    , _mwpuliKey            :: !(Maybe Key)
    , _mwpuliEntityUserLink :: !EntityUserLink
    , _mwpuliOAuthToken     :: !(Maybe OAuthToken)
    , _mwpuliFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuliQuotaUser'
--
-- * 'mwpuliPrettyPrint'
--
-- * 'mwpuliWebPropertyId'
--
-- * 'mwpuliUserIP'
--
-- * 'mwpuliAccountId'
--
-- * 'mwpuliKey'
--
-- * 'mwpuliEntityUserLink'
--
-- * 'mwpuliOAuthToken'
--
-- * 'mwpuliFields'
managementWebPropertyUserLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> EntityUserLink -- ^ 'EntityUserLink'
    -> ManagementWebPropertyUserLinksInsert'
managementWebPropertyUserLinksInsert' pMwpuliWebPropertyId_ pMwpuliAccountId_ pMwpuliEntityUserLink_ =
    ManagementWebPropertyUserLinksInsert'
    { _mwpuliQuotaUser = Nothing
    , _mwpuliPrettyPrint = False
    , _mwpuliWebPropertyId = pMwpuliWebPropertyId_
    , _mwpuliUserIP = Nothing
    , _mwpuliAccountId = pMwpuliAccountId_
    , _mwpuliKey = Nothing
    , _mwpuliEntityUserLink = pMwpuliEntityUserLink_
    , _mwpuliOAuthToken = Nothing
    , _mwpuliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpuliQuotaUser :: Lens' ManagementWebPropertyUserLinksInsert' (Maybe Text)
mwpuliQuotaUser
  = lens _mwpuliQuotaUser
      (\ s a -> s{_mwpuliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpuliPrettyPrint :: Lens' ManagementWebPropertyUserLinksInsert' Bool
mwpuliPrettyPrint
  = lens _mwpuliPrettyPrint
      (\ s a -> s{_mwpuliPrettyPrint = a})

-- | Web Property ID to create the user link for.
mwpuliWebPropertyId :: Lens' ManagementWebPropertyUserLinksInsert' Text
mwpuliWebPropertyId
  = lens _mwpuliWebPropertyId
      (\ s a -> s{_mwpuliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpuliUserIP :: Lens' ManagementWebPropertyUserLinksInsert' (Maybe Text)
mwpuliUserIP
  = lens _mwpuliUserIP (\ s a -> s{_mwpuliUserIP = a})

-- | Account ID to create the user link for.
mwpuliAccountId :: Lens' ManagementWebPropertyUserLinksInsert' Text
mwpuliAccountId
  = lens _mwpuliAccountId
      (\ s a -> s{_mwpuliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpuliKey :: Lens' ManagementWebPropertyUserLinksInsert' (Maybe Key)
mwpuliKey
  = lens _mwpuliKey (\ s a -> s{_mwpuliKey = a})

-- | Multipart request metadata.
mwpuliEntityUserLink :: Lens' ManagementWebPropertyUserLinksInsert' EntityUserLink
mwpuliEntityUserLink
  = lens _mwpuliEntityUserLink
      (\ s a -> s{_mwpuliEntityUserLink = a})

-- | OAuth 2.0 token for the current user.
mwpuliOAuthToken :: Lens' ManagementWebPropertyUserLinksInsert' (Maybe OAuthToken)
mwpuliOAuthToken
  = lens _mwpuliOAuthToken
      (\ s a -> s{_mwpuliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpuliFields :: Lens' ManagementWebPropertyUserLinksInsert' (Maybe Text)
mwpuliFields
  = lens _mwpuliFields (\ s a -> s{_mwpuliFields = a})

instance GoogleAuth
         ManagementWebPropertyUserLinksInsert' where
        authKey = mwpuliKey . _Just
        authToken = mwpuliOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyUserLinksInsert' where
        type Rs ManagementWebPropertyUserLinksInsert' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyUserLinksInsert'{..}
          = go _mwpuliQuotaUser (Just _mwpuliPrettyPrint)
              _mwpuliWebPropertyId
              _mwpuliUserIP
              _mwpuliAccountId
              _mwpuliKey
              _mwpuliOAuthToken
              _mwpuliFields
              (Just AltJSON)
              _mwpuliEntityUserLink
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksInsertResource)
                      r
                      u
