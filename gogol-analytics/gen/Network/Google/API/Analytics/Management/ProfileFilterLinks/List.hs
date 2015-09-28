{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.ProfileFilterLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all profile filter links for a profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.list@.
module Network.Google.API.Analytics.Management.ProfileFilterLinks.List
    (
    -- * REST Resource
      ManagementProfileFilterLinksListAPI

    -- * Creating a Request
    , managementProfileFilterLinksList'
    , ManagementProfileFilterLinksList'

    -- * Request Lenses
    , mpfllQuotaUser
    , mpfllPrettyPrint
    , mpfllWebPropertyId
    , mpfllUserIp
    , mpfllProfileId
    , mpfllAccountId
    , mpfllKey
    , mpfllOauthToken
    , mpfllStartIndex
    , mpfllMaxResults
    , mpfllFields
    , mpfllAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profileFilterLinks.list which the
-- 'ManagementProfileFilterLinksList'' request conforms to.
type ManagementProfileFilterLinksListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "start-index" Nat :>
                                 QueryParam "max-results" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] ProfileFilterLinks

-- | Lists all profile filter links for a profile.
--
-- /See:/ 'managementProfileFilterLinksList'' smart constructor.
data ManagementProfileFilterLinksList' = ManagementProfileFilterLinksList'
    { _mpfllQuotaUser     :: !(Maybe Text)
    , _mpfllPrettyPrint   :: !Bool
    , _mpfllWebPropertyId :: !Text
    , _mpfllUserIp        :: !(Maybe Text)
    , _mpfllProfileId     :: !Text
    , _mpfllAccountId     :: !Text
    , _mpfllKey           :: !(Maybe Text)
    , _mpfllOauthToken    :: !(Maybe Text)
    , _mpfllStartIndex    :: !(Maybe Nat)
    , _mpfllMaxResults    :: !(Maybe Int32)
    , _mpfllFields        :: !(Maybe Text)
    , _mpfllAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfllQuotaUser'
--
-- * 'mpfllPrettyPrint'
--
-- * 'mpfllWebPropertyId'
--
-- * 'mpfllUserIp'
--
-- * 'mpfllProfileId'
--
-- * 'mpfllAccountId'
--
-- * 'mpfllKey'
--
-- * 'mpfllOauthToken'
--
-- * 'mpfllStartIndex'
--
-- * 'mpfllMaxResults'
--
-- * 'mpfllFields'
--
-- * 'mpfllAlt'
managementProfileFilterLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfileFilterLinksList'
managementProfileFilterLinksList' pMpfllWebPropertyId_ pMpfllProfileId_ pMpfllAccountId_ =
    ManagementProfileFilterLinksList'
    { _mpfllQuotaUser = Nothing
    , _mpfllPrettyPrint = False
    , _mpfllWebPropertyId = pMpfllWebPropertyId_
    , _mpfllUserIp = Nothing
    , _mpfllProfileId = pMpfllProfileId_
    , _mpfllAccountId = pMpfllAccountId_
    , _mpfllKey = Nothing
    , _mpfllOauthToken = Nothing
    , _mpfllStartIndex = Nothing
    , _mpfllMaxResults = Nothing
    , _mpfllFields = Nothing
    , _mpfllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfllQuotaUser :: Lens' ManagementProfileFilterLinksList' (Maybe Text)
mpfllQuotaUser
  = lens _mpfllQuotaUser
      (\ s a -> s{_mpfllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfllPrettyPrint :: Lens' ManagementProfileFilterLinksList' Bool
mpfllPrettyPrint
  = lens _mpfllPrettyPrint
      (\ s a -> s{_mpfllPrettyPrint = a})

-- | Web property Id for profile filter links for. Can either be a specific
-- web property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mpfllWebPropertyId :: Lens' ManagementProfileFilterLinksList' Text
mpfllWebPropertyId
  = lens _mpfllWebPropertyId
      (\ s a -> s{_mpfllWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfllUserIp :: Lens' ManagementProfileFilterLinksList' (Maybe Text)
mpfllUserIp
  = lens _mpfllUserIp (\ s a -> s{_mpfllUserIp = a})

-- | Profile ID to retrieve filter links for. Can either be a specific
-- profile ID or \'~all\', which refers to all the profiles that user has
-- access to.
mpfllProfileId :: Lens' ManagementProfileFilterLinksList' Text
mpfllProfileId
  = lens _mpfllProfileId
      (\ s a -> s{_mpfllProfileId = a})

-- | Account ID to retrieve profile filter links for.
mpfllAccountId :: Lens' ManagementProfileFilterLinksList' Text
mpfllAccountId
  = lens _mpfllAccountId
      (\ s a -> s{_mpfllAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfllKey :: Lens' ManagementProfileFilterLinksList' (Maybe Text)
mpfllKey = lens _mpfllKey (\ s a -> s{_mpfllKey = a})

-- | OAuth 2.0 token for the current user.
mpfllOauthToken :: Lens' ManagementProfileFilterLinksList' (Maybe Text)
mpfllOauthToken
  = lens _mpfllOauthToken
      (\ s a -> s{_mpfllOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mpfllStartIndex :: Lens' ManagementProfileFilterLinksList' (Maybe Natural)
mpfllStartIndex
  = lens _mpfllStartIndex
      (\ s a -> s{_mpfllStartIndex = a})
      . mapping _Nat

-- | The maximum number of profile filter links to include in this response.
mpfllMaxResults :: Lens' ManagementProfileFilterLinksList' (Maybe Int32)
mpfllMaxResults
  = lens _mpfllMaxResults
      (\ s a -> s{_mpfllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mpfllFields :: Lens' ManagementProfileFilterLinksList' (Maybe Text)
mpfllFields
  = lens _mpfllFields (\ s a -> s{_mpfllFields = a})

-- | Data format for the response.
mpfllAlt :: Lens' ManagementProfileFilterLinksList' Alt
mpfllAlt = lens _mpfllAlt (\ s a -> s{_mpfllAlt = a})

instance GoogleRequest
         ManagementProfileFilterLinksList' where
        type Rs ManagementProfileFilterLinksList' =
             ProfileFilterLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksList'{..}
          = go _mpfllQuotaUser (Just _mpfllPrettyPrint)
              _mpfllWebPropertyId
              _mpfllUserIp
              _mpfllProfileId
              _mpfllAccountId
              _mpfllKey
              _mpfllOauthToken
              _mpfllStartIndex
              _mpfllMaxResults
              _mpfllFields
              (Just _mpfllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfileFilterLinksListAPI)
                      r
                      u
