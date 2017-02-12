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
-- Module      : Network.Google.Resource.Content.Orders.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves or modifies multiple orders in a single request. This method
-- can only be called for non-multi-client accounts.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.custombatch@.
module Network.Google.Resource.Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchResource

    -- * Creating a Request
    , ordersCustombatch
    , OrdersCustombatch

    -- * Request Lenses
    , ocPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.custombatch@ method which the
-- 'OrdersCustombatch' request conforms to.
type OrdersCustombatchResource =
     "content" :>
       "v2" :>
         "orders" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] OrdersCustomBatchRequest :>
                 Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request. This method
-- can only be called for non-multi-client accounts.
--
-- /See:/ 'ordersCustombatch' smart constructor.
newtype OrdersCustombatch = OrdersCustombatch'
    { _ocPayload :: OrdersCustomBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocPayload'
ordersCustombatch
    :: OrdersCustomBatchRequest -- ^ 'ocPayload'
    -> OrdersCustombatch
ordersCustombatch pOcPayload_ =
    OrdersCustombatch'
    { _ocPayload = pOcPayload_
    }

-- | Multipart request metadata.
ocPayload :: Lens' OrdersCustombatch OrdersCustomBatchRequest
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

instance GoogleRequest OrdersCustombatch where
        type Rs OrdersCustombatch = OrdersCustomBatchResponse
        type Scopes OrdersCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCustombatch'{..}
          = go (Just AltJSON) _ocPayload shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCustombatchResource)
                      mempty
