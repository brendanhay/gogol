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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsCustombatch@.
module Network.Google.Resource.Content.Products.Custombatch
    (
    -- * REST Resource
      ProductsCustombatchResource

    -- * Creating a Request
    , productsCustombatch'
    , ProductsCustombatch'

    -- * Request Lenses
    , pPayload
    , pDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsCustombatch@ method which the
-- 'ProductsCustombatch'' request conforms to.
type ProductsCustombatchResource =
     "products" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ProductsCustomBatchRequest :>
               Post '[JSON] ProductsCustomBatchResponse

-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ 'productsCustombatch'' smart constructor.
data ProductsCustombatch' = ProductsCustombatch'
    { _pPayload :: !ProductsCustomBatchRequest
    , _pDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPayload'
--
-- * 'pDryRun'
productsCustombatch'
    :: ProductsCustomBatchRequest -- ^ 'payload'
    -> ProductsCustombatch'
productsCustombatch' pPPayload_ =
    ProductsCustombatch'
    { _pPayload = pPPayload_
    , _pDryRun = Nothing
    }

-- | Multipart request metadata.
pPayload :: Lens' ProductsCustombatch' ProductsCustomBatchRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Flag to run the request in dry-run mode.
pDryRun :: Lens' ProductsCustombatch' (Maybe Bool)
pDryRun = lens _pDryRun (\ s a -> s{_pDryRun = a})

instance GoogleRequest ProductsCustombatch' where
        type Rs ProductsCustombatch' =
             ProductsCustomBatchResponse
        requestClient ProductsCustombatch'{..}
          = go _pDryRun (Just AltJSON) _pPayload
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsCustombatchResource)
                      mempty
