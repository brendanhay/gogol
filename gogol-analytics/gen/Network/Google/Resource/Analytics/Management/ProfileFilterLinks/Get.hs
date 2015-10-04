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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileFilterLinksGet@.
module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Get
    (
    -- * REST Resource
      ManagementProfileFilterLinksGetResource

    -- * Creating a Request
    , managementProfileFilterLinksGet'
    , ManagementProfileFilterLinksGet'

    -- * Request Lenses
    , mpflgQuotaUser
    , mpflgPrettyPrint
    , mpflgWebPropertyId
    , mpflgUserIP
    , mpflgProfileId
    , mpflgAccountId
    , mpflgKey
    , mpflgLinkId
    , mpflgOAuthToken
    , mpflgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksGet@ which the
-- 'ManagementProfileFilterLinksGet'' request conforms to.
type ManagementProfileFilterLinksGetResource =
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
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ProfileFilterLink

-- | Returns a single profile filter link.
--
-- /See:/ 'managementProfileFilterLinksGet'' smart constructor.
data ManagementProfileFilterLinksGet' = ManagementProfileFilterLinksGet'
    { _mpflgQuotaUser     :: !(Maybe Text)
    , _mpflgPrettyPrint   :: !Bool
    , _mpflgWebPropertyId :: !Text
    , _mpflgUserIP        :: !(Maybe Text)
    , _mpflgProfileId     :: !Text
    , _mpflgAccountId     :: !Text
    , _mpflgKey           :: !(Maybe Key)
    , _mpflgLinkId        :: !Text
    , _mpflgOAuthToken    :: !(Maybe OAuthToken)
    , _mpflgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mpflgUserIP'
--
-- * 'mpflgProfileId'
--
-- * 'mpflgAccountId'
--
-- * 'mpflgKey'
--
-- * 'mpflgLinkId'
--
-- * 'mpflgOAuthToken'
--
-- * 'mpflgFields'
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
    , _mpflgUserIP = Nothing
    , _mpflgProfileId = pMpflgProfileId_
    , _mpflgAccountId = pMpflgAccountId_
    , _mpflgKey = Nothing
    , _mpflgLinkId = pMpflgLinkId_
    , _mpflgOAuthToken = Nothing
    , _mpflgFields = Nothing
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
mpflgUserIP :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgUserIP
  = lens _mpflgUserIP (\ s a -> s{_mpflgUserIP = a})

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
mpflgKey :: Lens' ManagementProfileFilterLinksGet' (Maybe Key)
mpflgKey = lens _mpflgKey (\ s a -> s{_mpflgKey = a})

-- | ID of the profile filter link.
mpflgLinkId :: Lens' ManagementProfileFilterLinksGet' Text
mpflgLinkId
  = lens _mpflgLinkId (\ s a -> s{_mpflgLinkId = a})

-- | OAuth 2.0 token for the current user.
mpflgOAuthToken :: Lens' ManagementProfileFilterLinksGet' (Maybe OAuthToken)
mpflgOAuthToken
  = lens _mpflgOAuthToken
      (\ s a -> s{_mpflgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpflgFields :: Lens' ManagementProfileFilterLinksGet' (Maybe Text)
mpflgFields
  = lens _mpflgFields (\ s a -> s{_mpflgFields = a})

instance GoogleAuth ManagementProfileFilterLinksGet'
         where
        authKey = mpflgKey . _Just
        authToken = mpflgOAuthToken . _Just

instance GoogleRequest
         ManagementProfileFilterLinksGet' where
        type Rs ManagementProfileFilterLinksGet' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksGet'{..}
          = go _mpflgAccountId _mpflgWebPropertyId
              _mpflgProfileId
              _mpflgLinkId
              _mpflgQuotaUser
              (Just _mpflgPrettyPrint)
              _mpflgUserIP
              _mpflgFields
              _mpflgKey
              _mpflgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksGetResource)
                      r
                      u
