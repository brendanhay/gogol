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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksGet@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get
    (
    -- * REST Resource
      ManagementProFileFilterLinksGetResource

    -- * Creating a Request
    , managementProFileFilterLinksGet'
    , ManagementProFileFilterLinksGet'

    -- * Request Lenses
    , mpfflgQuotaUser
    , mpfflgPrettyPrint
    , mpfflgWebPropertyId
    , mpfflgUserIP
    , mpfflgProFileId
    , mpfflgAccountId
    , mpfflgKey
    , mpfflgLinkId
    , mpfflgOAuthToken
    , mpfflgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksGet@ which the
-- 'ManagementProFileFilterLinksGet'' request conforms to.
type ManagementProFileFilterLinksGetResource =
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
                                     Get '[JSON] ProFileFilterLink

-- | Returns a single profile filter link.
--
-- /See:/ 'managementProFileFilterLinksGet'' smart constructor.
data ManagementProFileFilterLinksGet' = ManagementProFileFilterLinksGet'
    { _mpfflgQuotaUser     :: !(Maybe Text)
    , _mpfflgPrettyPrint   :: !Bool
    , _mpfflgWebPropertyId :: !Text
    , _mpfflgUserIP        :: !(Maybe Text)
    , _mpfflgProFileId     :: !Text
    , _mpfflgAccountId     :: !Text
    , _mpfflgKey           :: !(Maybe Key)
    , _mpfflgLinkId        :: !Text
    , _mpfflgOAuthToken    :: !(Maybe OAuthToken)
    , _mpfflgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfflgQuotaUser'
--
-- * 'mpfflgPrettyPrint'
--
-- * 'mpfflgWebPropertyId'
--
-- * 'mpfflgUserIP'
--
-- * 'mpfflgProFileId'
--
-- * 'mpfflgAccountId'
--
-- * 'mpfflgKey'
--
-- * 'mpfflgLinkId'
--
-- * 'mpfflgOAuthToken'
--
-- * 'mpfflgFields'
managementProFileFilterLinksGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileFilterLinksGet'
managementProFileFilterLinksGet' pMpfflgWebPropertyId_ pMpfflgProFileId_ pMpfflgAccountId_ pMpfflgLinkId_ =
    ManagementProFileFilterLinksGet'
    { _mpfflgQuotaUser = Nothing
    , _mpfflgPrettyPrint = False
    , _mpfflgWebPropertyId = pMpfflgWebPropertyId_
    , _mpfflgUserIP = Nothing
    , _mpfflgProFileId = pMpfflgProFileId_
    , _mpfflgAccountId = pMpfflgAccountId_
    , _mpfflgKey = Nothing
    , _mpfflgLinkId = pMpfflgLinkId_
    , _mpfflgOAuthToken = Nothing
    , _mpfflgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfflgQuotaUser :: Lens' ManagementProFileFilterLinksGet' (Maybe Text)
mpfflgQuotaUser
  = lens _mpfflgQuotaUser
      (\ s a -> s{_mpfflgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfflgPrettyPrint :: Lens' ManagementProFileFilterLinksGet' Bool
mpfflgPrettyPrint
  = lens _mpfflgPrettyPrint
      (\ s a -> s{_mpfflgPrettyPrint = a})

-- | Web property Id to retrieve profile filter link for.
mpfflgWebPropertyId :: Lens' ManagementProFileFilterLinksGet' Text
mpfflgWebPropertyId
  = lens _mpfflgWebPropertyId
      (\ s a -> s{_mpfflgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfflgUserIP :: Lens' ManagementProFileFilterLinksGet' (Maybe Text)
mpfflgUserIP
  = lens _mpfflgUserIP (\ s a -> s{_mpfflgUserIP = a})

-- | Profile ID to retrieve filter link for.
mpfflgProFileId :: Lens' ManagementProFileFilterLinksGet' Text
mpfflgProFileId
  = lens _mpfflgProFileId
      (\ s a -> s{_mpfflgProFileId = a})

-- | Account ID to retrieve profile filter link for.
mpfflgAccountId :: Lens' ManagementProFileFilterLinksGet' Text
mpfflgAccountId
  = lens _mpfflgAccountId
      (\ s a -> s{_mpfflgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfflgKey :: Lens' ManagementProFileFilterLinksGet' (Maybe Key)
mpfflgKey
  = lens _mpfflgKey (\ s a -> s{_mpfflgKey = a})

-- | ID of the profile filter link.
mpfflgLinkId :: Lens' ManagementProFileFilterLinksGet' Text
mpfflgLinkId
  = lens _mpfflgLinkId (\ s a -> s{_mpfflgLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfflgOAuthToken :: Lens' ManagementProFileFilterLinksGet' (Maybe OAuthToken)
mpfflgOAuthToken
  = lens _mpfflgOAuthToken
      (\ s a -> s{_mpfflgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfflgFields :: Lens' ManagementProFileFilterLinksGet' (Maybe Text)
mpfflgFields
  = lens _mpfflgFields (\ s a -> s{_mpfflgFields = a})

instance GoogleAuth ManagementProFileFilterLinksGet'
         where
        authKey = mpfflgKey . _Just
        authToken = mpfflgOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksGet' where
        type Rs ManagementProFileFilterLinksGet' =
             ProFileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileFilterLinksGet'{..}
          = go _mpfflgAccountId _mpfflgWebPropertyId
              _mpfflgProFileId
              _mpfflgLinkId
              _mpfflgQuotaUser
              (Just _mpfflgPrettyPrint)
              _mpfflgUserIP
              _mpfflgFields
              _mpfflgKey
              _mpfflgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksGetResource)
                      r
                      u
