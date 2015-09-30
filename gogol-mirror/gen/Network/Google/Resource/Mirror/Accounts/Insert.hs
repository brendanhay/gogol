{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Accounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new account for a user
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorAccountsInsert@.
module Mirror.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertAPI

    -- * Creating a Request
    , accountsInsert
    , AccountsInsert

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIp
    , aiAccountName
    , aiKey
    , aiUserToken
    , aiOauthToken
    , aiAccountType
    , aiFields
    , aiAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorAccountsInsert@ which the
-- 'AccountsInsert' request conforms to.
type AccountsInsertAPI =
     "accounts" :>
       Capture "userToken" Text :>
         Capture "accountType" Text :>
           Capture "accountName" Text :> Post '[JSON] Account

-- | Inserts a new account for a user
--
-- /See:/ 'accountsInsert' smart constructor.
data AccountsInsert = AccountsInsert
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiAccountName :: !Text
    , _aiKey         :: !(Maybe Text)
    , _aiUserToken   :: !Text
    , _aiOauthToken  :: !(Maybe Text)
    , _aiAccountType :: !Text
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIp'
--
-- * 'aiAccountName'
--
-- * 'aiKey'
--
-- * 'aiUserToken'
--
-- * 'aiOauthToken'
--
-- * 'aiAccountType'
--
-- * 'aiFields'
--
-- * 'aiAlt'
accountsInsert
    :: Text -- ^ 'accountName'
    -> Text -- ^ 'userToken'
    -> Text -- ^ 'accountType'
    -> AccountsInsert
accountsInsert pAiAccountName_ pAiUserToken_ pAiAccountType_ =
    AccountsInsert
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiAccountName = pAiAccountName_
    , _aiKey = Nothing
    , _aiUserToken = pAiUserToken_
    , _aiOauthToken = Nothing
    , _aiAccountType = pAiAccountType_
    , _aiFields = Nothing
    , _aiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AccountsInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AccountsInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AccountsInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | The name of the account to be passed to the Android Account Manager.
aiAccountName :: Lens' AccountsInsert' Text
aiAccountName
  = lens _aiAccountName
      (\ s a -> s{_aiAccountName = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AccountsInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The ID for the user.
aiUserToken :: Lens' AccountsInsert' Text
aiUserToken
  = lens _aiUserToken (\ s a -> s{_aiUserToken = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AccountsInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Account type to be passed to Android Account Manager.
aiAccountType :: Lens' AccountsInsert' Text
aiAccountType
  = lens _aiAccountType
      (\ s a -> s{_aiAccountType = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AccountsInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AccountsInsert' Text
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AccountsInsert' where
        type Rs AccountsInsert' = Account
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u AccountsInsert{..}
          = go _aiQuotaUser _aiPrettyPrint _aiUserIp
              _aiAccountName
              _aiKey
              _aiUserToken
              _aiOauthToken
              _aiAccountType
              _aiFields
              _aiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsInsertAPI)
                      r
                      u
