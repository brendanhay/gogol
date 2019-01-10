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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the purchase and consumption status of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.products.get@.
module Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
    (
    -- * REST Resource
      PurchasesProductsGetResource

    -- * Creating a Request
    , purchasesProductsGet
    , PurchasesProductsGet

    -- * Request Lenses
    , ppgPackageName
    , ppgToken
    , ppgProductId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.products.get@ method which the
-- 'PurchasesProductsGet' request conforms to.
type PurchasesProductsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "products" :>
                 Capture "productId" Text :>
                   "tokens" :>
                     Capture "token" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ProductPurchase

-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ 'purchasesProductsGet' smart constructor.
data PurchasesProductsGet = PurchasesProductsGet'
    { _ppgPackageName :: !Text
    , _ppgToken       :: !Text
    , _ppgProductId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppgPackageName'
--
-- * 'ppgToken'
--
-- * 'ppgProductId'
purchasesProductsGet
    :: Text -- ^ 'ppgPackageName'
    -> Text -- ^ 'ppgToken'
    -> Text -- ^ 'ppgProductId'
    -> PurchasesProductsGet
purchasesProductsGet pPpgPackageName_ pPpgToken_ pPpgProductId_ =
    PurchasesProductsGet'
    { _ppgPackageName = pPpgPackageName_
    , _ppgToken = pPpgToken_
    , _ppgProductId = pPpgProductId_
    }

-- | The package name of the application the inapp product was sold in (for
-- example, \'com.some.thing\').
ppgPackageName :: Lens' PurchasesProductsGet Text
ppgPackageName
  = lens _ppgPackageName
      (\ s a -> s{_ppgPackageName = a})

-- | The token provided to the user\'s device when the inapp product was
-- purchased.
ppgToken :: Lens' PurchasesProductsGet Text
ppgToken = lens _ppgToken (\ s a -> s{_ppgToken = a})

-- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
ppgProductId :: Lens' PurchasesProductsGet Text
ppgProductId
  = lens _ppgProductId (\ s a -> s{_ppgProductId = a})

instance GoogleRequest PurchasesProductsGet where
        type Rs PurchasesProductsGet = ProductPurchase
        type Scopes PurchasesProductsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesProductsGet'{..}
          = go _ppgPackageName _ppgProductId _ppgToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesProductsGetResource)
                      mempty
