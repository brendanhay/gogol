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
-- Module      : Network.Google.Resource.Content.Productstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.productstatuses.get@.
module Network.Google.Resource.Content.Productstatuses.Get
    (
    -- * REST Resource
      ProductstatusesGetResource

    -- * Creating a Request
    , productstatusesGet
    , ProductstatusesGet

    -- * Request Lenses
    , pgMerchantId
    , pgProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.get@ method which the
-- 'ProductstatusesGet' request conforms to.
type ProductstatusesGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" Word64 :>
           "productstatuses" :>
             Capture "productId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] ProductStatus

-- | Gets the status of a product from your Merchant Center account.
--
-- /See:/ 'productstatusesGet' smart constructor.
data ProductstatusesGet = ProductstatusesGet
    { _pgMerchantId :: !Word64
    , _pgProductId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgMerchantId'
--
-- * 'pgProductId'
productstatusesGet
    :: Word64 -- ^ 'pgMerchantId'
    -> Text -- ^ 'pgProductId'
    -> ProductstatusesGet
productstatusesGet pPgMerchantId_ pPgProductId_ =
    ProductstatusesGet
    { _pgMerchantId = pPgMerchantId_
    , _pgProductId = pPgProductId_
    }

-- | The ID of the managing account.
pgMerchantId :: Lens' ProductstatusesGet Word64
pgMerchantId
  = lens _pgMerchantId (\ s a -> s{_pgMerchantId = a})

-- | The ID of the product.
pgProductId :: Lens' ProductstatusesGet Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

instance GoogleRequest ProductstatusesGet where
        type Rs ProductstatusesGet = ProductStatus
        requestClient ProductstatusesGet{..}
          = go _pgMerchantId _pgProductId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesGetResource)
                      mempty
