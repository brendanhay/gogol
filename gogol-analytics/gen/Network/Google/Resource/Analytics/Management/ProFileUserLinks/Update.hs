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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileUserLinksUpdate@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update
    (
    -- * REST Resource
      ManagementProFileUserLinksUpdateResource

    -- * Creating a Request
    , managementProFileUserLinksUpdate'
    , ManagementProFileUserLinksUpdate'

    -- * Request Lenses
    , mpfuluQuotaUser
    , mpfuluPrettyPrint
    , mpfuluWebPropertyId
    , mpfuluUserIP
    , mpfuluProFileId
    , mpfuluPayload
    , mpfuluAccountId
    , mpfuluKey
    , mpfuluLinkId
    , mpfuluOAuthToken
    , mpfuluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileUserLinksUpdate@ which the
-- 'ManagementProFileUserLinksUpdate'' request conforms to.
type ManagementProFileUserLinksUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
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

-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ 'managementProFileUserLinksUpdate'' smart constructor.
data ManagementProFileUserLinksUpdate' = ManagementProFileUserLinksUpdate'
    { _mpfuluQuotaUser     :: !(Maybe Text)
    , _mpfuluPrettyPrint   :: !Bool
    , _mpfuluWebPropertyId :: !Text
    , _mpfuluUserIP        :: !(Maybe Text)
    , _mpfuluProFileId     :: !Text
    , _mpfuluPayload       :: !EntityUserLink
    , _mpfuluAccountId     :: !Text
    , _mpfuluKey           :: !(Maybe Key)
    , _mpfuluLinkId        :: !Text
    , _mpfuluOAuthToken    :: !(Maybe OAuthToken)
    , _mpfuluFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuluQuotaUser'
--
-- * 'mpfuluPrettyPrint'
--
-- * 'mpfuluWebPropertyId'
--
-- * 'mpfuluUserIP'
--
-- * 'mpfuluProFileId'
--
-- * 'mpfuluPayload'
--
-- * 'mpfuluAccountId'
--
-- * 'mpfuluKey'
--
-- * 'mpfuluLinkId'
--
-- * 'mpfuluOAuthToken'
--
-- * 'mpfuluFields'
managementProFileUserLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> EntityUserLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileUserLinksUpdate'
managementProFileUserLinksUpdate' pMpfuluWebPropertyId_ pMpfuluProFileId_ pMpfuluPayload_ pMpfuluAccountId_ pMpfuluLinkId_ =
    ManagementProFileUserLinksUpdate'
    { _mpfuluQuotaUser = Nothing
    , _mpfuluPrettyPrint = False
    , _mpfuluWebPropertyId = pMpfuluWebPropertyId_
    , _mpfuluUserIP = Nothing
    , _mpfuluProFileId = pMpfuluProFileId_
    , _mpfuluPayload = pMpfuluPayload_
    , _mpfuluAccountId = pMpfuluAccountId_
    , _mpfuluKey = Nothing
    , _mpfuluLinkId = pMpfuluLinkId_
    , _mpfuluOAuthToken = Nothing
    , _mpfuluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfuluQuotaUser :: Lens' ManagementProFileUserLinksUpdate' (Maybe Text)
mpfuluQuotaUser
  = lens _mpfuluQuotaUser
      (\ s a -> s{_mpfuluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfuluPrettyPrint :: Lens' ManagementProFileUserLinksUpdate' Bool
mpfuluPrettyPrint
  = lens _mpfuluPrettyPrint
      (\ s a -> s{_mpfuluPrettyPrint = a})

-- | Web Property ID to update the user link for.
mpfuluWebPropertyId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluWebPropertyId
  = lens _mpfuluWebPropertyId
      (\ s a -> s{_mpfuluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfuluUserIP :: Lens' ManagementProFileUserLinksUpdate' (Maybe Text)
mpfuluUserIP
  = lens _mpfuluUserIP (\ s a -> s{_mpfuluUserIP = a})

-- | View (Profile ID) to update the user link for.
mpfuluProFileId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluProFileId
  = lens _mpfuluProFileId
      (\ s a -> s{_mpfuluProFileId = a})

-- | Multipart request metadata.
mpfuluPayload :: Lens' ManagementProFileUserLinksUpdate' EntityUserLink
mpfuluPayload
  = lens _mpfuluPayload
      (\ s a -> s{_mpfuluPayload = a})

-- | Account ID to update the user link for.
mpfuluAccountId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluAccountId
  = lens _mpfuluAccountId
      (\ s a -> s{_mpfuluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfuluKey :: Lens' ManagementProFileUserLinksUpdate' (Maybe Key)
mpfuluKey
  = lens _mpfuluKey (\ s a -> s{_mpfuluKey = a})

-- | Link ID to update the user link for.
mpfuluLinkId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluLinkId
  = lens _mpfuluLinkId (\ s a -> s{_mpfuluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfuluOAuthToken :: Lens' ManagementProFileUserLinksUpdate' (Maybe OAuthToken)
mpfuluOAuthToken
  = lens _mpfuluOAuthToken
      (\ s a -> s{_mpfuluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfuluFields :: Lens' ManagementProFileUserLinksUpdate' (Maybe Text)
mpfuluFields
  = lens _mpfuluFields (\ s a -> s{_mpfuluFields = a})

instance GoogleAuth ManagementProFileUserLinksUpdate'
         where
        authKey = mpfuluKey . _Just
        authToken = mpfuluOAuthToken . _Just

instance GoogleRequest
         ManagementProFileUserLinksUpdate' where
        type Rs ManagementProFileUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileUserLinksUpdate'{..}
          = go _mpfuluAccountId _mpfuluWebPropertyId
              _mpfuluProFileId
              _mpfuluLinkId
              _mpfuluQuotaUser
              (Just _mpfuluPrettyPrint)
              _mpfuluUserIP
              _mpfuluFields
              _mpfuluKey
              _mpfuluOAuthToken
              (Just AltJSON)
              _mpfuluPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileUserLinksUpdateResource)
                      r
                      u
