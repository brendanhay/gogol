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
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all users that have access to the account along with Account and
-- Container Permissions granted to each of them.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsPermissionsList@.
module Network.Google.Resource.TagManager.Accounts.Permissions.List
    (
    -- * REST Resource
      AccountsPermissionsListResource

    -- * Creating a Request
    , accountsPermissionsList'
    , AccountsPermissionsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIp
    , aplAccountId
    , aplKey
    , aplOauthToken
    , aplFields
    , aplAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsPermissionsList@ which the
-- 'AccountsPermissionsList'' request conforms to.
type AccountsPermissionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] ListAccountUsersResponse

-- | List all users that have access to the account along with Account and
-- Container Permissions granted to each of them.
--
-- /See:/ 'accountsPermissionsList'' smart constructor.
data AccountsPermissionsList' = AccountsPermissionsList'
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIp      :: !(Maybe Text)
    , _aplAccountId   :: !Text
    , _aplKey         :: !(Maybe Text)
    , _aplOauthToken  :: !(Maybe Text)
    , _aplFields      :: !(Maybe Text)
    , _aplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIp'
--
-- * 'aplAccountId'
--
-- * 'aplKey'
--
-- * 'aplOauthToken'
--
-- * 'aplFields'
--
-- * 'aplAlt'
accountsPermissionsList'
    :: Text -- ^ 'accountId'
    -> AccountsPermissionsList'
accountsPermissionsList' pAplAccountId_ =
    AccountsPermissionsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIp = Nothing
    , _aplAccountId = pAplAccountId_
    , _aplKey = Nothing
    , _aplOauthToken = Nothing
    , _aplFields = Nothing
    , _aplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AccountsPermissionsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AccountsPermissionsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIp :: Lens' AccountsPermissionsList' (Maybe Text)
aplUserIp
  = lens _aplUserIp (\ s a -> s{_aplUserIp = a})

-- | The GTM Account ID. \'required tagmanager.accounts.permissions.list
aplAccountId :: Lens' AccountsPermissionsList' Text
aplAccountId
  = lens _aplAccountId (\ s a -> s{_aplAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AccountsPermissionsList' (Maybe Text)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | OAuth 2.0 token for the current user.
aplOauthToken :: Lens' AccountsPermissionsList' (Maybe Text)
aplOauthToken
  = lens _aplOauthToken
      (\ s a -> s{_aplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AccountsPermissionsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

-- | Data format for the response.
aplAlt :: Lens' AccountsPermissionsList' Alt
aplAlt = lens _aplAlt (\ s a -> s{_aplAlt = a})

instance GoogleRequest AccountsPermissionsList' where
        type Rs AccountsPermissionsList' =
             ListAccountUsersResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsList'{..}
          = go _aplQuotaUser (Just _aplPrettyPrint) _aplUserIp
              _aplAccountId
              _aplKey
              _aplOauthToken
              _aplFields
              (Just _aplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsListResource)
                      r
                      u
