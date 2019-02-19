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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing client user.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Get
    (
    -- * REST Resource
      AccountsClientsUsersGetResource

    -- * Creating a Request
    , accountsClientsUsersGet
    , AccountsClientsUsersGet

    -- * Request Lenses
    , acugXgafv
    , acugUploadProtocol
    , acugAccessToken
    , acugUploadType
    , acugUserId
    , acugAccountId
    , acugClientAccountId
    , acugCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.get@ method which the
-- 'AccountsClientsUsersGet' request conforms to.
type AccountsClientsUsersGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" (Textual Int64) :>
               "users" :>
                 Capture "userId" (Textual Int64) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] ClientUser

-- | Retrieves an existing client user.
--
-- /See:/ 'accountsClientsUsersGet' smart constructor.
data AccountsClientsUsersGet =
  AccountsClientsUsersGet'
    { _acugXgafv           :: !(Maybe Xgafv)
    , _acugUploadProtocol  :: !(Maybe Text)
    , _acugAccessToken     :: !(Maybe Text)
    , _acugUploadType      :: !(Maybe Text)
    , _acugUserId          :: !(Textual Int64)
    , _acugAccountId       :: !(Textual Int64)
    , _acugClientAccountId :: !(Textual Int64)
    , _acugCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsUsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acugXgafv'
--
-- * 'acugUploadProtocol'
--
-- * 'acugAccessToken'
--
-- * 'acugUploadType'
--
-- * 'acugUserId'
--
-- * 'acugAccountId'
--
-- * 'acugClientAccountId'
--
-- * 'acugCallback'
accountsClientsUsersGet
    :: Int64 -- ^ 'acugUserId'
    -> Int64 -- ^ 'acugAccountId'
    -> Int64 -- ^ 'acugClientAccountId'
    -> AccountsClientsUsersGet
accountsClientsUsersGet pAcugUserId_ pAcugAccountId_ pAcugClientAccountId_ =
  AccountsClientsUsersGet'
    { _acugXgafv = Nothing
    , _acugUploadProtocol = Nothing
    , _acugAccessToken = Nothing
    , _acugUploadType = Nothing
    , _acugUserId = _Coerce # pAcugUserId_
    , _acugAccountId = _Coerce # pAcugAccountId_
    , _acugClientAccountId = _Coerce # pAcugClientAccountId_
    , _acugCallback = Nothing
    }


-- | V1 error format.
acugXgafv :: Lens' AccountsClientsUsersGet (Maybe Xgafv)
acugXgafv
  = lens _acugXgafv (\ s a -> s{_acugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acugUploadProtocol :: Lens' AccountsClientsUsersGet (Maybe Text)
acugUploadProtocol
  = lens _acugUploadProtocol
      (\ s a -> s{_acugUploadProtocol = a})

-- | OAuth access token.
acugAccessToken :: Lens' AccountsClientsUsersGet (Maybe Text)
acugAccessToken
  = lens _acugAccessToken
      (\ s a -> s{_acugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acugUploadType :: Lens' AccountsClientsUsersGet (Maybe Text)
acugUploadType
  = lens _acugUploadType
      (\ s a -> s{_acugUploadType = a})

-- | Numerical identifier of the user to retrieve. (required)
acugUserId :: Lens' AccountsClientsUsersGet Int64
acugUserId
  = lens _acugUserId (\ s a -> s{_acugUserId = a}) .
      _Coerce

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acugAccountId :: Lens' AccountsClientsUsersGet Int64
acugAccountId
  = lens _acugAccountId
      (\ s a -> s{_acugAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer that the user to be retrieved
-- is associated with. (required)
acugClientAccountId :: Lens' AccountsClientsUsersGet Int64
acugClientAccountId
  = lens _acugClientAccountId
      (\ s a -> s{_acugClientAccountId = a})
      . _Coerce

-- | JSONP
acugCallback :: Lens' AccountsClientsUsersGet (Maybe Text)
acugCallback
  = lens _acugCallback (\ s a -> s{_acugCallback = a})

instance GoogleRequest AccountsClientsUsersGet where
        type Rs AccountsClientsUsersGet = ClientUser
        type Scopes AccountsClientsUsersGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsUsersGet'{..}
          = go _acugAccountId _acugClientAccountId _acugUserId
              _acugXgafv
              _acugUploadProtocol
              _acugAccessToken
              _acugUploadType
              _acugCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsUsersGetResource)
                      mempty
