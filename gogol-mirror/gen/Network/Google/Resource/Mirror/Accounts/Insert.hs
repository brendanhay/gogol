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
-- Module      : Network.Google.Resource.Mirror.Accounts.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new account for a user
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.accounts.insert@.
module Network.Google.Resource.Mirror.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert
    , AccountsInsert

    -- * Request Lenses
    , aiAccountName
    , aiPayload
    , aiUserToken
    , aiAccountType
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.accounts.insert@ method which the
-- 'AccountsInsert' request conforms to.
type AccountsInsertResource =
     "mirror" :>
       "v1" :>
         "accounts" :>
           Capture "userToken" Text :>
             Capture "accountType" Text :>
               Capture "accountName" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Inserts a new account for a user
--
-- /See:/ 'accountsInsert' smart constructor.
data AccountsInsert =
  AccountsInsert'
    { _aiAccountName :: !Text
    , _aiPayload :: !Account
    , _aiUserToken :: !Text
    , _aiAccountType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiAccountName'
--
-- * 'aiPayload'
--
-- * 'aiUserToken'
--
-- * 'aiAccountType'
accountsInsert
    :: Text -- ^ 'aiAccountName'
    -> Account -- ^ 'aiPayload'
    -> Text -- ^ 'aiUserToken'
    -> Text -- ^ 'aiAccountType'
    -> AccountsInsert
accountsInsert pAiAccountName_ pAiPayload_ pAiUserToken_ pAiAccountType_ =
  AccountsInsert'
    { _aiAccountName = pAiAccountName_
    , _aiPayload = pAiPayload_
    , _aiUserToken = pAiUserToken_
    , _aiAccountType = pAiAccountType_
    }


-- | The name of the account to be passed to the Android Account Manager.
aiAccountName :: Lens' AccountsInsert Text
aiAccountName
  = lens _aiAccountName
      (\ s a -> s{_aiAccountName = a})

-- | Multipart request metadata.
aiPayload :: Lens' AccountsInsert Account
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | The ID for the user.
aiUserToken :: Lens' AccountsInsert Text
aiUserToken
  = lens _aiUserToken (\ s a -> s{_aiUserToken = a})

-- | Account type to be passed to Android Account Manager.
aiAccountType :: Lens' AccountsInsert Text
aiAccountType
  = lens _aiAccountType
      (\ s a -> s{_aiAccountType = a})

instance GoogleRequest AccountsInsert where
        type Rs AccountsInsert = Account
        type Scopes AccountsInsert = '[]
        requestClient AccountsInsert'{..}
          = go _aiUserToken _aiAccountType _aiAccountName
              (Just AltJSON)
              _aiPayload
              mirrorService
          where go
                  = buildClient (Proxy :: Proxy AccountsInsertResource)
                      mempty
