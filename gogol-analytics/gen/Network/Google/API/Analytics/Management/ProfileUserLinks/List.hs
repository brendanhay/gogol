{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.ProfileUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists profile-user links for a given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.list@.
module Network.Google.API.Analytics.Management.ProfileUserLinks.List
    (
    -- * REST Resource
      ManagementProfileUserLinksListAPI

    -- * Creating a Request
    , managementProfileUserLinksList'
    , ManagementProfileUserLinksList'

    -- * Request Lenses
    , mpullQuotaUser
    , mpullPrettyPrint
    , mpullWebPropertyId
    , mpullUserIp
    , mpullProfileId
    , mpullAccountId
    , mpullKey
    , mpullOauthToken
    , mpullStartIndex
    , mpullMaxResults
    , mpullFields
    , mpullAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profileUserLinks.list which the
-- 'ManagementProfileUserLinksList'' request conforms to.
type ManagementProfileUserLinksListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "start-index" Nat :>
                                 QueryParam "max-results" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] EntityUserLinks

-- | Lists profile-user links for a given view (profile).
--
-- /See:/ 'managementProfileUserLinksList'' smart constructor.
data ManagementProfileUserLinksList' = ManagementProfileUserLinksList'
    { _mpullQuotaUser     :: !(Maybe Text)
    , _mpullPrettyPrint   :: !Bool
    , _mpullWebPropertyId :: !Text
    , _mpullUserIp        :: !(Maybe Text)
    , _mpullProfileId     :: !Text
    , _mpullAccountId     :: !Text
    , _mpullKey           :: !(Maybe Text)
    , _mpullOauthToken    :: !(Maybe Text)
    , _mpullStartIndex    :: !(Maybe Nat)
    , _mpullMaxResults    :: !(Maybe Int32)
    , _mpullFields        :: !(Maybe Text)
    , _mpullAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpullQuotaUser'
--
-- * 'mpullPrettyPrint'
--
-- * 'mpullWebPropertyId'
--
-- * 'mpullUserIp'
--
-- * 'mpullProfileId'
--
-- * 'mpullAccountId'
--
-- * 'mpullKey'
--
-- * 'mpullOauthToken'
--
-- * 'mpullStartIndex'
--
-- * 'mpullMaxResults'
--
-- * 'mpullFields'
--
-- * 'mpullAlt'
managementProfileUserLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfileUserLinksList'
managementProfileUserLinksList' pMpullWebPropertyId_ pMpullProfileId_ pMpullAccountId_ =
    ManagementProfileUserLinksList'
    { _mpullQuotaUser = Nothing
    , _mpullPrettyPrint = False
    , _mpullWebPropertyId = pMpullWebPropertyId_
    , _mpullUserIp = Nothing
    , _mpullProfileId = pMpullProfileId_
    , _mpullAccountId = pMpullAccountId_
    , _mpullKey = Nothing
    , _mpullOauthToken = Nothing
    , _mpullStartIndex = Nothing
    , _mpullMaxResults = Nothing
    , _mpullFields = Nothing
    , _mpullAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpullQuotaUser :: Lens' ManagementProfileUserLinksList' (Maybe Text)
mpullQuotaUser
  = lens _mpullQuotaUser
      (\ s a -> s{_mpullQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpullPrettyPrint :: Lens' ManagementProfileUserLinksList' Bool
mpullPrettyPrint
  = lens _mpullPrettyPrint
      (\ s a -> s{_mpullPrettyPrint = a})

-- | Web Property ID which the given view (profile) belongs to. Can either be
-- a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mpullWebPropertyId :: Lens' ManagementProfileUserLinksList' Text
mpullWebPropertyId
  = lens _mpullWebPropertyId
      (\ s a -> s{_mpullWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpullUserIp :: Lens' ManagementProfileUserLinksList' (Maybe Text)
mpullUserIp
  = lens _mpullUserIp (\ s a -> s{_mpullUserIp = a})

-- | View (Profile) ID to retrieve the profile-user links for. Can either be
-- a specific profile ID or \'~all\', which refers to all the profiles that
-- user has access to.
mpullProfileId :: Lens' ManagementProfileUserLinksList' Text
mpullProfileId
  = lens _mpullProfileId
      (\ s a -> s{_mpullProfileId = a})

-- | Account ID which the given view (profile) belongs to.
mpullAccountId :: Lens' ManagementProfileUserLinksList' Text
mpullAccountId
  = lens _mpullAccountId
      (\ s a -> s{_mpullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpullKey :: Lens' ManagementProfileUserLinksList' (Maybe Text)
mpullKey = lens _mpullKey (\ s a -> s{_mpullKey = a})

-- | OAuth 2.0 token for the current user.
mpullOauthToken :: Lens' ManagementProfileUserLinksList' (Maybe Text)
mpullOauthToken
  = lens _mpullOauthToken
      (\ s a -> s{_mpullOauthToken = a})

-- | An index of the first profile-user link to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
mpullStartIndex :: Lens' ManagementProfileUserLinksList' (Maybe Natural)
mpullStartIndex
  = lens _mpullStartIndex
      (\ s a -> s{_mpullStartIndex = a})
      . mapping _Nat

-- | The maximum number of profile-user links to include in this response.
mpullMaxResults :: Lens' ManagementProfileUserLinksList' (Maybe Int32)
mpullMaxResults
  = lens _mpullMaxResults
      (\ s a -> s{_mpullMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mpullFields :: Lens' ManagementProfileUserLinksList' (Maybe Text)
mpullFields
  = lens _mpullFields (\ s a -> s{_mpullFields = a})

-- | Data format for the response.
mpullAlt :: Lens' ManagementProfileUserLinksList' Alt
mpullAlt = lens _mpullAlt (\ s a -> s{_mpullAlt = a})

instance GoogleRequest
         ManagementProfileUserLinksList' where
        type Rs ManagementProfileUserLinksList' =
             EntityUserLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksList'{..}
          = go _mpullQuotaUser (Just _mpullPrettyPrint)
              _mpullWebPropertyId
              _mpullUserIp
              _mpullProfileId
              _mpullAccountId
              _mpullKey
              _mpullOauthToken
              _mpullStartIndex
              _mpullMaxResults
              _mpullFields
              (Just _mpullAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfileUserLinksListAPI)
                      r
                      u
