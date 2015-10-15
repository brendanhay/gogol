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
-- Module      : Network.Google.Resource.Content.Products.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a product to your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsInsert@.
module Network.Google.Resource.Content.Products.Insert
    (
    -- * REST Resource
      ProductsInsertResource

    -- * Creating a Request
    , productsInsert'
    , ProductsInsert'

    -- * Request Lenses
    , piMerchantId
    , piPayload
    , piDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsInsert@ method which the
-- 'ProductsInsert'' request conforms to.
type ProductsInsertResource =
     Capture "merchantId" Word64 :>
       "products" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Product :> Post '[JSON] Product

-- | Uploads a product to your Merchant Center account.
--
-- /See:/ 'productsInsert'' smart constructor.
data ProductsInsert' = ProductsInsert'
    { _piMerchantId :: !Word64
    , _piPayload    :: !Product
    , _piDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piMerchantId'
--
-- * 'piPayload'
--
-- * 'piDryRun'
productsInsert'
    :: Word64 -- ^ 'merchantId'
    -> Product -- ^ 'payload'
    -> ProductsInsert'
productsInsert' pPiMerchantId_ pPiPayload_ =
    ProductsInsert'
    { _piMerchantId = pPiMerchantId_
    , _piPayload = pPiPayload_
    , _piDryRun = Nothing
    }

-- | The ID of the managing account.
piMerchantId :: Lens' ProductsInsert' Word64
piMerchantId
  = lens _piMerchantId (\ s a -> s{_piMerchantId = a})

-- | Multipart request metadata.
piPayload :: Lens' ProductsInsert' Product
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | Flag to run the request in dry-run mode.
piDryRun :: Lens' ProductsInsert' (Maybe Bool)
piDryRun = lens _piDryRun (\ s a -> s{_piDryRun = a})

instance GoogleRequest ProductsInsert' where
        type Rs ProductsInsert' = Product
        requestClient ProductsInsert'{..}
          = go _piMerchantId _piDryRun (Just AltJSON)
              _piPayload
              shoppingContent
          where go
                  = buildClient (Proxy :: Proxy ProductsInsertResource)
                      mempty
