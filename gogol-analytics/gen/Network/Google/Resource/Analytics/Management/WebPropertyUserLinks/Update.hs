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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyUserLinksUpdate@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksUpdateResource

    -- * Creating a Request
    , managementWebPropertyUserLinksUpdate'
    , ManagementWebPropertyUserLinksUpdate'

    -- * Request Lenses
    , mwpuluQuotaUser
    , mwpuluPrettyPrint
    , mwpuluWebPropertyId
    , mwpuluUserIP
    , mwpuluAccountId
    , mwpuluKey
    , mwpuluEntityUserLink
    , mwpuluLinkId
    , mwpuluOAuthToken
    , mwpuluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyUserLinksUpdate@ which the
-- 'ManagementWebPropertyUserLinksUpdate'' request conforms to.
type ManagementWebPropertyUserLinksUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 Capture "linkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] EntityUserLink :>
                                   Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksUpdate'' smart constructor.
data ManagementWebPropertyUserLinksUpdate' = ManagementWebPropertyUserLinksUpdate'
    { _mwpuluQuotaUser      :: !(Maybe Text)
    , _mwpuluPrettyPrint    :: !Bool
    , _mwpuluWebPropertyId  :: !Text
    , _mwpuluUserIP         :: !(Maybe Text)
    , _mwpuluAccountId      :: !Text
    , _mwpuluKey            :: !(Maybe Key)
    , _mwpuluEntityUserLink :: !EntityUserLink
    , _mwpuluLinkId         :: !Text
    , _mwpuluOAuthToken     :: !(Maybe OAuthToken)
    , _mwpuluFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuluQuotaUser'
--
-- * 'mwpuluPrettyPrint'
--
-- * 'mwpuluWebPropertyId'
--
-- * 'mwpuluUserIP'
--
-- * 'mwpuluAccountId'
--
-- * 'mwpuluKey'
--
-- * 'mwpuluEntityUserLink'
--
-- * 'mwpuluLinkId'
--
-- * 'mwpuluOAuthToken'
--
-- * 'mwpuluFields'
managementWebPropertyUserLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> EntityUserLink -- ^ 'EntityUserLink'
    -> Text -- ^ 'linkId'
    -> ManagementWebPropertyUserLinksUpdate'
managementWebPropertyUserLinksUpdate' pMwpuluWebPropertyId_ pMwpuluAccountId_ pMwpuluEntityUserLink_ pMwpuluLinkId_ =
    ManagementWebPropertyUserLinksUpdate'
    { _mwpuluQuotaUser = Nothing
    , _mwpuluPrettyPrint = False
    , _mwpuluWebPropertyId = pMwpuluWebPropertyId_
    , _mwpuluUserIP = Nothing
    , _mwpuluAccountId = pMwpuluAccountId_
    , _mwpuluKey = Nothing
    , _mwpuluEntityUserLink = pMwpuluEntityUserLink_
    , _mwpuluLinkId = pMwpuluLinkId_
    , _mwpuluOAuthToken = Nothing
    , _mwpuluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpuluQuotaUser :: Lens' ManagementWebPropertyUserLinksUpdate' (Maybe Text)
mwpuluQuotaUser
  = lens _mwpuluQuotaUser
      (\ s a -> s{_mwpuluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpuluPrettyPrint :: Lens' ManagementWebPropertyUserLinksUpdate' Bool
mwpuluPrettyPrint
  = lens _mwpuluPrettyPrint
      (\ s a -> s{_mwpuluPrettyPrint = a})

-- | Web property ID to update the account-user link for.
mwpuluWebPropertyId :: Lens' ManagementWebPropertyUserLinksUpdate' Text
mwpuluWebPropertyId
  = lens _mwpuluWebPropertyId
      (\ s a -> s{_mwpuluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpuluUserIP :: Lens' ManagementWebPropertyUserLinksUpdate' (Maybe Text)
mwpuluUserIP
  = lens _mwpuluUserIP (\ s a -> s{_mwpuluUserIP = a})

-- | Account ID to update the account-user link for.
mwpuluAccountId :: Lens' ManagementWebPropertyUserLinksUpdate' Text
mwpuluAccountId
  = lens _mwpuluAccountId
      (\ s a -> s{_mwpuluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpuluKey :: Lens' ManagementWebPropertyUserLinksUpdate' (Maybe Key)
mwpuluKey
  = lens _mwpuluKey (\ s a -> s{_mwpuluKey = a})

-- | Multipart request metadata.
mwpuluEntityUserLink :: Lens' ManagementWebPropertyUserLinksUpdate' EntityUserLink
mwpuluEntityUserLink
  = lens _mwpuluEntityUserLink
      (\ s a -> s{_mwpuluEntityUserLink = a})

-- | Link ID to update the account-user link for.
mwpuluLinkId :: Lens' ManagementWebPropertyUserLinksUpdate' Text
mwpuluLinkId
  = lens _mwpuluLinkId (\ s a -> s{_mwpuluLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpuluOAuthToken :: Lens' ManagementWebPropertyUserLinksUpdate' (Maybe OAuthToken)
mwpuluOAuthToken
  = lens _mwpuluOAuthToken
      (\ s a -> s{_mwpuluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpuluFields :: Lens' ManagementWebPropertyUserLinksUpdate' (Maybe Text)
mwpuluFields
  = lens _mwpuluFields (\ s a -> s{_mwpuluFields = a})

instance GoogleAuth
         ManagementWebPropertyUserLinksUpdate' where
        authKey = mwpuluKey . _Just
        authToken = mwpuluOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyUserLinksUpdate' where
        type Rs ManagementWebPropertyUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyUserLinksUpdate'{..}
          = go _mwpuluAccountId _mwpuluWebPropertyId
              _mwpuluLinkId
              _mwpuluQuotaUser
              (Just _mwpuluPrettyPrint)
              _mwpuluUserIP
              _mwpuluFields
              _mwpuluKey
              _mwpuluOAuthToken
              (Just AltJSON)
              _mwpuluEntityUserLink
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksUpdateResource)
                      r
                      u
