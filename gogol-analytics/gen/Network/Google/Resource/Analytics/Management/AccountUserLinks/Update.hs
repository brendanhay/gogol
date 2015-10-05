{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountUserLinksUpdate@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Update
    (
    -- * REST Resource
      ManagementAccountUserLinksUpdateResource

    -- * Creating a Request
    , managementAccountUserLinksUpdate'
    , ManagementAccountUserLinksUpdate'

    -- * Request Lenses
    , mauluQuotaUser
    , mauluPrettyPrint
    , mauluUserIP
    , mauluPayload
    , mauluAccountId
    , mauluKey
    , mauluLinkId
    , mauluOAuthToken
    , mauluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountUserLinksUpdate@ which the
-- 'ManagementAccountUserLinksUpdate'' request conforms to.
type ManagementAccountUserLinksUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] EntityUserLink :>
                               Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given account.
--
-- /See:/ 'managementAccountUserLinksUpdate'' smart constructor.
data ManagementAccountUserLinksUpdate' = ManagementAccountUserLinksUpdate'
    { _mauluQuotaUser   :: !(Maybe Text)
    , _mauluPrettyPrint :: !Bool
    , _mauluUserIP      :: !(Maybe Text)
    , _mauluPayload     :: !EntityUserLink
    , _mauluAccountId   :: !Text
    , _mauluKey         :: !(Maybe Key)
    , _mauluLinkId      :: !Text
    , _mauluOAuthToken  :: !(Maybe OAuthToken)
    , _mauluFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauluQuotaUser'
--
-- * 'mauluPrettyPrint'
--
-- * 'mauluUserIP'
--
-- * 'mauluPayload'
--
-- * 'mauluAccountId'
--
-- * 'mauluKey'
--
-- * 'mauluLinkId'
--
-- * 'mauluOAuthToken'
--
-- * 'mauluFields'
managementAccountUserLinksUpdate'
    :: EntityUserLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementAccountUserLinksUpdate'
managementAccountUserLinksUpdate' pMauluPayload_ pMauluAccountId_ pMauluLinkId_ =
    ManagementAccountUserLinksUpdate'
    { _mauluQuotaUser = Nothing
    , _mauluPrettyPrint = False
    , _mauluUserIP = Nothing
    , _mauluPayload = pMauluPayload_
    , _mauluAccountId = pMauluAccountId_
    , _mauluKey = Nothing
    , _mauluLinkId = pMauluLinkId_
    , _mauluOAuthToken = Nothing
    , _mauluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mauluQuotaUser :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluQuotaUser
  = lens _mauluQuotaUser
      (\ s a -> s{_mauluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mauluPrettyPrint :: Lens' ManagementAccountUserLinksUpdate' Bool
mauluPrettyPrint
  = lens _mauluPrettyPrint
      (\ s a -> s{_mauluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mauluUserIP :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluUserIP
  = lens _mauluUserIP (\ s a -> s{_mauluUserIP = a})

-- | Multipart request metadata.
mauluPayload :: Lens' ManagementAccountUserLinksUpdate' EntityUserLink
mauluPayload
  = lens _mauluPayload (\ s a -> s{_mauluPayload = a})

-- | Account ID to update the account-user link for.
mauluAccountId :: Lens' ManagementAccountUserLinksUpdate' Text
mauluAccountId
  = lens _mauluAccountId
      (\ s a -> s{_mauluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauluKey :: Lens' ManagementAccountUserLinksUpdate' (Maybe Key)
mauluKey = lens _mauluKey (\ s a -> s{_mauluKey = a})

-- | Link ID to update the account-user link for.
mauluLinkId :: Lens' ManagementAccountUserLinksUpdate' Text
mauluLinkId
  = lens _mauluLinkId (\ s a -> s{_mauluLinkId = a})

-- | OAuth 2.0 token for the current user.
mauluOAuthToken :: Lens' ManagementAccountUserLinksUpdate' (Maybe OAuthToken)
mauluOAuthToken
  = lens _mauluOAuthToken
      (\ s a -> s{_mauluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauluFields :: Lens' ManagementAccountUserLinksUpdate' (Maybe Text)
mauluFields
  = lens _mauluFields (\ s a -> s{_mauluFields = a})

instance GoogleAuth ManagementAccountUserLinksUpdate'
         where
        authKey = mauluKey . _Just
        authToken = mauluOAuthToken . _Just

instance GoogleRequest
         ManagementAccountUserLinksUpdate' where
        type Rs ManagementAccountUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountUserLinksUpdate'{..}
          = go _mauluAccountId _mauluLinkId _mauluQuotaUser
              (Just _mauluPrettyPrint)
              _mauluUserIP
              _mauluFields
              _mauluKey
              _mauluOAuthToken
              (Just AltJSON)
              _mauluPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementAccountUserLinksUpdateResource)
                      r
                      u
