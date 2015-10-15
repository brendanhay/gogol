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
-- Module      : Network.Google.Resource.Content.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsGet@.
module Network.Google.Resource.Content.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet'
    , ProductsGet'

    -- * Request Lenses
    , pgMerchantId
    , pgProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsGet@ method which the
-- 'ProductsGet'' request conforms to.
type ProductsGetResource =
     Capture "merchantId" Word64 :>
       "products" :>
         Capture "productId" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pgMerchantId :: !Word64
    , _pgProductId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgMerchantId'
--
-- * 'pgProductId'
productsGet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPgMerchantId_ pPgProductId_ =
    ProductsGet'
    { _pgMerchantId = pPgMerchantId_
    , _pgProductId = pPgProductId_
    }

-- | The ID of the managing account.
pgMerchantId :: Lens' ProductsGet' Word64
pgMerchantId
  = lens _pgMerchantId (\ s a -> s{_pgMerchantId = a})

-- | The ID of the product.
pgProductId :: Lens' ProductsGet' Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        requestClient ProductsGet'{..}
          = go _pgMerchantId _pgProductId (Just AltJSON)
              shoppingContent
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
