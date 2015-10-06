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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists webProperty-user links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyUserLinksList@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.List
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksListResource

    -- * Creating a Request
    , managementWebPropertyUserLinksList'
    , ManagementWebPropertyUserLinksList'

    -- * Request Lenses
    , mwpullQuotaUser
    , mwpullPrettyPrint
    , mwpullWebPropertyId
    , mwpullUserIP
    , mwpullAccountId
    , mwpullKey
    , mwpullOAuthToken
    , mwpullStartIndex
    , mwpullMaxResults
    , mwpullFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyUserLinksList@ which the
-- 'ManagementWebPropertyUserLinksList'' request conforms to.
type ManagementWebPropertyUserLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] EntityUserLinks

-- | Lists webProperty-user links for a given web property.
--
-- /See:/ 'managementWebPropertyUserLinksList'' smart constructor.
data ManagementWebPropertyUserLinksList' = ManagementWebPropertyUserLinksList'
    { _mwpullQuotaUser     :: !(Maybe Text)
    , _mwpullPrettyPrint   :: !Bool
    , _mwpullWebPropertyId :: !Text
    , _mwpullUserIP        :: !(Maybe Text)
    , _mwpullAccountId     :: !Text
    , _mwpullKey           :: !(Maybe AuthKey)
    , _mwpullOAuthToken    :: !(Maybe OAuthToken)
    , _mwpullStartIndex    :: !(Maybe Int32)
    , _mwpullMaxResults    :: !(Maybe Int32)
    , _mwpullFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpullQuotaUser'
--
-- * 'mwpullPrettyPrint'
--
-- * 'mwpullWebPropertyId'
--
-- * 'mwpullUserIP'
--
-- * 'mwpullAccountId'
--
-- * 'mwpullKey'
--
-- * 'mwpullOAuthToken'
--
-- * 'mwpullStartIndex'
--
-- * 'mwpullMaxResults'
--
-- * 'mwpullFields'
managementWebPropertyUserLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyUserLinksList'
managementWebPropertyUserLinksList' pMwpullWebPropertyId_ pMwpullAccountId_ =
    ManagementWebPropertyUserLinksList'
    { _mwpullQuotaUser = Nothing
    , _mwpullPrettyPrint = False
    , _mwpullWebPropertyId = pMwpullWebPropertyId_
    , _mwpullUserIP = Nothing
    , _mwpullAccountId = pMwpullAccountId_
    , _mwpullKey = Nothing
    , _mwpullOAuthToken = Nothing
    , _mwpullStartIndex = Nothing
    , _mwpullMaxResults = Nothing
    , _mwpullFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpullQuotaUser :: Lens' ManagementWebPropertyUserLinksList' (Maybe Text)
mwpullQuotaUser
  = lens _mwpullQuotaUser
      (\ s a -> s{_mwpullQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpullPrettyPrint :: Lens' ManagementWebPropertyUserLinksList' Bool
mwpullPrettyPrint
  = lens _mwpullPrettyPrint
      (\ s a -> s{_mwpullPrettyPrint = a})

-- | Web Property ID for the webProperty-user links to retrieve. Can either
-- be a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mwpullWebPropertyId :: Lens' ManagementWebPropertyUserLinksList' Text
mwpullWebPropertyId
  = lens _mwpullWebPropertyId
      (\ s a -> s{_mwpullWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpullUserIP :: Lens' ManagementWebPropertyUserLinksList' (Maybe Text)
mwpullUserIP
  = lens _mwpullUserIP (\ s a -> s{_mwpullUserIP = a})

-- | Account ID which the given web property belongs to.
mwpullAccountId :: Lens' ManagementWebPropertyUserLinksList' Text
mwpullAccountId
  = lens _mwpullAccountId
      (\ s a -> s{_mwpullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpullKey :: Lens' ManagementWebPropertyUserLinksList' (Maybe AuthKey)
mwpullKey
  = lens _mwpullKey (\ s a -> s{_mwpullKey = a})

-- | OAuth 2.0 token for the current user.
mwpullOAuthToken :: Lens' ManagementWebPropertyUserLinksList' (Maybe OAuthToken)
mwpullOAuthToken
  = lens _mwpullOAuthToken
      (\ s a -> s{_mwpullOAuthToken = a})

-- | An index of the first webProperty-user link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwpullStartIndex :: Lens' ManagementWebPropertyUserLinksList' (Maybe Int32)
mwpullStartIndex
  = lens _mwpullStartIndex
      (\ s a -> s{_mwpullStartIndex = a})

-- | The maximum number of webProperty-user Links to include in this
-- response.
mwpullMaxResults :: Lens' ManagementWebPropertyUserLinksList' (Maybe Int32)
mwpullMaxResults
  = lens _mwpullMaxResults
      (\ s a -> s{_mwpullMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwpullFields :: Lens' ManagementWebPropertyUserLinksList' (Maybe Text)
mwpullFields
  = lens _mwpullFields (\ s a -> s{_mwpullFields = a})

instance GoogleAuth
         ManagementWebPropertyUserLinksList' where
        authKey = mwpullKey . _Just
        authToken = mwpullOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyUserLinksList' where
        type Rs ManagementWebPropertyUserLinksList' =
             EntityUserLinks
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyUserLinksList'{..}
          = go _mwpullAccountId _mwpullWebPropertyId
              _mwpullStartIndex
              _mwpullMaxResults
              _mwpullQuotaUser
              (Just _mwpullPrettyPrint)
              _mwpullUserIP
              _mwpullFields
              _mwpullKey
              _mwpullOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksListResource)
                      rq
