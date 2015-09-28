{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.ProfileFilterLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.update@.
module Network.Google.API.Analytics.Management.ProfileFilterLinks.Update
    (
    -- * REST Resource
      ManagementProfileFilterLinksUpdateAPI

    -- * Creating a Request
    , managementProfileFilterLinksUpdate'
    , ManagementProfileFilterLinksUpdate'

    -- * Request Lenses
    , mpfluQuotaUser
    , mpfluPrettyPrint
    , mpfluWebPropertyId
    , mpfluUserIp
    , mpfluProfileId
    , mpfluAccountId
    , mpfluKey
    , mpfluLinkId
    , mpfluOauthToken
    , mpfluFields
    , mpfluAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profileFilterLinks.update which the
-- 'ManagementProfileFilterLinksUpdate'' request conforms to.
type ManagementProfileFilterLinksUpdateAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Put '[JSON] ProfileFilterLink

-- | Update an existing profile filter link.
--
-- /See:/ 'managementProfileFilterLinksUpdate'' smart constructor.
data ManagementProfileFilterLinksUpdate' = ManagementProfileFilterLinksUpdate'
    { _mpfluQuotaUser     :: !(Maybe Text)
    , _mpfluPrettyPrint   :: !Bool
    , _mpfluWebPropertyId :: !Text
    , _mpfluUserIp        :: !(Maybe Text)
    , _mpfluProfileId     :: !Text
    , _mpfluAccountId     :: !Text
    , _mpfluKey           :: !(Maybe Text)
    , _mpfluLinkId        :: !Text
    , _mpfluOauthToken    :: !(Maybe Text)
    , _mpfluFields        :: !(Maybe Text)
    , _mpfluAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfluQuotaUser'
--
-- * 'mpfluPrettyPrint'
--
-- * 'mpfluWebPropertyId'
--
-- * 'mpfluUserIp'
--
-- * 'mpfluProfileId'
--
-- * 'mpfluAccountId'
--
-- * 'mpfluKey'
--
-- * 'mpfluLinkId'
--
-- * 'mpfluOauthToken'
--
-- * 'mpfluFields'
--
-- * 'mpfluAlt'
managementProfileFilterLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileFilterLinksUpdate'
managementProfileFilterLinksUpdate' pMpfluWebPropertyId_ pMpfluProfileId_ pMpfluAccountId_ pMpfluLinkId_ =
    ManagementProfileFilterLinksUpdate'
    { _mpfluQuotaUser = Nothing
    , _mpfluPrettyPrint = False
    , _mpfluWebPropertyId = pMpfluWebPropertyId_
    , _mpfluUserIp = Nothing
    , _mpfluProfileId = pMpfluProfileId_
    , _mpfluAccountId = pMpfluAccountId_
    , _mpfluKey = Nothing
    , _mpfluLinkId = pMpfluLinkId_
    , _mpfluOauthToken = Nothing
    , _mpfluFields = Nothing
    , _mpfluAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfluQuotaUser :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluQuotaUser
  = lens _mpfluQuotaUser
      (\ s a -> s{_mpfluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfluPrettyPrint :: Lens' ManagementProfileFilterLinksUpdate' Bool
mpfluPrettyPrint
  = lens _mpfluPrettyPrint
      (\ s a -> s{_mpfluPrettyPrint = a})

-- | Web property Id to which profile filter link belongs
mpfluWebPropertyId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluWebPropertyId
  = lens _mpfluWebPropertyId
      (\ s a -> s{_mpfluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfluUserIp :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluUserIp
  = lens _mpfluUserIp (\ s a -> s{_mpfluUserIp = a})

-- | Profile ID to which filter link belongs
mpfluProfileId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluProfileId
  = lens _mpfluProfileId
      (\ s a -> s{_mpfluProfileId = a})

-- | Account ID to which profile filter link belongs.
mpfluAccountId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluAccountId
  = lens _mpfluAccountId
      (\ s a -> s{_mpfluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfluKey :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluKey = lens _mpfluKey (\ s a -> s{_mpfluKey = a})

-- | ID of the profile filter link to be updated.
mpfluLinkId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluLinkId
  = lens _mpfluLinkId (\ s a -> s{_mpfluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfluOauthToken :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluOauthToken
  = lens _mpfluOauthToken
      (\ s a -> s{_mpfluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfluFields :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluFields
  = lens _mpfluFields (\ s a -> s{_mpfluFields = a})

-- | Data format for the response.
mpfluAlt :: Lens' ManagementProfileFilterLinksUpdate' Alt
mpfluAlt = lens _mpfluAlt (\ s a -> s{_mpfluAlt = a})

instance GoogleRequest
         ManagementProfileFilterLinksUpdate' where
        type Rs ManagementProfileFilterLinksUpdate' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksUpdate'{..}
          = go _mpfluQuotaUser (Just _mpfluPrettyPrint)
              _mpfluWebPropertyId
              _mpfluUserIp
              _mpfluProfileId
              _mpfluAccountId
              _mpfluKey
              _mpfluLinkId
              _mpfluOauthToken
              _mpfluFields
              (Just _mpfluAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksUpdateAPI)
                      r
                      u
