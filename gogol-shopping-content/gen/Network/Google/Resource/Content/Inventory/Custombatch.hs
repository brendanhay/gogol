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
-- Module      : Network.Google.Resource.Content.Inventory.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentInventoryCustombatch@.
module Network.Google.Resource.Content.Inventory.Custombatch
    (
    -- * REST Resource
      InventoryCustombatchResource

    -- * Creating a Request
    , inventoryCustombatch'
    , InventoryCustombatch'

    -- * Request Lenses
    , icPayload
    , icDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentInventoryCustombatch@ method which the
-- 'InventoryCustombatch'' request conforms to.
type InventoryCustombatchResource =
     "inventory" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] InventoryCustomBatchRequest :>
               Post '[JSON] InventoryCustomBatchResponse

-- | Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ 'inventoryCustombatch'' smart constructor.
data InventoryCustombatch' = InventoryCustombatch'
    { _icPayload :: !InventoryCustomBatchRequest
    , _icDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icPayload'
--
-- * 'icDryRun'
inventoryCustombatch'
    :: InventoryCustomBatchRequest -- ^ 'payload'
    -> InventoryCustombatch'
inventoryCustombatch' pIcPayload_ =
    InventoryCustombatch'
    { _icPayload = pIcPayload_
    , _icDryRun = Nothing
    }

-- | Multipart request metadata.
icPayload :: Lens' InventoryCustombatch' InventoryCustomBatchRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | Flag to run the request in dry-run mode.
icDryRun :: Lens' InventoryCustombatch' (Maybe Bool)
icDryRun = lens _icDryRun (\ s a -> s{_icDryRun = a})

instance GoogleRequest InventoryCustombatch' where
        type Rs InventoryCustombatch' =
             InventoryCustomBatchResponse
        requestClient InventoryCustombatch'{..}
          = go _icDryRun (Just AltJSON) _icPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryCustombatchResource)
                      mempty
