{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.AccountUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.delete@.
module Network.Google.API.Analytics.Management.AccountUserLinks.Delete
    (
    -- * REST Resource
      ManagementAccountUserLinksDeleteAPI

    -- * Creating a Request
    , managementAccountUserLinksDelete'
    , ManagementAccountUserLinksDelete'

    -- * Request Lenses
    , mauldQuotaUser
    , mauldPrettyPrint
    , mauldUserIp
    , mauldAccountId
    , mauldKey
    , mauldLinkId
    , mauldOauthToken
    , mauldFields
    , mauldAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.accountUserLinks.delete which the
-- 'ManagementAccountUserLinksDelete'' request conforms to.
type ManagementAccountUserLinksDeleteAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "entityUserLinks" :>
             Capture "linkId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a user from the given account.
--
-- /See:/ 'managementAccountUserLinksDelete'' smart constructor.
data ManagementAccountUserLinksDelete' = ManagementAccountUserLinksDelete'
    { _mauldQuotaUser   :: !(Maybe Text)
    , _mauldPrettyPrint :: !Bool
    , _mauldUserIp      :: !(Maybe Text)
    , _mauldAccountId   :: !Text
    , _mauldKey         :: !(Maybe Text)
    , _mauldLinkId      :: !Text
    , _mauldOauthToken  :: !(Maybe Text)
    , _mauldFields      :: !(Maybe Text)
    , _mauldAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauldQuotaUser'
--
-- * 'mauldPrettyPrint'
--
-- * 'mauldUserIp'
--
-- * 'mauldAccountId'
--
-- * 'mauldKey'
--
-- * 'mauldLinkId'
--
-- * 'mauldOauthToken'
--
-- * 'mauldFields'
--
-- * 'mauldAlt'
managementAccountUserLinksDelete'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementAccountUserLinksDelete'
managementAccountUserLinksDelete' pMauldAccountId_ pMauldLinkId_ =
    ManagementAccountUserLinksDelete'
    { _mauldQuotaUser = Nothing
    , _mauldPrettyPrint = False
    , _mauldUserIp = Nothing
    , _mauldAccountId = pMauldAccountId_
    , _mauldKey = Nothing
    , _mauldLinkId = pMauldLinkId_
    , _mauldOauthToken = Nothing
    , _mauldFields = Nothing
    , _mauldAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mauldQuotaUser :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldQuotaUser
  = lens _mauldQuotaUser
      (\ s a -> s{_mauldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mauldPrettyPrint :: Lens' ManagementAccountUserLinksDelete' Bool
mauldPrettyPrint
  = lens _mauldPrettyPrint
      (\ s a -> s{_mauldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mauldUserIp :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldUserIp
  = lens _mauldUserIp (\ s a -> s{_mauldUserIp = a})

-- | Account ID to delete the user link for.
mauldAccountId :: Lens' ManagementAccountUserLinksDelete' Text
mauldAccountId
  = lens _mauldAccountId
      (\ s a -> s{_mauldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauldKey :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldKey = lens _mauldKey (\ s a -> s{_mauldKey = a})

-- | Link ID to delete the user link for.
mauldLinkId :: Lens' ManagementAccountUserLinksDelete' Text
mauldLinkId
  = lens _mauldLinkId (\ s a -> s{_mauldLinkId = a})

-- | OAuth 2.0 token for the current user.
mauldOauthToken :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldOauthToken
  = lens _mauldOauthToken
      (\ s a -> s{_mauldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauldFields :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldFields
  = lens _mauldFields (\ s a -> s{_mauldFields = a})

-- | Data format for the response.
mauldAlt :: Lens' ManagementAccountUserLinksDelete' Alt
mauldAlt = lens _mauldAlt (\ s a -> s{_mauldAlt = a})

instance GoogleRequest
         ManagementAccountUserLinksDelete' where
        type Rs ManagementAccountUserLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksDelete'{..}
          = go _mauldQuotaUser (Just _mauldPrettyPrint)
              _mauldUserIp
              _mauldAccountId
              _mauldKey
              _mauldLinkId
              _mauldOauthToken
              _mauldFields
              (Just _mauldAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementAccountUserLinksDeleteAPI)
                      r
                      u
