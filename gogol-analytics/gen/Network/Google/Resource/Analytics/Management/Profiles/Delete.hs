{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesDelete@.
module Network.Google.Resource.Analytics.Management.Profiles.Delete
    (
    -- * REST Resource
      ManagementProfilesDeleteResource

    -- * Creating a Request
    , managementProfilesDelete'
    , ManagementProfilesDelete'

    -- * Request Lenses
    , mpdQuotaUser
    , mpdPrettyPrint
    , mpdWebPropertyId
    , mpdUserIP
    , mpdProfileId
    , mpdAccountId
    , mpdKey
    , mpdOAuthToken
    , mpdFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesDelete@ which the
-- 'ManagementProfilesDelete'' request conforms to.
type ManagementProfilesDeleteResource =
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
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a view (profile).
--
-- /See:/ 'managementProfilesDelete'' smart constructor.
data ManagementProfilesDelete' = ManagementProfilesDelete'
    { _mpdQuotaUser     :: !(Maybe Text)
    , _mpdPrettyPrint   :: !Bool
    , _mpdWebPropertyId :: !Text
    , _mpdUserIP        :: !(Maybe Text)
    , _mpdProfileId     :: !Text
    , _mpdAccountId     :: !Text
    , _mpdKey           :: !(Maybe Key)
    , _mpdOAuthToken    :: !(Maybe OAuthToken)
    , _mpdFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mpdUserIP'
--
-- * 'mpdProfileId'
--
-- * 'mpdAccountId'
--
-- * 'mpdKey'
--
-- * 'mpdOAuthToken'
--
-- * 'mpdFields'
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
    , _mpdUserIP = Nothing
    , _mpdProfileId = pMpdProfileId_
    , _mpdAccountId = pMpdAccountId_
    , _mpdKey = Nothing
    , _mpdOAuthToken = Nothing
    , _mpdFields = Nothing
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
mpdUserIP :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdUserIP
  = lens _mpdUserIP (\ s a -> s{_mpdUserIP = a})

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
mpdKey :: Lens' ManagementProfilesDelete' (Maybe Key)
mpdKey = lens _mpdKey (\ s a -> s{_mpdKey = a})

-- | OAuth 2.0 token for the current user.
mpdOAuthToken :: Lens' ManagementProfilesDelete' (Maybe OAuthToken)
mpdOAuthToken
  = lens _mpdOAuthToken
      (\ s a -> s{_mpdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpdFields :: Lens' ManagementProfilesDelete' (Maybe Text)
mpdFields
  = lens _mpdFields (\ s a -> s{_mpdFields = a})

instance GoogleAuth ManagementProfilesDelete' where
        authKey = mpdKey . _Just
        authToken = mpdOAuthToken . _Just

instance GoogleRequest ManagementProfilesDelete'
         where
        type Rs ManagementProfilesDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesDelete'{..}
          = go _mpdAccountId _mpdWebPropertyId _mpdProfileId
              _mpdQuotaUser
              (Just _mpdPrettyPrint)
              _mpdUserIP
              _mpdFields
              _mpdKey
              _mpdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesDeleteResource)
                      r
                      u
