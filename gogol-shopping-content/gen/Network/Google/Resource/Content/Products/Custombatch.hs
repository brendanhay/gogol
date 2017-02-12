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
-- This method can only be called for non-multi-client accounts.
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
    , pcDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.custombatch@ method which the
-- 'ProductsCustombatch' request conforms to.
type ProductsCustombatchResource =
     "content" :>
       "v2" :>
         "products" :>
           "batch" :>
             QueryParam "dryRun" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ProductsCustomBatchRequest :>
                   Post '[JSON] ProductsCustomBatchResponse

-- | Retrieves, inserts, and deletes multiple products in a single request.
-- This method can only be called for non-multi-client accounts.
--
-- /See:/ 'productsCustombatch' smart constructor.
data ProductsCustombatch = ProductsCustombatch'
    { _pcPayload :: !ProductsCustomBatchRequest
    , _pcDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPayload'
--
-- * 'pcDryRun'
productsCustombatch
    :: ProductsCustomBatchRequest -- ^ 'pcPayload'
    -> ProductsCustombatch
productsCustombatch pPcPayload_ =
    ProductsCustombatch'
    { _pcPayload = pPcPayload_
    , _pcDryRun = Nothing
    }

-- | Multipart request metadata.
pcPayload :: Lens' ProductsCustombatch ProductsCustomBatchRequest
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | Flag to run the request in dry-run mode.
pcDryRun :: Lens' ProductsCustombatch (Maybe Bool)
pcDryRun = lens _pcDryRun (\ s a -> s{_pcDryRun = a})

instance GoogleRequest ProductsCustombatch where
        type Rs ProductsCustombatch =
             ProductsCustomBatchResponse
        type Scopes ProductsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsCustombatch'{..}
          = go _pcDryRun (Just AltJSON) _pcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsCustombatchResource)
                      mempty
