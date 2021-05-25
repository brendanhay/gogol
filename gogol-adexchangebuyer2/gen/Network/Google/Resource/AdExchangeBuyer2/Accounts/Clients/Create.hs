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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new client buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.create@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Create
    (
    -- * REST Resource
      AccountsClientsCreateResource

    -- * Creating a Request
    , accountsClientsCreate
    , AccountsClientsCreate

    -- * Request Lenses
    , accXgafv
    , accUploadProtocol
    , accAccessToken
    , accUploadType
    , accPayload
    , accAccountId
    , accCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.create@ method which the
-- 'AccountsClientsCreate' request conforms to.
type AccountsClientsCreateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Client :> Post '[JSON] Client

-- | Creates a new client buyer.
--
-- /See:/ 'accountsClientsCreate' smart constructor.
data AccountsClientsCreate =
  AccountsClientsCreate'
    { _accXgafv :: !(Maybe Xgafv)
    , _accUploadProtocol :: !(Maybe Text)
    , _accAccessToken :: !(Maybe Text)
    , _accUploadType :: !(Maybe Text)
    , _accPayload :: !Client
    , _accAccountId :: !(Textual Int64)
    , _accCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accXgafv'
--
-- * 'accUploadProtocol'
--
-- * 'accAccessToken'
--
-- * 'accUploadType'
--
-- * 'accPayload'
--
-- * 'accAccountId'
--
-- * 'accCallback'
accountsClientsCreate
    :: Client -- ^ 'accPayload'
    -> Int64 -- ^ 'accAccountId'
    -> AccountsClientsCreate
accountsClientsCreate pAccPayload_ pAccAccountId_ =
  AccountsClientsCreate'
    { _accXgafv = Nothing
    , _accUploadProtocol = Nothing
    , _accAccessToken = Nothing
    , _accUploadType = Nothing
    , _accPayload = pAccPayload_
    , _accAccountId = _Coerce # pAccAccountId_
    , _accCallback = Nothing
    }


-- | V1 error format.
accXgafv :: Lens' AccountsClientsCreate (Maybe Xgafv)
accXgafv = lens _accXgafv (\ s a -> s{_accXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
accUploadProtocol :: Lens' AccountsClientsCreate (Maybe Text)
accUploadProtocol
  = lens _accUploadProtocol
      (\ s a -> s{_accUploadProtocol = a})

-- | OAuth access token.
accAccessToken :: Lens' AccountsClientsCreate (Maybe Text)
accAccessToken
  = lens _accAccessToken
      (\ s a -> s{_accAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
accUploadType :: Lens' AccountsClientsCreate (Maybe Text)
accUploadType
  = lens _accUploadType
      (\ s a -> s{_accUploadType = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsClientsCreate Client
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | Unique numerical account ID for the buyer of which the client buyer is a
-- customer; the sponsor buyer to create a client for. (required)
accAccountId :: Lens' AccountsClientsCreate Int64
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})
      . _Coerce

-- | JSONP
accCallback :: Lens' AccountsClientsCreate (Maybe Text)
accCallback
  = lens _accCallback (\ s a -> s{_accCallback = a})

instance GoogleRequest AccountsClientsCreate where
        type Rs AccountsClientsCreate = Client
        type Scopes AccountsClientsCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsCreate'{..}
          = go _accAccountId _accXgafv _accUploadProtocol
              _accAccessToken
              _accUploadType
              _accCallback
              (Just AltJSON)
              _accPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsCreateResource)
                      mempty
