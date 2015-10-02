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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileUserLinksUpdate@.
module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Update
    (
    -- * REST Resource
      ManagementProfileUserLinksUpdateResource

    -- * Creating a Request
    , managementProfileUserLinksUpdate'
    , ManagementProfileUserLinksUpdate'

    -- * Request Lenses
    , mpuluQuotaUser
    , mpuluPrettyPrint
    , mpuluWebPropertyId
    , mpuluUserIP
    , mpuluProfileId
    , mpuluAccountId
    , mpuluKey
    , mpuluEntityUserLink
    , mpuluLinkId
    , mpuluOAuthToken
    , mpuluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileUserLinksUpdate@ which the
-- 'ManagementProfileUserLinksUpdate'' request conforms to.
type ManagementProfileUserLinksUpdateResource =
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
-- /See:/ 'managementProfileUserLinksUpdate'' smart constructor.
data ManagementProfileUserLinksUpdate' = ManagementProfileUserLinksUpdate'
    { _mpuluQuotaUser      :: !(Maybe Text)
    , _mpuluPrettyPrint    :: !Bool
    , _mpuluWebPropertyId  :: !Text
    , _mpuluUserIP         :: !(Maybe Text)
    , _mpuluProfileId      :: !Text
    , _mpuluAccountId      :: !Text
    , _mpuluKey            :: !(Maybe Key)
    , _mpuluEntityUserLink :: !EntityUserLink
    , _mpuluLinkId         :: !Text
    , _mpuluOAuthToken     :: !(Maybe OAuthToken)
    , _mpuluFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpuluQuotaUser'
--
-- * 'mpuluPrettyPrint'
--
-- * 'mpuluWebPropertyId'
--
-- * 'mpuluUserIP'
--
-- * 'mpuluProfileId'
--
-- * 'mpuluAccountId'
--
-- * 'mpuluKey'
--
-- * 'mpuluEntityUserLink'
--
-- * 'mpuluLinkId'
--
-- * 'mpuluOAuthToken'
--
-- * 'mpuluFields'
managementProfileUserLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> EntityUserLink -- ^ 'EntityUserLink'
    -> Text -- ^ 'linkId'
    -> ManagementProfileUserLinksUpdate'
managementProfileUserLinksUpdate' pMpuluWebPropertyId_ pMpuluProfileId_ pMpuluAccountId_ pMpuluEntityUserLink_ pMpuluLinkId_ =
    ManagementProfileUserLinksUpdate'
    { _mpuluQuotaUser = Nothing
    , _mpuluPrettyPrint = False
    , _mpuluWebPropertyId = pMpuluWebPropertyId_
    , _mpuluUserIP = Nothing
    , _mpuluProfileId = pMpuluProfileId_
    , _mpuluAccountId = pMpuluAccountId_
    , _mpuluKey = Nothing
    , _mpuluEntityUserLink = pMpuluEntityUserLink_
    , _mpuluLinkId = pMpuluLinkId_
    , _mpuluOAuthToken = Nothing
    , _mpuluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpuluQuotaUser :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluQuotaUser
  = lens _mpuluQuotaUser
      (\ s a -> s{_mpuluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpuluPrettyPrint :: Lens' ManagementProfileUserLinksUpdate' Bool
mpuluPrettyPrint
  = lens _mpuluPrettyPrint
      (\ s a -> s{_mpuluPrettyPrint = a})

-- | Web Property ID to update the user link for.
mpuluWebPropertyId :: Lens' ManagementProfileUserLinksUpdate' Text
mpuluWebPropertyId
  = lens _mpuluWebPropertyId
      (\ s a -> s{_mpuluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpuluUserIP :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluUserIP
  = lens _mpuluUserIP (\ s a -> s{_mpuluUserIP = a})

-- | View (Profile ID) to update the user link for.
mpuluProfileId :: Lens' ManagementProfileUserLinksUpdate' Text
mpuluProfileId
  = lens _mpuluProfileId
      (\ s a -> s{_mpuluProfileId = a})

-- | Account ID to update the user link for.
mpuluAccountId :: Lens' ManagementProfileUserLinksUpdate' Text
mpuluAccountId
  = lens _mpuluAccountId
      (\ s a -> s{_mpuluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpuluKey :: Lens' ManagementProfileUserLinksUpdate' (Maybe Key)
mpuluKey = lens _mpuluKey (\ s a -> s{_mpuluKey = a})

-- | Multipart request metadata.
mpuluEntityUserLink :: Lens' ManagementProfileUserLinksUpdate' EntityUserLink
mpuluEntityUserLink
  = lens _mpuluEntityUserLink
      (\ s a -> s{_mpuluEntityUserLink = a})

-- | Link ID to update the user link for.
mpuluLinkId :: Lens' ManagementProfileUserLinksUpdate' Text
mpuluLinkId
  = lens _mpuluLinkId (\ s a -> s{_mpuluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpuluOAuthToken :: Lens' ManagementProfileUserLinksUpdate' (Maybe OAuthToken)
mpuluOAuthToken
  = lens _mpuluOAuthToken
      (\ s a -> s{_mpuluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuluFields :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluFields
  = lens _mpuluFields (\ s a -> s{_mpuluFields = a})

instance GoogleAuth ManagementProfileUserLinksUpdate'
         where
        authKey = mpuluKey . _Just
        authToken = mpuluOAuthToken . _Just

instance GoogleRequest
         ManagementProfileUserLinksUpdate' where
        type Rs ManagementProfileUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksUpdate'{..}
          = go _mpuluAccountId _mpuluWebPropertyId
              _mpuluProfileId
              _mpuluLinkId
              _mpuluQuotaUser
              (Just _mpuluPrettyPrint)
              _mpuluUserIP
              _mpuluFields
              _mpuluKey
              _mpuluOAuthToken
              (Just AltJSON)
              _mpuluEntityUserLink
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileUserLinksUpdateResource)
                      r
                      u
