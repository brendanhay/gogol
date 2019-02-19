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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing client buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.update@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Update
    (
    -- * REST Resource
      AccountsClientsUpdateResource

    -- * Creating a Request
    , accountsClientsUpdate
    , AccountsClientsUpdate

    -- * Request Lenses
    , acuXgafv
    , acuUploadProtocol
    , acuAccessToken
    , acuUploadType
    , acuPayload
    , acuAccountId
    , acuClientAccountId
    , acuCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.update@ method which the
-- 'AccountsClientsUpdate' request conforms to.
type AccountsClientsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Client :> Put '[JSON] Client

-- | Updates an existing client buyer.
--
-- /See:/ 'accountsClientsUpdate' smart constructor.
data AccountsClientsUpdate =
  AccountsClientsUpdate'
    { _acuXgafv           :: !(Maybe Xgafv)
    , _acuUploadProtocol  :: !(Maybe Text)
    , _acuAccessToken     :: !(Maybe Text)
    , _acuUploadType      :: !(Maybe Text)
    , _acuPayload         :: !Client
    , _acuAccountId       :: !(Textual Int64)
    , _acuClientAccountId :: !(Textual Int64)
    , _acuCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsClientsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuXgafv'
--
-- * 'acuUploadProtocol'
--
-- * 'acuAccessToken'
--
-- * 'acuUploadType'
--
-- * 'acuPayload'
--
-- * 'acuAccountId'
--
-- * 'acuClientAccountId'
--
-- * 'acuCallback'
accountsClientsUpdate
    :: Client -- ^ 'acuPayload'
    -> Int64 -- ^ 'acuAccountId'
    -> Int64 -- ^ 'acuClientAccountId'
    -> AccountsClientsUpdate
accountsClientsUpdate pAcuPayload_ pAcuAccountId_ pAcuClientAccountId_ =
  AccountsClientsUpdate'
    { _acuXgafv = Nothing
    , _acuUploadProtocol = Nothing
    , _acuAccessToken = Nothing
    , _acuUploadType = Nothing
    , _acuPayload = pAcuPayload_
    , _acuAccountId = _Coerce # pAcuAccountId_
    , _acuClientAccountId = _Coerce # pAcuClientAccountId_
    , _acuCallback = Nothing
    }

-- | V1 error format.
acuXgafv :: Lens' AccountsClientsUpdate (Maybe Xgafv)
acuXgafv = lens _acuXgafv (\ s a -> s{_acuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acuUploadProtocol :: Lens' AccountsClientsUpdate (Maybe Text)
acuUploadProtocol
  = lens _acuUploadProtocol
      (\ s a -> s{_acuUploadProtocol = a})

-- | OAuth access token.
acuAccessToken :: Lens' AccountsClientsUpdate (Maybe Text)
acuAccessToken
  = lens _acuAccessToken
      (\ s a -> s{_acuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acuUploadType :: Lens' AccountsClientsUpdate (Maybe Text)
acuUploadType
  = lens _acuUploadType
      (\ s a -> s{_acuUploadType = a})

-- | Multipart request metadata.
acuPayload :: Lens' AccountsClientsUpdate Client
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

-- | Unique numerical account ID for the buyer of which the client buyer is a
-- customer; the sponsor buyer to update a client for. (required)
acuAccountId :: Lens' AccountsClientsUpdate Int64
acuAccountId
  = lens _acuAccountId (\ s a -> s{_acuAccountId = a})
      . _Coerce

-- | Unique numerical account ID of the client to update. (required)
acuClientAccountId :: Lens' AccountsClientsUpdate Int64
acuClientAccountId
  = lens _acuClientAccountId
      (\ s a -> s{_acuClientAccountId = a})
      . _Coerce

-- | JSONP
acuCallback :: Lens' AccountsClientsUpdate (Maybe Text)
acuCallback
  = lens _acuCallback (\ s a -> s{_acuCallback = a})

instance GoogleRequest AccountsClientsUpdate where
        type Rs AccountsClientsUpdate = Client
        type Scopes AccountsClientsUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsUpdate'{..}
          = go _acuAccountId _acuClientAccountId _acuXgafv
              _acuUploadProtocol
              _acuAccessToken
              _acuUploadType
              _acuCallback
              (Just AltJSON)
              _acuPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsUpdateResource)
                      mempty
