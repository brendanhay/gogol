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
    , maullUserIp
    , maullAccountId
    , maullKey
    , maullOauthToken
    , maullStartIndex
    , maullMaxResults
    , maullFields
    , maullAlt
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
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "start-index" Int32 :>
                         QueryParam "max-results" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] EntityUserLinks

-- | Lists account-user links for a given account.
--
-- /See:/ 'managementAccountUserLinksList'' smart constructor.
data ManagementAccountUserLinksList' = ManagementAccountUserLinksList'
    { _maullQuotaUser   :: !(Maybe Text)
    , _maullPrettyPrint :: !Bool
    , _maullUserIp      :: !(Maybe Text)
    , _maullAccountId   :: !Text
    , _maullKey         :: !(Maybe Text)
    , _maullOauthToken  :: !(Maybe Text)
    , _maullStartIndex  :: !(Maybe Int32)
    , _maullMaxResults  :: !(Maybe Int32)
    , _maullFields      :: !(Maybe Text)
    , _maullAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maullQuotaUser'
--
-- * 'maullPrettyPrint'
--
-- * 'maullUserIp'
--
-- * 'maullAccountId'
--
-- * 'maullKey'
--
-- * 'maullOauthToken'
--
-- * 'maullStartIndex'
--
-- * 'maullMaxResults'
--
-- * 'maullFields'
--
-- * 'maullAlt'
managementAccountUserLinksList'
    :: Text -- ^ 'accountId'
    -> ManagementAccountUserLinksList'
managementAccountUserLinksList' pMaullAccountId_ =
    ManagementAccountUserLinksList'
    { _maullQuotaUser = Nothing
    , _maullPrettyPrint = False
    , _maullUserIp = Nothing
    , _maullAccountId = pMaullAccountId_
    , _maullKey = Nothing
    , _maullOauthToken = Nothing
    , _maullStartIndex = Nothing
    , _maullMaxResults = Nothing
    , _maullFields = Nothing
    , _maullAlt = ALTJSON
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
maullUserIp :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullUserIp
  = lens _maullUserIp (\ s a -> s{_maullUserIp = a})

-- | Account ID to retrieve the user links for.
maullAccountId :: Lens' ManagementAccountUserLinksList' Text
maullAccountId
  = lens _maullAccountId
      (\ s a -> s{_maullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maullKey :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullKey = lens _maullKey (\ s a -> s{_maullKey = a})

-- | OAuth 2.0 token for the current user.
maullOauthToken :: Lens' ManagementAccountUserLinksList' (Maybe Text)
maullOauthToken
  = lens _maullOauthToken
      (\ s a -> s{_maullOauthToken = a})

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

-- | Data format for the response.
maullAlt :: Lens' ManagementAccountUserLinksList' Alt
maullAlt = lens _maullAlt (\ s a -> s{_maullAlt = a})

instance GoogleRequest
         ManagementAccountUserLinksList' where
        type Rs ManagementAccountUserLinksList' =
             EntityUserLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksList'{..}
          = go _maullQuotaUser (Just _maullPrettyPrint)
              _maullUserIp
              _maullAccountId
              _maullKey
              _maullOauthToken
              _maullStartIndex
              _maullMaxResults
              _maullFields
              (Just _maullAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementAccountUserLinksListResource)
                      r
                      u
