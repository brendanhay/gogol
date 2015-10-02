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
module Network.Google.Resource.Mirror.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert'
    , AccountsInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIP
    , aiAccountName
    , aiAccount
    , aiKey
    , aiUserToken
    , aiOAuthToken
    , aiAccountType
    , aiFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorAccountsInsert@ which the
-- 'AccountsInsert'' request conforms to.
type AccountsInsertResource =
     "accounts" :>
       Capture "userToken" Text :>
         Capture "accountType" Text :>
           Capture "accountName" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Inserts a new account for a user
--
-- /See:/ 'accountsInsert'' smart constructor.
data AccountsInsert' = AccountsInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIP      :: !(Maybe Text)
    , _aiAccountName :: !Text
    , _aiAccount     :: !Account
    , _aiKey         :: !(Maybe Key)
    , _aiUserToken   :: !Text
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiAccountType :: !Text
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIP'
--
-- * 'aiAccountName'
--
-- * 'aiAccount'
--
-- * 'aiKey'
--
-- * 'aiUserToken'
--
-- * 'aiOAuthToken'
--
-- * 'aiAccountType'
--
-- * 'aiFields'
accountsInsert'
    :: Text -- ^ 'accountName'
    -> Account -- ^ 'Account'
    -> Text -- ^ 'userToken'
    -> Text -- ^ 'accountType'
    -> AccountsInsert'
accountsInsert' pAiAccountName_ pAiAccount_ pAiUserToken_ pAiAccountType_ =
    AccountsInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIP = Nothing
    , _aiAccountName = pAiAccountName_
    , _aiAccount = pAiAccount_
    , _aiKey = Nothing
    , _aiUserToken = pAiUserToken_
    , _aiOAuthToken = Nothing
    , _aiAccountType = pAiAccountType_
    , _aiFields = Nothing
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
aiUserIP :: Lens' AccountsInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | The name of the account to be passed to the Android Account Manager.
aiAccountName :: Lens' AccountsInsert' Text
aiAccountName
  = lens _aiAccountName
      (\ s a -> s{_aiAccountName = a})

-- | Multipart request metadata.
aiAccount :: Lens' AccountsInsert' Account
aiAccount
  = lens _aiAccount (\ s a -> s{_aiAccount = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AccountsInsert' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The ID for the user.
aiUserToken :: Lens' AccountsInsert' Text
aiUserToken
  = lens _aiUserToken (\ s a -> s{_aiUserToken = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' AccountsInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Account type to be passed to Android Account Manager.
aiAccountType :: Lens' AccountsInsert' Text
aiAccountType
  = lens _aiAccountType
      (\ s a -> s{_aiAccountType = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AccountsInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth AccountsInsert' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest AccountsInsert' where
        type Rs AccountsInsert' = Account
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u AccountsInsert'{..}
          = go _aiUserToken _aiAccountType _aiAccountName
              _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiAccount
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsInsertResource)
                      r
                      u
