{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsPermissionsCreate@.
module TagManager.Accounts.Permissions.Create
    (
    -- * REST Resource
      AccountsPermissionsCreateAPI

    -- * Creating a Request
    , accountsPermissionsCreate
    , AccountsPermissionsCreate

    -- * Request Lenses
    , apcQuotaUser
    , apcPrettyPrint
    , apcUserIp
    , apcAccountId
    , apcKey
    , apcOauthToken
    , apcFields
    , apcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsPermissionsCreate@ which the
-- 'AccountsPermissionsCreate' request conforms to.
type AccountsPermissionsCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :> Post '[JSON] UserAccess

-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsCreate' smart constructor.
data AccountsPermissionsCreate = AccountsPermissionsCreate
    { _apcQuotaUser   :: !(Maybe Text)
    , _apcPrettyPrint :: !Bool
    , _apcUserIp      :: !(Maybe Text)
    , _apcAccountId   :: !Text
    , _apcKey         :: !(Maybe Text)
    , _apcOauthToken  :: !(Maybe Text)
    , _apcFields      :: !(Maybe Text)
    , _apcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcQuotaUser'
--
-- * 'apcPrettyPrint'
--
-- * 'apcUserIp'
--
-- * 'apcAccountId'
--
-- * 'apcKey'
--
-- * 'apcOauthToken'
--
-- * 'apcFields'
--
-- * 'apcAlt'
accountsPermissionsCreate
    :: Text -- ^ 'accountId'
    -> AccountsPermissionsCreate
accountsPermissionsCreate pApcAccountId_ =
    AccountsPermissionsCreate
    { _apcQuotaUser = Nothing
    , _apcPrettyPrint = True
    , _apcUserIp = Nothing
    , _apcAccountId = pApcAccountId_
    , _apcKey = Nothing
    , _apcOauthToken = Nothing
    , _apcFields = Nothing
    , _apcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apcQuotaUser :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcQuotaUser
  = lens _apcQuotaUser (\ s a -> s{_apcQuotaUser = a})

-- | Returns response with indentations and line breaks.
apcPrettyPrint :: Lens' AccountsPermissionsCreate' Bool
apcPrettyPrint
  = lens _apcPrettyPrint
      (\ s a -> s{_apcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apcUserIp :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcUserIp
  = lens _apcUserIp (\ s a -> s{_apcUserIp = a})

-- | The GTM Account ID.
apcAccountId :: Lens' AccountsPermissionsCreate' Text
apcAccountId
  = lens _apcAccountId (\ s a -> s{_apcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apcKey :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcKey = lens _apcKey (\ s a -> s{_apcKey = a})

-- | OAuth 2.0 token for the current user.
apcOauthToken :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcOauthToken
  = lens _apcOauthToken
      (\ s a -> s{_apcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apcFields :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcFields
  = lens _apcFields (\ s a -> s{_apcFields = a})

-- | Data format for the response.
apcAlt :: Lens' AccountsPermissionsCreate' Text
apcAlt = lens _apcAlt (\ s a -> s{_apcAlt = a})

instance GoogleRequest AccountsPermissionsCreate'
         where
        type Rs AccountsPermissionsCreate' = UserAccess
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsCreate{..}
          = go _apcQuotaUser _apcPrettyPrint _apcUserIp
              _apcAccountId
              _apcKey
              _apcOauthToken
              _apcFields
              _apcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsCreateAPI)
                      r
                      u
