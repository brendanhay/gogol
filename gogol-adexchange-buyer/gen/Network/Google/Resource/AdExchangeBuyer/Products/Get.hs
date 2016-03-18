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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested product by id.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.products.get@.
module Network.Google.Resource.AdExchangeBuyer.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet
    , ProductsGet

    -- * Request Lenses
    , pgProductId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.products.get@ method which the
-- 'ProductsGet' request conforms to.
type ProductsGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "products" :>
           Capture "productId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Gets the requested product by id.
--
-- /See:/ 'productsGet' smart constructor.
newtype ProductsGet = ProductsGet
    { _pgProductId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProductId'
productsGet
    :: Text -- ^ 'pgProductId'
    -> ProductsGet
productsGet pPgProductId_ =
    ProductsGet
    { _pgProductId = pPgProductId_
    }

-- | The id for the product to get the head revision for.
pgProductId :: Lens' ProductsGet Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

instance GoogleRequest ProductsGet where
        type Rs ProductsGet = Product
        requestClient ProductsGet{..}
          = go _pgProductId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
