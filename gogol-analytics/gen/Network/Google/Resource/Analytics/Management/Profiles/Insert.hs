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
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesInsert@.
module Network.Google.Resource.Analytics.Management.Profiles.Insert
    (
    -- * REST Resource
      ManagementProfilesInsertResource

    -- * Creating a Request
    , managementProfilesInsert'
    , ManagementProfilesInsert'

    -- * Request Lenses
    , mpiQuotaUser
    , mpiPrettyPrint
    , mpiWebPropertyId
    , mpiUserIP
    , mpiProfile
    , mpiAccountId
    , mpiKey
    , mpiOAuthToken
    , mpiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesInsert@ which the
-- 'ManagementProfilesInsert'' request conforms to.
type ManagementProfilesInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Profile :> Post '[JSON] Profile

-- | Create a new view (profile).
--
-- /See:/ 'managementProfilesInsert'' smart constructor.
data ManagementProfilesInsert' = ManagementProfilesInsert'
    { _mpiQuotaUser     :: !(Maybe Text)
    , _mpiPrettyPrint   :: !Bool
    , _mpiWebPropertyId :: !Text
    , _mpiUserIP        :: !(Maybe Text)
    , _mpiProfile       :: !Profile
    , _mpiAccountId     :: !Text
    , _mpiKey           :: !(Maybe Key)
    , _mpiOAuthToken    :: !(Maybe OAuthToken)
    , _mpiFields        :: !(Maybe Text)
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
-- * 'mpiUserIP'
--
-- * 'mpiProfile'
--
-- * 'mpiAccountId'
--
-- * 'mpiKey'
--
-- * 'mpiOAuthToken'
--
-- * 'mpiFields'
managementProfilesInsert'
    :: Text -- ^ 'webPropertyId'
    -> Profile -- ^ 'Profile'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesInsert'
managementProfilesInsert' pMpiWebPropertyId_ pMpiProfile_ pMpiAccountId_ =
    ManagementProfilesInsert'
    { _mpiQuotaUser = Nothing
    , _mpiPrettyPrint = False
    , _mpiWebPropertyId = pMpiWebPropertyId_
    , _mpiUserIP = Nothing
    , _mpiProfile = pMpiProfile_
    , _mpiAccountId = pMpiAccountId_
    , _mpiKey = Nothing
    , _mpiOAuthToken = Nothing
    , _mpiFields = Nothing
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
mpiUserIP :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiUserIP
  = lens _mpiUserIP (\ s a -> s{_mpiUserIP = a})

-- | Multipart request metadata.
mpiProfile :: Lens' ManagementProfilesInsert' Profile
mpiProfile
  = lens _mpiProfile (\ s a -> s{_mpiProfile = a})

-- | Account ID to create the view (profile) for.
mpiAccountId :: Lens' ManagementProfilesInsert' Text
mpiAccountId
  = lens _mpiAccountId (\ s a -> s{_mpiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpiKey :: Lens' ManagementProfilesInsert' (Maybe Key)
mpiKey = lens _mpiKey (\ s a -> s{_mpiKey = a})

-- | OAuth 2.0 token for the current user.
mpiOAuthToken :: Lens' ManagementProfilesInsert' (Maybe OAuthToken)
mpiOAuthToken
  = lens _mpiOAuthToken
      (\ s a -> s{_mpiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpiFields :: Lens' ManagementProfilesInsert' (Maybe Text)
mpiFields
  = lens _mpiFields (\ s a -> s{_mpiFields = a})

instance GoogleAuth ManagementProfilesInsert' where
        authKey = mpiKey . _Just
        authToken = mpiOAuthToken . _Just

instance GoogleRequest ManagementProfilesInsert'
         where
        type Rs ManagementProfilesInsert' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesInsert'{..}
          = go _mpiAccountId _mpiWebPropertyId _mpiQuotaUser
              (Just _mpiPrettyPrint)
              _mpiUserIP
              _mpiFields
              _mpiKey
              _mpiOAuthToken
              (Just AltJSON)
              _mpiProfile
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesInsertResource)
                      r
                      u
