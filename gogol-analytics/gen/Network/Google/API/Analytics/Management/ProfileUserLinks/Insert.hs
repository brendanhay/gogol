{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.ProfileUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.insert@.
module Network.Google.API.Analytics.Management.ProfileUserLinks.Insert
    (
    -- * REST Resource
      ManagementProfileUserLinksInsertAPI

    -- * Creating a Request
    , managementProfileUserLinksInsert'
    , ManagementProfileUserLinksInsert'

    -- * Request Lenses
    , mpuliQuotaUser
    , mpuliPrettyPrint
    , mpuliWebPropertyId
    , mpuliUserIp
    , mpuliProfileId
    , mpuliAccountId
    , mpuliKey
    , mpuliOauthToken
    , mpuliFields
    , mpuliAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profileUserLinks.insert which the
-- 'ManagementProfileUserLinksInsert'' request conforms to.
type ManagementProfileUserLinksInsertAPI =
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
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Post '[JSON] EntityUserLink

-- | Adds a new user to the given view (profile).
--
-- /See:/ 'managementProfileUserLinksInsert'' smart constructor.
data ManagementProfileUserLinksInsert' = ManagementProfileUserLinksInsert'
    { _mpuliQuotaUser     :: !(Maybe Text)
    , _mpuliPrettyPrint   :: !Bool
    , _mpuliWebPropertyId :: !Text
    , _mpuliUserIp        :: !(Maybe Text)
    , _mpuliProfileId     :: !Text
    , _mpuliAccountId     :: !Text
    , _mpuliKey           :: !(Maybe Text)
    , _mpuliOauthToken    :: !(Maybe Text)
    , _mpuliFields        :: !(Maybe Text)
    , _mpuliAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpuliQuotaUser'
--
-- * 'mpuliPrettyPrint'
--
-- * 'mpuliWebPropertyId'
--
-- * 'mpuliUserIp'
--
-- * 'mpuliProfileId'
--
-- * 'mpuliAccountId'
--
-- * 'mpuliKey'
--
-- * 'mpuliOauthToken'
--
-- * 'mpuliFields'
--
-- * 'mpuliAlt'
managementProfileUserLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfileUserLinksInsert'
managementProfileUserLinksInsert' pMpuliWebPropertyId_ pMpuliProfileId_ pMpuliAccountId_ =
    ManagementProfileUserLinksInsert'
    { _mpuliQuotaUser = Nothing
    , _mpuliPrettyPrint = False
    , _mpuliWebPropertyId = pMpuliWebPropertyId_
    , _mpuliUserIp = Nothing
    , _mpuliProfileId = pMpuliProfileId_
    , _mpuliAccountId = pMpuliAccountId_
    , _mpuliKey = Nothing
    , _mpuliOauthToken = Nothing
    , _mpuliFields = Nothing
    , _mpuliAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpuliQuotaUser :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliQuotaUser
  = lens _mpuliQuotaUser
      (\ s a -> s{_mpuliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpuliPrettyPrint :: Lens' ManagementProfileUserLinksInsert' Bool
mpuliPrettyPrint
  = lens _mpuliPrettyPrint
      (\ s a -> s{_mpuliPrettyPrint = a})

-- | Web Property ID to create the user link for.
mpuliWebPropertyId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliWebPropertyId
  = lens _mpuliWebPropertyId
      (\ s a -> s{_mpuliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpuliUserIp :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliUserIp
  = lens _mpuliUserIp (\ s a -> s{_mpuliUserIp = a})

-- | View (Profile) ID to create the user link for.
mpuliProfileId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliProfileId
  = lens _mpuliProfileId
      (\ s a -> s{_mpuliProfileId = a})

-- | Account ID to create the user link for.
mpuliAccountId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliAccountId
  = lens _mpuliAccountId
      (\ s a -> s{_mpuliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpuliKey :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliKey = lens _mpuliKey (\ s a -> s{_mpuliKey = a})

-- | OAuth 2.0 token for the current user.
mpuliOauthToken :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliOauthToken
  = lens _mpuliOauthToken
      (\ s a -> s{_mpuliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuliFields :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliFields
  = lens _mpuliFields (\ s a -> s{_mpuliFields = a})

-- | Data format for the response.
mpuliAlt :: Lens' ManagementProfileUserLinksInsert' Alt
mpuliAlt = lens _mpuliAlt (\ s a -> s{_mpuliAlt = a})

instance GoogleRequest
         ManagementProfileUserLinksInsert' where
        type Rs ManagementProfileUserLinksInsert' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksInsert'{..}
          = go _mpuliQuotaUser (Just _mpuliPrettyPrint)
              _mpuliWebPropertyId
              _mpuliUserIp
              _mpuliProfileId
              _mpuliAccountId
              _mpuliKey
              _mpuliOauthToken
              _mpuliFields
              (Just _mpuliAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfileUserLinksInsertAPI)
                      r
                      u
