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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsDelete@.
module Network.Google.Resource.Content.Products.Delete
    (
    -- * REST Resource
      ProductsDeleteResource

    -- * Creating a Request
    , productsDelete'
    , ProductsDelete'

    -- * Request Lenses
    , pdMerchantId
    , pdProductId
    , pdDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsDelete@ method which the
-- 'ProductsDelete'' request conforms to.
type ProductsDeleteResource =
     Capture "merchantId" Word64 :>
       "products" :>
         Capture "productId" Text :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a product from your Merchant Center account.
--
-- /See:/ 'productsDelete'' smart constructor.
data ProductsDelete' = ProductsDelete'
    { _pdMerchantId :: !Word64
    , _pdProductId  :: !Text
    , _pdDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdMerchantId'
--
-- * 'pdProductId'
--
-- * 'pdDryRun'
productsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'productId'
    -> ProductsDelete'
productsDelete' pPdMerchantId_ pPdProductId_ =
    ProductsDelete'
    { _pdMerchantId = pPdMerchantId_
    , _pdProductId = pPdProductId_
    , _pdDryRun = Nothing
    }

-- | The ID of the managing account.
pdMerchantId :: Lens' ProductsDelete' Word64
pdMerchantId
  = lens _pdMerchantId (\ s a -> s{_pdMerchantId = a})

-- | The ID of the product.
pdProductId :: Lens' ProductsDelete' Text
pdProductId
  = lens _pdProductId (\ s a -> s{_pdProductId = a})

-- | Flag to run the request in dry-run mode.
pdDryRun :: Lens' ProductsDelete' (Maybe Bool)
pdDryRun = lens _pdDryRun (\ s a -> s{_pdDryRun = a})

instance GoogleRequest ProductsDelete' where
        type Rs ProductsDelete' = ()
        requestClient ProductsDelete'{..}
          = go _pdMerchantId _pdProductId _pdDryRun
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsDeleteResource)
                      mempty
