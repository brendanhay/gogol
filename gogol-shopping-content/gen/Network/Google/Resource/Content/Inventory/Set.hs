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
-- Module      : Network.Google.Resource.Content.Inventory.Set
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates price and availability of a product in your Merchant Center
-- account. This operation does not update the expiration date of the
-- product. This method can only be called for non-multi-client accounts.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.inventory.set@.
module Network.Google.Resource.Content.Inventory.Set
    (
    -- * REST Resource
      InventorySetResource

    -- * Creating a Request
    , inventorySet
    , InventorySet

    -- * Request Lenses
    , isMerchantId
    , isStoreCode
    , isPayload
    , isProductId
    , isDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.inventory.set@ method which the
-- 'InventorySet' request conforms to.
type InventorySetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "inventory" :>
             Capture "storeCode" Text :>
               "products" :>
                 Capture "productId" Text :>
                   QueryParam "dryRun" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InventorySetRequest :>
                         Post '[JSON] InventorySetResponse

-- | Updates price and availability of a product in your Merchant Center
-- account. This operation does not update the expiration date of the
-- product. This method can only be called for non-multi-client accounts.
--
-- /See:/ 'inventorySet' smart constructor.
data InventorySet = InventorySet'
    { _isMerchantId :: !(Textual Word64)
    , _isStoreCode  :: !Text
    , _isPayload    :: !InventorySetRequest
    , _isProductId  :: !Text
    , _isDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isMerchantId'
--
-- * 'isStoreCode'
--
-- * 'isPayload'
--
-- * 'isProductId'
--
-- * 'isDryRun'
inventorySet
    :: Word64 -- ^ 'isMerchantId'
    -> Text -- ^ 'isStoreCode'
    -> InventorySetRequest -- ^ 'isPayload'
    -> Text -- ^ 'isProductId'
    -> InventorySet
inventorySet pIsMerchantId_ pIsStoreCode_ pIsPayload_ pIsProductId_ =
    InventorySet'
    { _isMerchantId = _Coerce # pIsMerchantId_
    , _isStoreCode = pIsStoreCode_
    , _isPayload = pIsPayload_
    , _isProductId = pIsProductId_
    , _isDryRun = Nothing
    }

-- | The ID of the managing account.
isMerchantId :: Lens' InventorySet Word64
isMerchantId
  = lens _isMerchantId (\ s a -> s{_isMerchantId = a})
      . _Coerce

-- | The code of the store for which to update price and availability. Use
-- online to update price and availability of an online product.
isStoreCode :: Lens' InventorySet Text
isStoreCode
  = lens _isStoreCode (\ s a -> s{_isStoreCode = a})

-- | Multipart request metadata.
isPayload :: Lens' InventorySet InventorySetRequest
isPayload
  = lens _isPayload (\ s a -> s{_isPayload = a})

-- | The ID of the product for which to update price and availability.
isProductId :: Lens' InventorySet Text
isProductId
  = lens _isProductId (\ s a -> s{_isProductId = a})

-- | Flag to run the request in dry-run mode.
isDryRun :: Lens' InventorySet (Maybe Bool)
isDryRun = lens _isDryRun (\ s a -> s{_isDryRun = a})

instance GoogleRequest InventorySet where
        type Rs InventorySet = InventorySetResponse
        type Scopes InventorySet =
             '["https://www.googleapis.com/auth/content"]
        requestClient InventorySet'{..}
          = go _isMerchantId _isStoreCode _isProductId
              _isDryRun
              (Just AltJSON)
              _isPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy InventorySetResource)
                      mempty
