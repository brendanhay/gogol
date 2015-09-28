{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Profiles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.delete@.
module Network.Google.API.Analytics.Management.Profiles.Delete
    (
    -- * REST Resource
      ManagementProfilesDeleteAPI

    -- * Creating a Request
    , managementProfilesDelete'
    , ManagementProfilesDelete'

    -- * Request Lenses
    , mpdQuotaUser
    , mpdPrettyPrint
    , mpdWebPropertyId
    , mpdUserIp
    , mpdProfileId
    , mpdAccountId
    , mpdKey
    , mpdOauthToken
    , mpdFields
    , mpdAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profiles.delete which the
-- 'ManagementProfilesDelete'' request conforms to.
type ManagementProfilesDeleteAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a view (profile).
--
-- /See:/ 'managementProfilesDelete'' smart constructor.
data ManagementProfilesDelete' = ManagementProfilesDelete'
    { _mpdQuotaUser     :: !(Maybe Text)
    , _mpdPrettyPrint   :: !Bool
    , _mpdWebPropertyId :: !Text
    , _mpdUserIp        :: !(Maybe Text)
    , _mpdProfileId     :: !Text
    , _mpdAccountId     :: !Text
    , _mpdKey           :: !(Maybe Text)
    , _mpdOauthToken    :: !(Maybe Text)
    , _mpdFields        :: !(Maybe Text)
    , _mpdAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpdQuotaUser'
--
-- * 'mpdPrettyPrint'
--
-- * 'mpdWebPropertyId'
--
-- * 'mpdUserIp'
--
-- * 'mpdProfileId'
--
-- * 'mpdAccountId'
--
-- * 'mpdKey'
--
-- * 'mpdOauthToken'
--
-- * 'mpdFields'
--
-- * 'mpdAlt'
managementProfilesDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesDelete'
managementProfilesDelete' pMpdWebPropertyId_ pMpdProfileId_ pMpdAccountId_ =
    ManagementProfilesDelete'
    { _mpdQuotaUser = Nothing
    , _mpdPrettyPrint = False
    , _mpdWebPropertyId = pMpdWebPropertyId_
    , _mpdUserIp = Nothing
    , _mpdProfileId = pMpdProfileId_
    , _mpdAccountId = pMpdAccountId_
    , _mpdKey = Nothing
    , _mpdOauthToken = Nothing
    , _mpdFields = Nothing
    , _mpdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpdQuotaUser :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdQuotaUser
  = lens _mpdQuotaUser (\ s a -> s{_mpdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpdPrettyPrint :: Lens' ManagementProfilesDelete' Bool
mpdPrettyPrint
  = lens _mpdPrettyPrint
      (\ s a -> s{_mpdPrettyPrint = a})

-- | Web property ID to delete the view (profile) for.
mpdWebPropertyId :: Lens' ManagementProfilesDelete' Text
mpdWebPropertyId
  = lens _mpdWebPropertyId
      (\ s a -> s{_mpdWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpdUserIp :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdUserIp
  = lens _mpdUserIp (\ s a -> s{_mpdUserIp = a})

-- | ID of the view (profile) to be deleted.
mpdProfileId :: Lens' ManagementProfilesDelete' Text
mpdProfileId
  = lens _mpdProfileId (\ s a -> s{_mpdProfileId = a})

-- | Account ID to delete the view (profile) for.
mpdAccountId :: Lens' ManagementProfilesDelete' Text
mpdAccountId
  = lens _mpdAccountId (\ s a -> s{_mpdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpdKey :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdKey = lens _mpdKey (\ s a -> s{_mpdKey = a})

-- | OAuth 2.0 token for the current user.
mpdOauthToken :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdOauthToken
  = lens _mpdOauthToken
      (\ s a -> s{_mpdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpdFields :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdFields
  = lens _mpdFields (\ s a -> s{_mpdFields = a})

-- | Data format for the response.
mpdAlt :: Lens' ManagementProfilesDelete' Alt
mpdAlt = lens _mpdAlt (\ s a -> s{_mpdAlt = a})

instance GoogleRequest ManagementProfilesDelete'
         where
        type Rs ManagementProfilesDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesDelete'{..}
          = go _mpdQuotaUser (Just _mpdPrettyPrint)
              _mpdWebPropertyId
              _mpdUserIp
              _mpdProfileId
              _mpdAccountId
              _mpdKey
              _mpdOauthToken
              _mpdFields
              (Just _mpdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesDeleteAPI)
                      r
                      u
