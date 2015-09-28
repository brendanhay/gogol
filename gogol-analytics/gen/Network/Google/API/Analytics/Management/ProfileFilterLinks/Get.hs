{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.ProfileFilterLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.get@.
module Network.Google.API.Analytics.Management.ProfileFilterLinks.Get
    (
    -- * REST Resource
      ManagementProfileFilterLinksGetAPI

    -- * Creating a Request
    , managementProfileFilterLinksGet'
    , ManagementProfileFilterLinksGet'

    -- * Request Lenses
    , mpflgQuotaUser
    , mpflgPrettyPrint
    , mpflgWebPropertyId
    , mpflgUserIp
    , mpflgProfileId
    , mpflgAccountId
    , mpflgKey
    , mpflgLinkId
    , mpflgOauthToken
    , mpflgFields
    , mpflgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profileFilterLinks.get which the
-- 'ManagementProfileFilterLinksGet'' request conforms to.
type ManagementProfileFilterLinksGetAPI =
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
                                     Get '[JSON] ProfileFilterLink

-- | Returns a single profile filter link.
--
-- /See:/ 'managementProfileFilterLinksGet'' smart constructor.
data ManagementProfileFilterLinksGet' = ManagementProfileFilterLinksGet'
    { _mpflgQuotaUser     :: !(Maybe Text)
    , _mpflgPrettyPrint   :: !Bool
    , _mpflgWebPropertyId :: !Text
    , _mpflgUserIp        :: !(Maybe Text)
    , _mpflgProfileId     :: !Text
    , _mpflgAccountId     :: !Text
    , _mpflgKey           :: !(Maybe Text)
    , _mpflgLinkId        :: !Text
    , _mpflgOauthToken    :: !(Maybe Text)
    , _mpflgFields        :: !(Maybe Text)
    , _mpflgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpflgQuotaUser'
--
-- * 'mpflgPrettyPrint'
--
-- * 'mpflgWebPropertyId'
--
-- * 'mpflgUserIp'
--
-- * 'mpflgProfileId'
--
-- * 'mpflgAccountId'
--
-- * 'mpflgKey'
--
-- * 'mpflgLinkId'
--
-- * 'mpflgOauthToken'
--
-- * 'mpflgFields'
--
-- * 'mpflgAlt'
managementProfileFilterLinksGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileFilterLinksGet'
managementProfileFilterLinksGet' pMpflgWebPropertyId_ pMpflgProfileId_ pMpflgAccountId_ pMpflgLinkId_ =
    ManagementProfileFilterLinksGet'
    { _mpflgQuotaUser = Nothing
    , _mpflgPrettyPrint = False
    , _mpflgWebPropertyId = pMpflgWebPropertyId_
    , _mpflgUserIp = Nothing
    , _mpflgProfileId = pMpflgProfileId_
    , _mpflgAccountId = pMpflgAccountId_
    , _mpflgKey = Nothing
    , _mpflgLinkId = pMpflgLinkId_
    , _mpflgOauthToken = Nothing
    , _mpflgFields = Nothing
    , _mpflgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpflgQuotaUser :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgQuotaUser
  = lens _mpflgQuotaUser
      (\ s a -> s{_mpflgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpflgPrettyPrint :: Lens' ManagementProfileFilterLinksGet' Bool
mpflgPrettyPrint
  = lens _mpflgPrettyPrint
      (\ s a -> s{_mpflgPrettyPrint = a})

-- | Web property Id to retrieve profile filter link for.
mpflgWebPropertyId :: Lens' ManagementProfileFilterLinksGet' Text
mpflgWebPropertyId
  = lens _mpflgWebPropertyId
      (\ s a -> s{_mpflgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpflgUserIp :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgUserIp
  = lens _mpflgUserIp (\ s a -> s{_mpflgUserIp = a})

-- | Profile ID to retrieve filter link for.
mpflgProfileId :: Lens' ManagementProfileFilterLinksGet' Text
mpflgProfileId
  = lens _mpflgProfileId
      (\ s a -> s{_mpflgProfileId = a})

-- | Account ID to retrieve profile filter link for.
mpflgAccountId :: Lens' ManagementProfileFilterLinksGet' Text
mpflgAccountId
  = lens _mpflgAccountId
      (\ s a -> s{_mpflgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpflgKey :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgKey = lens _mpflgKey (\ s a -> s{_mpflgKey = a})

-- | ID of the profile filter link.
mpflgLinkId :: Lens' ManagementProfileFilterLinksGet' Text
mpflgLinkId
  = lens _mpflgLinkId (\ s a -> s{_mpflgLinkId = a})

-- | OAuth 2.0 token for the current user.
mpflgOauthToken :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgOauthToken
  = lens _mpflgOauthToken
      (\ s a -> s{_mpflgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpflgFields :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgFields
  = lens _mpflgFields (\ s a -> s{_mpflgFields = a})

-- | Data format for the response.
mpflgAlt :: Lens' ManagementProfileFilterLinksGet' Alt
mpflgAlt = lens _mpflgAlt (\ s a -> s{_mpflgAlt = a})

instance GoogleRequest
         ManagementProfileFilterLinksGet' where
        type Rs ManagementProfileFilterLinksGet' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksGet'{..}
          = go _mpflgQuotaUser (Just _mpflgPrettyPrint)
              _mpflgWebPropertyId
              _mpflgUserIp
              _mpflgProfileId
              _mpflgAccountId
              _mpflgKey
              _mpflgLinkId
              _mpflgOauthToken
              _mpflgFields
              (Just _mpflgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfileFilterLinksGetAPI)
                      r
                      u
