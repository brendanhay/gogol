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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested product by ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.products.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.Get
    (
    -- * REST Resource
      AccountsProductsGetResource

    -- * Creating a Request
    , accountsProductsGet
    , AccountsProductsGet

    -- * Request Lenses
    , apgXgafv
    , apgUploadProtocol
    , apgAccessToken
    , apgUploadType
    , apgAccountId
    , apgProductId
    , apgCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.products.get@ method which the
-- 'AccountsProductsGet' request conforms to.
type AccountsProductsGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Gets the requested product by ID.
--
-- /See:/ 'accountsProductsGet' smart constructor.
data AccountsProductsGet =
  AccountsProductsGet'
    { _apgXgafv :: !(Maybe Xgafv)
    , _apgUploadProtocol :: !(Maybe Text)
    , _apgAccessToken :: !(Maybe Text)
    , _apgUploadType :: !(Maybe Text)
    , _apgAccountId :: !Text
    , _apgProductId :: !Text
    , _apgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgXgafv'
--
-- * 'apgUploadProtocol'
--
-- * 'apgAccessToken'
--
-- * 'apgUploadType'
--
-- * 'apgAccountId'
--
-- * 'apgProductId'
--
-- * 'apgCallback'
accountsProductsGet
    :: Text -- ^ 'apgAccountId'
    -> Text -- ^ 'apgProductId'
    -> AccountsProductsGet
accountsProductsGet pApgAccountId_ pApgProductId_ =
  AccountsProductsGet'
    { _apgXgafv = Nothing
    , _apgUploadProtocol = Nothing
    , _apgAccessToken = Nothing
    , _apgUploadType = Nothing
    , _apgAccountId = pApgAccountId_
    , _apgProductId = pApgProductId_
    , _apgCallback = Nothing
    }


-- | V1 error format.
apgXgafv :: Lens' AccountsProductsGet (Maybe Xgafv)
apgXgafv = lens _apgXgafv (\ s a -> s{_apgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apgUploadProtocol :: Lens' AccountsProductsGet (Maybe Text)
apgUploadProtocol
  = lens _apgUploadProtocol
      (\ s a -> s{_apgUploadProtocol = a})

-- | OAuth access token.
apgAccessToken :: Lens' AccountsProductsGet (Maybe Text)
apgAccessToken
  = lens _apgAccessToken
      (\ s a -> s{_apgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apgUploadType :: Lens' AccountsProductsGet (Maybe Text)
apgUploadType
  = lens _apgUploadType
      (\ s a -> s{_apgUploadType = a})

-- | Account ID of the buyer.
apgAccountId :: Lens' AccountsProductsGet Text
apgAccountId
  = lens _apgAccountId (\ s a -> s{_apgAccountId = a})

-- | The ID for the product to get the head revision for.
apgProductId :: Lens' AccountsProductsGet Text
apgProductId
  = lens _apgProductId (\ s a -> s{_apgProductId = a})

-- | JSONP
apgCallback :: Lens' AccountsProductsGet (Maybe Text)
apgCallback
  = lens _apgCallback (\ s a -> s{_apgCallback = a})

instance GoogleRequest AccountsProductsGet where
        type Rs AccountsProductsGet = Product
        type Scopes AccountsProductsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProductsGet'{..}
          = go _apgAccountId _apgProductId _apgXgafv
              _apgUploadProtocol
              _apgAccessToken
              _apgUploadType
              _apgCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsGetResource)
                      mempty
