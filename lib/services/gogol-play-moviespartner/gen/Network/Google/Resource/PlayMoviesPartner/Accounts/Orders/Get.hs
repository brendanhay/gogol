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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Order given its id. See _Authentication and Authorization rules_
-- and _Get methods rules_ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.orders.get@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
    (
    -- * REST Resource
      AccountsOrdersGetResource

    -- * Creating a Request
    , accountsOrdersGet
    , AccountsOrdersGet

    -- * Request Lenses
    , aogXgafv
    , aogUploadProtocol
    , aogPp
    , aogAccessToken
    , aogUploadType
    , aogAccountId
    , aogBearerToken
    , aogOrderId
    , aogCallback
    ) where

import Network.Google.PlayMoviesPartner.Types
import Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.orders.get@ method which the
-- 'AccountsOrdersGet' request conforms to.
type AccountsOrdersGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "orders" :>
             Capture "orderId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Get an Order given its id. See _Authentication and Authorization rules_
-- and _Get methods rules_ for more information about this method.
--
-- /See:/ 'accountsOrdersGet' smart constructor.
data AccountsOrdersGet =
  AccountsOrdersGet'
    { _aogXgafv :: !(Maybe Xgafv)
    , _aogUploadProtocol :: !(Maybe Text)
    , _aogPp :: !Bool
    , _aogAccessToken :: !(Maybe Text)
    , _aogUploadType :: !(Maybe Text)
    , _aogAccountId :: !Text
    , _aogBearerToken :: !(Maybe Text)
    , _aogOrderId :: !Text
    , _aogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsOrdersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aogXgafv'
--
-- * 'aogUploadProtocol'
--
-- * 'aogPp'
--
-- * 'aogAccessToken'
--
-- * 'aogUploadType'
--
-- * 'aogAccountId'
--
-- * 'aogBearerToken'
--
-- * 'aogOrderId'
--
-- * 'aogCallback'
accountsOrdersGet
    :: Text -- ^ 'aogAccountId'
    -> Text -- ^ 'aogOrderId'
    -> AccountsOrdersGet
accountsOrdersGet pAogAccountId_ pAogOrderId_ =
  AccountsOrdersGet'
    { _aogXgafv = Nothing
    , _aogUploadProtocol = Nothing
    , _aogPp = True
    , _aogAccessToken = Nothing
    , _aogUploadType = Nothing
    , _aogAccountId = pAogAccountId_
    , _aogBearerToken = Nothing
    , _aogOrderId = pAogOrderId_
    , _aogCallback = Nothing
    }


-- | V1 error format.
aogXgafv :: Lens' AccountsOrdersGet (Maybe Xgafv)
aogXgafv = lens _aogXgafv (\ s a -> s{_aogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aogUploadProtocol :: Lens' AccountsOrdersGet (Maybe Text)
aogUploadProtocol
  = lens _aogUploadProtocol
      (\ s a -> s{_aogUploadProtocol = a})

-- | Pretty-print response.
aogPp :: Lens' AccountsOrdersGet Bool
aogPp = lens _aogPp (\ s a -> s{_aogPp = a})

-- | OAuth access token.
aogAccessToken :: Lens' AccountsOrdersGet (Maybe Text)
aogAccessToken
  = lens _aogAccessToken
      (\ s a -> s{_aogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aogUploadType :: Lens' AccountsOrdersGet (Maybe Text)
aogUploadType
  = lens _aogUploadType
      (\ s a -> s{_aogUploadType = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aogAccountId :: Lens' AccountsOrdersGet Text
aogAccountId
  = lens _aogAccountId (\ s a -> s{_aogAccountId = a})

-- | OAuth bearer token.
aogBearerToken :: Lens' AccountsOrdersGet (Maybe Text)
aogBearerToken
  = lens _aogBearerToken
      (\ s a -> s{_aogBearerToken = a})

-- | REQUIRED. Order ID.
aogOrderId :: Lens' AccountsOrdersGet Text
aogOrderId
  = lens _aogOrderId (\ s a -> s{_aogOrderId = a})

-- | JSONP
aogCallback :: Lens' AccountsOrdersGet (Maybe Text)
aogCallback
  = lens _aogCallback (\ s a -> s{_aogCallback = a})

instance GoogleRequest AccountsOrdersGet where
        type Rs AccountsOrdersGet = Order
        type Scopes AccountsOrdersGet =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsOrdersGet'{..}
          = go _aogAccountId _aogOrderId _aogXgafv
              _aogUploadProtocol
              (Just _aogPp)
              _aogAccessToken
              _aogUploadType
              _aogBearerToken
              _aogCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsOrdersGetResource)
                      mempty
