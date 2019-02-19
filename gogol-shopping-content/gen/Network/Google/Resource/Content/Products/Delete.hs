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
-- Module      : Network.Google.Resource.Content.Products.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.delete@.
module Network.Google.Resource.Content.Products.Delete
    (
    -- * REST Resource
      ProductsDeleteResource

    -- * Creating a Request
    , productsDelete
    , ProductsDelete

    -- * Request Lenses
    , proMerchantId
    , proProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.delete@ method which the
-- 'ProductsDelete' request conforms to.
type ProductsDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a product from your Merchant Center account.
--
-- /See:/ 'productsDelete' smart constructor.
data ProductsDelete =
  ProductsDelete'
    { _proMerchantId :: !(Textual Word64)
    , _proProductId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proMerchantId'
--
-- * 'proProductId'
productsDelete
    :: Word64 -- ^ 'proMerchantId'
    -> Text -- ^ 'proProductId'
    -> ProductsDelete
productsDelete pProMerchantId_ pProProductId_ =
  ProductsDelete'
    {_proMerchantId = _Coerce # pProMerchantId_, _proProductId = pProProductId_}

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
proMerchantId :: Lens' ProductsDelete Word64
proMerchantId
  = lens _proMerchantId
      (\ s a -> s{_proMerchantId = a})
      . _Coerce

-- | The REST id of the product.
proProductId :: Lens' ProductsDelete Text
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

instance GoogleRequest ProductsDelete where
        type Rs ProductsDelete = ()
        type Scopes ProductsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsDelete'{..}
          = go _proMerchantId _proProductId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsDeleteResource)
                      mempty
