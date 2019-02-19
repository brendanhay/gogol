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
-- Module      : Network.Google.Resource.Content.Products.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.custombatch@.
module Network.Google.Resource.Content.Products.Custombatch
    (
    -- * REST Resource
      ProductsCustombatchResource

    -- * Creating a Request
    , productsCustombatch
    , ProductsCustombatch

    -- * Request Lenses
    , pcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.custombatch@ method which the
-- 'ProductsCustombatch' request conforms to.
type ProductsCustombatchResource =
     "content" :>
       "v2.1" :>
         "products" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] ProductsCustomBatchRequest :>
                 Post '[JSON] ProductsCustomBatchResponse

-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ 'productsCustombatch' smart constructor.
newtype ProductsCustombatch =
  ProductsCustombatch'
    { _pcPayload :: ProductsCustomBatchRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPayload'
productsCustombatch
    :: ProductsCustomBatchRequest -- ^ 'pcPayload'
    -> ProductsCustombatch
productsCustombatch pPcPayload_ =
  ProductsCustombatch' {_pcPayload = pPcPayload_}


-- | Multipart request metadata.
pcPayload :: Lens' ProductsCustombatch ProductsCustomBatchRequest
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

instance GoogleRequest ProductsCustombatch where
        type Rs ProductsCustombatch =
             ProductsCustomBatchResponse
        type Scopes ProductsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsCustombatch'{..}
          = go (Just AltJSON) _pcPayload shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsCustombatchResource)
                      mempty
