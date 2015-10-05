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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists webProperty-AdWords links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksList@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksListResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksList'
    , ManagementWebPropertyAdWordsLinksList'

    -- * Request Lenses
    , mwpawllQuotaUser
    , mwpawllPrettyPrint
    , mwpawllWebPropertyId
    , mwpawllUserIP
    , mwpawllAccountId
    , mwpawllKey
    , mwpawllOAuthToken
    , mwpawllStartIndex
    , mwpawllMaxResults
    , mwpawllFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksList@ which the
-- 'ManagementWebPropertyAdWordsLinksList'' request conforms to.
type ManagementWebPropertyAdWordsLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] EntityAdWordsLinks

-- | Lists webProperty-AdWords links for a given web property.
--
-- /See:/ 'managementWebPropertyAdWordsLinksList'' smart constructor.
data ManagementWebPropertyAdWordsLinksList' = ManagementWebPropertyAdWordsLinksList'
    { _mwpawllQuotaUser     :: !(Maybe Text)
    , _mwpawllPrettyPrint   :: !Bool
    , _mwpawllWebPropertyId :: !Text
    , _mwpawllUserIP        :: !(Maybe Text)
    , _mwpawllAccountId     :: !Text
    , _mwpawllKey           :: !(Maybe Key)
    , _mwpawllOAuthToken    :: !(Maybe OAuthToken)
    , _mwpawllStartIndex    :: !(Maybe Int32)
    , _mwpawllMaxResults    :: !(Maybe Int32)
    , _mwpawllFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawllQuotaUser'
--
-- * 'mwpawllPrettyPrint'
--
-- * 'mwpawllWebPropertyId'
--
-- * 'mwpawllUserIP'
--
-- * 'mwpawllAccountId'
--
-- * 'mwpawllKey'
--
-- * 'mwpawllOAuthToken'
--
-- * 'mwpawllStartIndex'
--
-- * 'mwpawllMaxResults'
--
-- * 'mwpawllFields'
managementWebPropertyAdWordsLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyAdWordsLinksList'
managementWebPropertyAdWordsLinksList' pMwpawllWebPropertyId_ pMwpawllAccountId_ =
    ManagementWebPropertyAdWordsLinksList'
    { _mwpawllQuotaUser = Nothing
    , _mwpawllPrettyPrint = False
    , _mwpawllWebPropertyId = pMwpawllWebPropertyId_
    , _mwpawllUserIP = Nothing
    , _mwpawllAccountId = pMwpawllAccountId_
    , _mwpawllKey = Nothing
    , _mwpawllOAuthToken = Nothing
    , _mwpawllStartIndex = Nothing
    , _mwpawllMaxResults = Nothing
    , _mwpawllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawllQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllQuotaUser
  = lens _mwpawllQuotaUser
      (\ s a -> s{_mwpawllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawllPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksList' Bool
mwpawllPrettyPrint
  = lens _mwpawllPrettyPrint
      (\ s a -> s{_mwpawllPrettyPrint = a})

-- | Web property ID to retrieve the AdWords links for.
mwpawllWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksList' Text
mwpawllWebPropertyId
  = lens _mwpawllWebPropertyId
      (\ s a -> s{_mwpawllWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawllUserIP :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllUserIP
  = lens _mwpawllUserIP
      (\ s a -> s{_mwpawllUserIP = a})

-- | ID of the account which the given web property belongs to.
mwpawllAccountId :: Lens' ManagementWebPropertyAdWordsLinksList' Text
mwpawllAccountId
  = lens _mwpawllAccountId
      (\ s a -> s{_mwpawllAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawllKey :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Key)
mwpawllKey
  = lens _mwpawllKey (\ s a -> s{_mwpawllKey = a})

-- | OAuth 2.0 token for the current user.
mwpawllOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe OAuthToken)
mwpawllOAuthToken
  = lens _mwpawllOAuthToken
      (\ s a -> s{_mwpawllOAuthToken = a})

-- | An index of the first webProperty-AdWords link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwpawllStartIndex :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Int32)
mwpawllStartIndex
  = lens _mwpawllStartIndex
      (\ s a -> s{_mwpawllStartIndex = a})

-- | The maximum number of webProperty-AdWords links to include in this
-- response.
mwpawllMaxResults :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Int32)
mwpawllMaxResults
  = lens _mwpawllMaxResults
      (\ s a -> s{_mwpawllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwpawllFields :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllFields
  = lens _mwpawllFields
      (\ s a -> s{_mwpawllFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksList' where
        authKey = mwpawllKey . _Just
        authToken = mwpawllOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksList' where
        type Rs ManagementWebPropertyAdWordsLinksList' =
             EntityAdWordsLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksList'{..}
          = go _mwpawllAccountId _mwpawllWebPropertyId
              _mwpawllStartIndex
              _mwpawllMaxResults
              _mwpawllQuotaUser
              (Just _mwpawllPrettyPrint)
              _mwpawllUserIP
              _mwpawllFields
              _mwpawllKey
              _mwpawllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksListResource)
                      r
                      u
