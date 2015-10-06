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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists account-user links for a given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksList@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.List
    (
    -- * REST Resource
      ManagementAccountUserLinksListResource

    -- * Creating a Request
    , managementAccountUserLinksList'
    , ManagementAccountUserLinksList'

    -- * Request Lenses
    , maullQuotaUser
    , maullPrettyPrint
    , maullUserIP
    , maullAccountId
    , maullKey
    , maullOAuthToken
    , maullStartIndex
    , maullMaxResults
    , maullFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksList@ which the
-- 'ManagementAccountUserLinksList'' request conforms to.
type ManagementAccountUserLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
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

-- | Lists account-user links for a given account.
--
-- /See:/ 'managementAccountUserLinksList'' smart constructor.
data ManagementAccountUserLinksList' = ManagementAccountUserLinksList'
    { _maullQuotaUser   :: !(Maybe Text)
    , _maullPrettyPrint :: !Bool
    , _maullUserIP      :: !(Maybe Text)
    , _maullAccountId   :: !Text
    , _maullKey         :: !(Maybe AuthKey)
    , _maullOAuthToken  :: !(Maybe OAuthToken)
    , _maullStartIndex  :: !(Maybe Int32)
    , _maullMaxResults  :: !(Maybe Int32)
    , _maullFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maullQuotaUser'
--
-- * 'maullPrettyPrint'
--
-- * 'maullUserIP'
--
-- * 'maullAccountId'
--
-- * 'maullKey'
--
-- * 'maullOAuthToken'
--
-- * 'maullStartIndex'
--
-- * 'maullMaxResults'
--
-- * 'maullFields'
managementAccountUserLinksList'
    :: Text -- ^ 'accountId'
    -> ManagementAccountUserLinksList'
managementAccountUserLinksList' pMaullAccountId_ =
    ManagementAccountUserLinksList'
    { _maullQuotaUser = Nothing
    , _maullPrettyPrint = False
    , _maullUserIP = Nothing
    , _maullAccountId = pMaullAccountId_
    , _maullKey = Nothing
    , _maullOAuthToken = Nothing
    , _maullStartIndex = Nothing
    , _maullMaxResults = Nothing
    , _maullFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
maullQuotaUser :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullQuotaUser
  = lens _maullQuotaUser
      (\ s a -> s{_maullQuotaUser = a})

-- | Returns response with indentations and line breaks.
maullPrettyPrint :: Lens' ManagementAccountUserLinksList' Bool
maullPrettyPrint
  = lens _maullPrettyPrint
      (\ s a -> s{_maullPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
maullUserIP :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullUserIP
  = lens _maullUserIP (\ s a -> s{_maullUserIP = a})

-- | Account ID to retrieve the user links for.
maullAccountId :: Lens' ManagementAccountUserLinksList' Text
maullAccountId
  = lens _maullAccountId
      (\ s a -> s{_maullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maullKey :: Lens' ManagementAccountUserLinksList' (Maybe AuthKey)
maullKey = lens _maullKey (\ s a -> s{_maullKey = a})

-- | OAuth 2.0 token for the current user.
maullOAuthToken :: Lens' ManagementAccountUserLinksList' (Maybe OAuthToken)
maullOAuthToken
  = lens _maullOAuthToken
      (\ s a -> s{_maullOAuthToken = a})

-- | An index of the first account-user link to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
maullStartIndex :: Lens' ManagementAccountUserLinksList' (Maybe Int32)
maullStartIndex
  = lens _maullStartIndex
      (\ s a -> s{_maullStartIndex = a})

-- | The maximum number of account-user links to include in this response.
maullMaxResults :: Lens' ManagementAccountUserLinksList' (Maybe Int32)
maullMaxResults
  = lens _maullMaxResults
      (\ s a -> s{_maullMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
maullFields :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullFields
  = lens _maullFields (\ s a -> s{_maullFields = a})

instance GoogleAuth ManagementAccountUserLinksList'
         where
        _AuthKey = maullKey . _Just
        _AuthToken = maullOAuthToken . _Just

instance GoogleRequest
         ManagementAccountUserLinksList' where
        type Rs ManagementAccountUserLinksList' =
             EntityUserLinks
        request = requestWith analyticsRequest
        requestWith rq ManagementAccountUserLinksList'{..}
          = go _maullAccountId _maullStartIndex
              _maullMaxResults
              _maullQuotaUser
              (Just _maullPrettyPrint)
              _maullUserIP
              _maullFields
              _maullKey
              _maullOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementAccountUserLinksListResource)
                      rq
