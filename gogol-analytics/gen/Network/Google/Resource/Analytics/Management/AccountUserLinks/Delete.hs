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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksDelete@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Delete
    (
    -- * REST Resource
      ManagementAccountUserLinksDeleteResource

    -- * Creating a Request
    , managementAccountUserLinksDelete'
    , ManagementAccountUserLinksDelete'

    -- * Request Lenses
    , mauldQuotaUser
    , mauldPrettyPrint
    , mauldUserIP
    , mauldAccountId
    , mauldKey
    , mauldLinkId
    , mauldOAuthToken
    , mauldFields
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksDelete@ which the
-- 'ManagementAccountUserLinksDelete'' request conforms to.
type ManagementAccountUserLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "entityUserLinks" :>
             Capture "linkId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given account.
--
-- /See:/ 'managementAccountUserLinksDelete'' smart constructor.
data ManagementAccountUserLinksDelete' = ManagementAccountUserLinksDelete'
    { _mauldQuotaUser :: !(Maybe Text)
    , _mauldPrettyPrint :: !Bool
    , _mauldUserIP :: !(Maybe Text)
    , _mauldAccountId :: !Text
    , _mauldKey :: !(Maybe Key)
    , _mauldLinkId :: !Text
    , _mauldOAuthToken :: !(Maybe OAuthToken)
    , _mauldFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauldQuotaUser'
--
-- * 'mauldPrettyPrint'
--
-- * 'mauldUserIP'
--
-- * 'mauldAccountId'
--
-- * 'mauldKey'
--
-- * 'mauldLinkId'
--
-- * 'mauldOAuthToken'
--
-- * 'mauldFields'
managementAccountUserLinksDelete'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementAccountUserLinksDelete'
managementAccountUserLinksDelete' pMauldAccountId_ pMauldLinkId_ = 
    ManagementAccountUserLinksDelete'
    { _mauldQuotaUser = Nothing
    , _mauldPrettyPrint = False
    , _mauldUserIP = Nothing
    , _mauldAccountId = pMauldAccountId_
    , _mauldKey = Nothing
    , _mauldLinkId = pMauldLinkId_
    , _mauldOAuthToken = Nothing
    , _mauldFields = Nothing
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
mauldUserIP :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldUserIP
  = lens _mauldUserIP (\ s a -> s{_mauldUserIP = a})

-- | Account ID to delete the user link for.
mauldAccountId :: Lens' ManagementAccountUserLinksDelete' Text
mauldAccountId
  = lens _mauldAccountId
      (\ s a -> s{_mauldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauldKey :: Lens' ManagementAccountUserLinksDelete' (Maybe Key)
mauldKey = lens _mauldKey (\ s a -> s{_mauldKey = a})

-- | Link ID to delete the user link for.
mauldLinkId :: Lens' ManagementAccountUserLinksDelete' Text
mauldLinkId
  = lens _mauldLinkId (\ s a -> s{_mauldLinkId = a})

-- | OAuth 2.0 token for the current user.
mauldOAuthToken :: Lens' ManagementAccountUserLinksDelete' (Maybe OAuthToken)
mauldOAuthToken
  = lens _mauldOAuthToken
      (\ s a -> s{_mauldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauldFields :: Lens' ManagementAccountUserLinksDelete' (Maybe Text)
mauldFields
  = lens _mauldFields (\ s a -> s{_mauldFields = a})

instance GoogleAuth ManagementAccountUserLinksDelete'
         where
        authKey = mauldKey . _Just
        authToken = mauldOAuthToken . _Just

instance GoogleRequest
         ManagementAccountUserLinksDelete' where
        type Rs ManagementAccountUserLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksDelete'{..}
          = go _mauldAccountId _mauldLinkId _mauldQuotaUser
              (Just _mauldPrettyPrint)
              _mauldUserIP
              _mauldFields
              _mauldKey
              _mauldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementAccountUserLinksDeleteResource)
                      r
                      u
