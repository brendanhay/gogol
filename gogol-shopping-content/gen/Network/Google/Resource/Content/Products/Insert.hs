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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a product to your Merchant Center account. If an item with the
-- same channel, contentLanguage, offerId, and targetCountry already
-- exists, this method updates that entry.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.insert@.
module Network.Google.Resource.Content.Products.Insert
    (
    -- * REST Resource
      ProductsInsertResource

    -- * Creating a Request
    , productsInsert
    , ProductsInsert

    -- * Request Lenses
    , piiMerchantId
    , piiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.insert@ method which the
-- 'ProductsInsert' request conforms to.
type ProductsInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Product :> Post '[JSON] Product

-- | Uploads a product to your Merchant Center account. If an item with the
-- same channel, contentLanguage, offerId, and targetCountry already
-- exists, this method updates that entry.
--
-- /See:/ 'productsInsert' smart constructor.
data ProductsInsert = ProductsInsert'
    { _piiMerchantId :: !(Textual Word64)
    , _piiPayload    :: !Product
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiMerchantId'
--
-- * 'piiPayload'
productsInsert
    :: Word64 -- ^ 'piiMerchantId'
    -> Product -- ^ 'piiPayload'
    -> ProductsInsert
productsInsert pPiiMerchantId_ pPiiPayload_ =
    ProductsInsert'
    { _piiMerchantId = _Coerce # pPiiMerchantId_
    , _piiPayload = pPiiPayload_
    }

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
piiMerchantId :: Lens' ProductsInsert Word64
piiMerchantId
  = lens _piiMerchantId
      (\ s a -> s{_piiMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
piiPayload :: Lens' ProductsInsert Product
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

instance GoogleRequest ProductsInsert where
        type Rs ProductsInsert = Product
        type Scopes ProductsInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsInsert'{..}
          = go _piiMerchantId (Just AltJSON) _piiPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsInsertResource)
                      mempty
