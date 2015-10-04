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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists profile-user links for a given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileUserLinksList@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.List
    (
    -- * REST Resource
      ManagementProFileUserLinksListResource

    -- * Creating a Request
    , managementProFileUserLinksList'
    , ManagementProFileUserLinksList'

    -- * Request Lenses
    , mpfullQuotaUser
    , mpfullPrettyPrint
    , mpfullWebPropertyId
    , mpfullUserIP
    , mpfullProFileId
    , mpfullAccountId
    , mpfullKey
    , mpfullOAuthToken
    , mpfullStartIndex
    , mpfullMaxResults
    , mpfullFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileUserLinksList@ which the
-- 'ManagementProFileUserLinksList'' request conforms to.
type ManagementProFileUserLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] EntityUserLinks

-- | Lists profile-user links for a given view (profile).
--
-- /See:/ 'managementProFileUserLinksList'' smart constructor.
data ManagementProFileUserLinksList' = ManagementProFileUserLinksList'
    { _mpfullQuotaUser     :: !(Maybe Text)
    , _mpfullPrettyPrint   :: !Bool
    , _mpfullWebPropertyId :: !Text
    , _mpfullUserIP        :: !(Maybe Text)
    , _mpfullProFileId     :: !Text
    , _mpfullAccountId     :: !Text
    , _mpfullKey           :: !(Maybe Key)
    , _mpfullOAuthToken    :: !(Maybe OAuthToken)
    , _mpfullStartIndex    :: !(Maybe Int32)
    , _mpfullMaxResults    :: !(Maybe Int32)
    , _mpfullFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfullQuotaUser'
--
-- * 'mpfullPrettyPrint'
--
-- * 'mpfullWebPropertyId'
--
-- * 'mpfullUserIP'
--
-- * 'mpfullProFileId'
--
-- * 'mpfullAccountId'
--
-- * 'mpfullKey'
--
-- * 'mpfullOAuthToken'
--
-- * 'mpfullStartIndex'
--
-- * 'mpfullMaxResults'
--
-- * 'mpfullFields'
managementProFileUserLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFileUserLinksList'
managementProFileUserLinksList' pMpfullWebPropertyId_ pMpfullProFileId_ pMpfullAccountId_ =
    ManagementProFileUserLinksList'
    { _mpfullQuotaUser = Nothing
    , _mpfullPrettyPrint = False
    , _mpfullWebPropertyId = pMpfullWebPropertyId_
    , _mpfullUserIP = Nothing
    , _mpfullProFileId = pMpfullProFileId_
    , _mpfullAccountId = pMpfullAccountId_
    , _mpfullKey = Nothing
    , _mpfullOAuthToken = Nothing
    , _mpfullStartIndex = Nothing
    , _mpfullMaxResults = Nothing
    , _mpfullFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfullQuotaUser :: Lens' ManagementProFileUserLinksList' (Maybe Text)
mpfullQuotaUser
  = lens _mpfullQuotaUser
      (\ s a -> s{_mpfullQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfullPrettyPrint :: Lens' ManagementProFileUserLinksList' Bool
mpfullPrettyPrint
  = lens _mpfullPrettyPrint
      (\ s a -> s{_mpfullPrettyPrint = a})

-- | Web Property ID which the given view (profile) belongs to. Can either be
-- a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mpfullWebPropertyId :: Lens' ManagementProFileUserLinksList' Text
mpfullWebPropertyId
  = lens _mpfullWebPropertyId
      (\ s a -> s{_mpfullWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfullUserIP :: Lens' ManagementProFileUserLinksList' (Maybe Text)
mpfullUserIP
  = lens _mpfullUserIP (\ s a -> s{_mpfullUserIP = a})

-- | View (Profile) ID to retrieve the profile-user links for. Can either be
-- a specific profile ID or \'~all\', which refers to all the profiles that
-- user has access to.
mpfullProFileId :: Lens' ManagementProFileUserLinksList' Text
mpfullProFileId
  = lens _mpfullProFileId
      (\ s a -> s{_mpfullProFileId = a})

-- | Account ID which the given view (profile) belongs to.
mpfullAccountId :: Lens' ManagementProFileUserLinksList' Text
mpfullAccountId
  = lens _mpfullAccountId
      (\ s a -> s{_mpfullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfullKey :: Lens' ManagementProFileUserLinksList' (Maybe Key)
mpfullKey
  = lens _mpfullKey (\ s a -> s{_mpfullKey = a})

-- | OAuth 2.0 token for the current user.
mpfullOAuthToken :: Lens' ManagementProFileUserLinksList' (Maybe OAuthToken)
mpfullOAuthToken
  = lens _mpfullOAuthToken
      (\ s a -> s{_mpfullOAuthToken = a})

-- | An index of the first profile-user link to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
mpfullStartIndex :: Lens' ManagementProFileUserLinksList' (Maybe Int32)
mpfullStartIndex
  = lens _mpfullStartIndex
      (\ s a -> s{_mpfullStartIndex = a})

-- | The maximum number of profile-user links to include in this response.
mpfullMaxResults :: Lens' ManagementProFileUserLinksList' (Maybe Int32)
mpfullMaxResults
  = lens _mpfullMaxResults
      (\ s a -> s{_mpfullMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mpfullFields :: Lens' ManagementProFileUserLinksList' (Maybe Text)
mpfullFields
  = lens _mpfullFields (\ s a -> s{_mpfullFields = a})

instance GoogleAuth ManagementProFileUserLinksList'
         where
        authKey = mpfullKey . _Just
        authToken = mpfullOAuthToken . _Just

instance GoogleRequest
         ManagementProFileUserLinksList' where
        type Rs ManagementProFileUserLinksList' =
             EntityUserLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileUserLinksList'{..}
          = go _mpfullAccountId _mpfullWebPropertyId
              _mpfullProFileId
              _mpfullStartIndex
              _mpfullMaxResults
              _mpfullQuotaUser
              (Just _mpfullPrettyPrint)
              _mpfullUserIP
              _mpfullFields
              _mpfullKey
              _mpfullOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileUserLinksListResource)
                      r
                      u
