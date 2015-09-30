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
    , mpuluUserIp
    , mpuluProfileId
    , mpuluAccountId
    , mpuluKey
    , mpuluLinkId
    , mpuluOauthToken
    , mpuluFields
    , mpuluAlt
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
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ 'managementProfileUserLinksUpdate'' smart constructor.
data ManagementProfileUserLinksUpdate' = ManagementProfileUserLinksUpdate'
    { _mpuluQuotaUser     :: !(Maybe Text)
    , _mpuluPrettyPrint   :: !Bool
    , _mpuluWebPropertyId :: !Text
    , _mpuluUserIp        :: !(Maybe Text)
    , _mpuluProfileId     :: !Text
    , _mpuluAccountId     :: !Text
    , _mpuluKey           :: !(Maybe Text)
    , _mpuluLinkId        :: !Text
    , _mpuluOauthToken    :: !(Maybe Text)
    , _mpuluFields        :: !(Maybe Text)
    , _mpuluAlt           :: !Alt
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
-- * 'mpuluUserIp'
--
-- * 'mpuluProfileId'
--
-- * 'mpuluAccountId'
--
-- * 'mpuluKey'
--
-- * 'mpuluLinkId'
--
-- * 'mpuluOauthToken'
--
-- * 'mpuluFields'
--
-- * 'mpuluAlt'
managementProfileUserLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileUserLinksUpdate'
managementProfileUserLinksUpdate' pMpuluWebPropertyId_ pMpuluProfileId_ pMpuluAccountId_ pMpuluLinkId_ =
    ManagementProfileUserLinksUpdate'
    { _mpuluQuotaUser = Nothing
    , _mpuluPrettyPrint = False
    , _mpuluWebPropertyId = pMpuluWebPropertyId_
    , _mpuluUserIp = Nothing
    , _mpuluProfileId = pMpuluProfileId_
    , _mpuluAccountId = pMpuluAccountId_
    , _mpuluKey = Nothing
    , _mpuluLinkId = pMpuluLinkId_
    , _mpuluOauthToken = Nothing
    , _mpuluFields = Nothing
    , _mpuluAlt = ALTJSON
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
mpuluUserIp :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluUserIp
  = lens _mpuluUserIp (\ s a -> s{_mpuluUserIp = a})

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
mpuluKey :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluKey = lens _mpuluKey (\ s a -> s{_mpuluKey = a})

-- | Link ID to update the user link for.
mpuluLinkId :: Lens' ManagementProfileUserLinksUpdate' Text
mpuluLinkId
  = lens _mpuluLinkId (\ s a -> s{_mpuluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpuluOauthToken :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluOauthToken
  = lens _mpuluOauthToken
      (\ s a -> s{_mpuluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuluFields :: Lens' ManagementProfileUserLinksUpdate' (Maybe Text)
mpuluFields
  = lens _mpuluFields (\ s a -> s{_mpuluFields = a})

-- | Data format for the response.
mpuluAlt :: Lens' ManagementProfileUserLinksUpdate' Alt
mpuluAlt = lens _mpuluAlt (\ s a -> s{_mpuluAlt = a})

instance GoogleRequest
         ManagementProfileUserLinksUpdate' where
        type Rs ManagementProfileUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksUpdate'{..}
          = go _mpuluQuotaUser (Just _mpuluPrettyPrint)
              _mpuluWebPropertyId
              _mpuluUserIp
              _mpuluProfileId
              _mpuluAccountId
              _mpuluKey
              _mpuluLinkId
              _mpuluOauthToken
              _mpuluFields
              (Just _mpuluAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileUserLinksUpdateResource)
                      r
                      u
