{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all profile filter links for a profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksList@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List
    (
    -- * REST Resource
      ManagementProFileFilterLinksListResource

    -- * Creating a Request
    , managementProFileFilterLinksList'
    , ManagementProFileFilterLinksList'

    -- * Request Lenses
    , mpffllQuotaUser
    , mpffllPrettyPrint
    , mpffllWebPropertyId
    , mpffllUserIP
    , mpffllProFileId
    , mpffllAccountId
    , mpffllKey
    , mpffllOAuthToken
    , mpffllStartIndex
    , mpffllMaxResults
    , mpffllFields
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksList@ which the
-- 'ManagementProFileFilterLinksList'' request conforms to.
type ManagementProFileFilterLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ProFileFilterLinks

-- | Lists all profile filter links for a profile.
--
-- /See:/ 'managementProFileFilterLinksList'' smart constructor.
data ManagementProFileFilterLinksList' = ManagementProFileFilterLinksList'
    { _mpffllQuotaUser :: !(Maybe Text)
    , _mpffllPrettyPrint :: !Bool
    , _mpffllWebPropertyId :: !Text
    , _mpffllUserIP :: !(Maybe Text)
    , _mpffllProFileId :: !Text
    , _mpffllAccountId :: !Text
    , _mpffllKey :: !(Maybe Key)
    , _mpffllOAuthToken :: !(Maybe OAuthToken)
    , _mpffllStartIndex :: !(Maybe Int32)
    , _mpffllMaxResults :: !(Maybe Int32)
    , _mpffllFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffllQuotaUser'
--
-- * 'mpffllPrettyPrint'
--
-- * 'mpffllWebPropertyId'
--
-- * 'mpffllUserIP'
--
-- * 'mpffllProFileId'
--
-- * 'mpffllAccountId'
--
-- * 'mpffllKey'
--
-- * 'mpffllOAuthToken'
--
-- * 'mpffllStartIndex'
--
-- * 'mpffllMaxResults'
--
-- * 'mpffllFields'
managementProFileFilterLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFileFilterLinksList'
managementProFileFilterLinksList' pMpffllWebPropertyId_ pMpffllProFileId_ pMpffllAccountId_ = 
    ManagementProFileFilterLinksList'
    { _mpffllQuotaUser = Nothing
    , _mpffllPrettyPrint = False
    , _mpffllWebPropertyId = pMpffllWebPropertyId_
    , _mpffllUserIP = Nothing
    , _mpffllProFileId = pMpffllProFileId_
    , _mpffllAccountId = pMpffllAccountId_
    , _mpffllKey = Nothing
    , _mpffllOAuthToken = Nothing
    , _mpffllStartIndex = Nothing
    , _mpffllMaxResults = Nothing
    , _mpffllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpffllQuotaUser :: Lens' ManagementProFileFilterLinksList' (Maybe Text)
mpffllQuotaUser
  = lens _mpffllQuotaUser
      (\ s a -> s{_mpffllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpffllPrettyPrint :: Lens' ManagementProFileFilterLinksList' Bool
mpffllPrettyPrint
  = lens _mpffllPrettyPrint
      (\ s a -> s{_mpffllPrettyPrint = a})

-- | Web property Id for profile filter links for. Can either be a specific
-- web property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mpffllWebPropertyId :: Lens' ManagementProFileFilterLinksList' Text
mpffllWebPropertyId
  = lens _mpffllWebPropertyId
      (\ s a -> s{_mpffllWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpffllUserIP :: Lens' ManagementProFileFilterLinksList' (Maybe Text)
mpffllUserIP
  = lens _mpffllUserIP (\ s a -> s{_mpffllUserIP = a})

-- | Profile ID to retrieve filter links for. Can either be a specific
-- profile ID or \'~all\', which refers to all the profiles that user has
-- access to.
mpffllProFileId :: Lens' ManagementProFileFilterLinksList' Text
mpffllProFileId
  = lens _mpffllProFileId
      (\ s a -> s{_mpffllProFileId = a})

-- | Account ID to retrieve profile filter links for.
mpffllAccountId :: Lens' ManagementProFileFilterLinksList' Text
mpffllAccountId
  = lens _mpffllAccountId
      (\ s a -> s{_mpffllAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpffllKey :: Lens' ManagementProFileFilterLinksList' (Maybe Key)
mpffllKey
  = lens _mpffllKey (\ s a -> s{_mpffllKey = a})

-- | OAuth 2.0 token for the current user.
mpffllOAuthToken :: Lens' ManagementProFileFilterLinksList' (Maybe OAuthToken)
mpffllOAuthToken
  = lens _mpffllOAuthToken
      (\ s a -> s{_mpffllOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mpffllStartIndex :: Lens' ManagementProFileFilterLinksList' (Maybe Int32)
mpffllStartIndex
  = lens _mpffllStartIndex
      (\ s a -> s{_mpffllStartIndex = a})

-- | The maximum number of profile filter links to include in this response.
mpffllMaxResults :: Lens' ManagementProFileFilterLinksList' (Maybe Int32)
mpffllMaxResults
  = lens _mpffllMaxResults
      (\ s a -> s{_mpffllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mpffllFields :: Lens' ManagementProFileFilterLinksList' (Maybe Text)
mpffllFields
  = lens _mpffllFields (\ s a -> s{_mpffllFields = a})

instance GoogleAuth ManagementProFileFilterLinksList'
         where
        authKey = mpffllKey . _Just
        authToken = mpffllOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksList' where
        type Rs ManagementProFileFilterLinksList' =
             ProFileFilterLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileFilterLinksList'{..}
          = go _mpffllAccountId _mpffllWebPropertyId
              _mpffllProFileId
              _mpffllStartIndex
              _mpffllMaxResults
              _mpffllQuotaUser
              (Just _mpffllPrettyPrint)
              _mpffllUserIP
              _mpffllFields
              _mpffllKey
              _mpffllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksListResource)
                      r
                      u
