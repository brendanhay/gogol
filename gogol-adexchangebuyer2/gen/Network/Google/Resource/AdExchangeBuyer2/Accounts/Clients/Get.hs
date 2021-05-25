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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a client buyer with a given client account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Get
    (
    -- * REST Resource
      AccountsClientsGetResource

    -- * Creating a Request
    , accountsClientsGet
    , AccountsClientsGet

    -- * Request Lenses
    , acgcXgafv
    , acgcUploadProtocol
    , acgcAccessToken
    , acgcUploadType
    , acgcAccountId
    , acgcClientAccountId
    , acgcCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.get@ method which the
-- 'AccountsClientsGet' request conforms to.
type AccountsClientsGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" (Textual Int64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Client

-- | Gets a client buyer with a given client account ID.
--
-- /See:/ 'accountsClientsGet' smart constructor.
data AccountsClientsGet =
  AccountsClientsGet'
    { _acgcXgafv :: !(Maybe Xgafv)
    , _acgcUploadProtocol :: !(Maybe Text)
    , _acgcAccessToken :: !(Maybe Text)
    , _acgcUploadType :: !(Maybe Text)
    , _acgcAccountId :: !(Textual Int64)
    , _acgcClientAccountId :: !(Textual Int64)
    , _acgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgcXgafv'
--
-- * 'acgcUploadProtocol'
--
-- * 'acgcAccessToken'
--
-- * 'acgcUploadType'
--
-- * 'acgcAccountId'
--
-- * 'acgcClientAccountId'
--
-- * 'acgcCallback'
accountsClientsGet
    :: Int64 -- ^ 'acgcAccountId'
    -> Int64 -- ^ 'acgcClientAccountId'
    -> AccountsClientsGet
accountsClientsGet pAcgcAccountId_ pAcgcClientAccountId_ =
  AccountsClientsGet'
    { _acgcXgafv = Nothing
    , _acgcUploadProtocol = Nothing
    , _acgcAccessToken = Nothing
    , _acgcUploadType = Nothing
    , _acgcAccountId = _Coerce # pAcgcAccountId_
    , _acgcClientAccountId = _Coerce # pAcgcClientAccountId_
    , _acgcCallback = Nothing
    }


-- | V1 error format.
acgcXgafv :: Lens' AccountsClientsGet (Maybe Xgafv)
acgcXgafv
  = lens _acgcXgafv (\ s a -> s{_acgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acgcUploadProtocol :: Lens' AccountsClientsGet (Maybe Text)
acgcUploadProtocol
  = lens _acgcUploadProtocol
      (\ s a -> s{_acgcUploadProtocol = a})

-- | OAuth access token.
acgcAccessToken :: Lens' AccountsClientsGet (Maybe Text)
acgcAccessToken
  = lens _acgcAccessToken
      (\ s a -> s{_acgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acgcUploadType :: Lens' AccountsClientsGet (Maybe Text)
acgcUploadType
  = lens _acgcUploadType
      (\ s a -> s{_acgcUploadType = a})

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acgcAccountId :: Lens' AccountsClientsGet Int64
acgcAccountId
  = lens _acgcAccountId
      (\ s a -> s{_acgcAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer to retrieve. (required)
acgcClientAccountId :: Lens' AccountsClientsGet Int64
acgcClientAccountId
  = lens _acgcClientAccountId
      (\ s a -> s{_acgcClientAccountId = a})
      . _Coerce

-- | JSONP
acgcCallback :: Lens' AccountsClientsGet (Maybe Text)
acgcCallback
  = lens _acgcCallback (\ s a -> s{_acgcCallback = a})

instance GoogleRequest AccountsClientsGet where
        type Rs AccountsClientsGet = Client
        type Scopes AccountsClientsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsGet'{..}
          = go _acgcAccountId _acgcClientAccountId _acgcXgafv
              _acgcUploadProtocol
              _acgcAccessToken
              _acgcUploadType
              _acgcCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsGetResource)
                      mempty
