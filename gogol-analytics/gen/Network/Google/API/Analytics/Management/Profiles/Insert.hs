{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Profiles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.insert@.
module Network.Google.API.Analytics.Management.Profiles.Insert
    (
    -- * REST Resource
      ManagementProfilesInsertAPI

    -- * Creating a Request
    , managementProfilesInsert'
    , ManagementProfilesInsert'

    -- * Request Lenses
    , mpiQuotaUser
    , mpiPrettyPrint
    , mpiWebPropertyId
    , mpiUserIp
    , mpiAccountId
    , mpiKey
    , mpiOauthToken
    , mpiFields
    , mpiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profiles.insert which the
-- 'ManagementProfilesInsert'' request conforms to.
type ManagementProfilesInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Profile

-- | Create a new view (profile).
--
-- /See:/ 'managementProfilesInsert'' smart constructor.
data ManagementProfilesInsert' = ManagementProfilesInsert'
    { _mpiQuotaUser     :: !(Maybe Text)
    , _mpiPrettyPrint   :: !Bool
    , _mpiWebPropertyId :: !Text
    , _mpiUserIp        :: !(Maybe Text)
    , _mpiAccountId     :: !Text
    , _mpiKey           :: !(Maybe Text)
    , _mpiOauthToken    :: !(Maybe Text)
    , _mpiFields        :: !(Maybe Text)
    , _mpiAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpiQuotaUser'
--
-- * 'mpiPrettyPrint'
--
-- * 'mpiWebPropertyId'
--
-- * 'mpiUserIp'
--
-- * 'mpiAccountId'
--
-- * 'mpiKey'
--
-- * 'mpiOauthToken'
--
-- * 'mpiFields'
--
-- * 'mpiAlt'
managementProfilesInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesInsert'
managementProfilesInsert' pMpiWebPropertyId_ pMpiAccountId_ =
    ManagementProfilesInsert'
    { _mpiQuotaUser = Nothing
    , _mpiPrettyPrint = False
    , _mpiWebPropertyId = pMpiWebPropertyId_
    , _mpiUserIp = Nothing
    , _mpiAccountId = pMpiAccountId_
    , _mpiKey = Nothing
    , _mpiOauthToken = Nothing
    , _mpiFields = Nothing
    , _mpiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpiQuotaUser :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiQuotaUser
  = lens _mpiQuotaUser (\ s a -> s{_mpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpiPrettyPrint :: Lens' ManagementProfilesInsert' Bool
mpiPrettyPrint
  = lens _mpiPrettyPrint
      (\ s a -> s{_mpiPrettyPrint = a})

-- | Web property ID to create the view (profile) for.
mpiWebPropertyId :: Lens' ManagementProfilesInsert' Text
mpiWebPropertyId
  = lens _mpiWebPropertyId
      (\ s a -> s{_mpiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpiUserIp :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiUserIp
  = lens _mpiUserIp (\ s a -> s{_mpiUserIp = a})

-- | Account ID to create the view (profile) for.
mpiAccountId :: Lens' ManagementProfilesInsert' Text
mpiAccountId
  = lens _mpiAccountId (\ s a -> s{_mpiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpiKey :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiKey = lens _mpiKey (\ s a -> s{_mpiKey = a})

-- | OAuth 2.0 token for the current user.
mpiOauthToken :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiOauthToken
  = lens _mpiOauthToken
      (\ s a -> s{_mpiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpiFields :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiFields
  = lens _mpiFields (\ s a -> s{_mpiFields = a})

-- | Data format for the response.
mpiAlt :: Lens' ManagementProfilesInsert' Alt
mpiAlt = lens _mpiAlt (\ s a -> s{_mpiAlt = a})

instance GoogleRequest ManagementProfilesInsert'
         where
        type Rs ManagementProfilesInsert' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesInsert'{..}
          = go _mpiQuotaUser (Just _mpiPrettyPrint)
              _mpiWebPropertyId
              _mpiUserIp
              _mpiAccountId
              _mpiKey
              _mpiOauthToken
              _mpiFields
              (Just _mpiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesInsertAPI)
                      r
                      u
