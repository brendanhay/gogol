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
-- Retrieves a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.get@.
module Network.Google.Resource.Content.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet
    , ProductsGet

    -- * Request Lenses
    , pggMerchantId
    , pggProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.get@ method which the
-- 'ProductsGet' request conforms to.
type ProductsGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ 'productsGet' smart constructor.
data ProductsGet = ProductsGet
    { _pggMerchantId :: !(JSONText Word64)
    , _pggProductId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggMerchantId'
--
-- * 'pggProductId'
productsGet
    :: Word64 -- ^ 'pggMerchantId'
    -> Text -- ^ 'pggProductId'
    -> ProductsGet
productsGet pPggMerchantId_ pPggProductId_ =
    ProductsGet
    { _pggMerchantId = _Coerce # pPggMerchantId_
    , _pggProductId = pPggProductId_
    }

-- | The ID of the managing account.
pggMerchantId :: Lens' ProductsGet Word64
pggMerchantId
  = lens _pggMerchantId
      (\ s a -> s{_pggMerchantId = a})
      . _Coerce

-- | The ID of the product.
pggProductId :: Lens' ProductsGet Text
pggProductId
  = lens _pggProductId (\ s a -> s{_pggProductId = a})

instance GoogleRequest ProductsGet where
        type Rs ProductsGet = Product
        requestClient ProductsGet{..}
          = go _pggMerchantId _pggProductId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
