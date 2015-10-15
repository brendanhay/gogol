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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCustombatch@.
module Network.Google.Resource.Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchResource

    -- * Creating a Request
    , ordersCustombatch'
    , OrdersCustombatch'

    -- * Request Lenses
    , ordPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCustombatch@ method which the
-- 'OrdersCustombatch'' request conforms to.
type OrdersCustombatchResource =
     "orders" :>
       "batch" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] OrdersCustomBatchRequest :>
             Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ 'ordersCustombatch'' smart constructor.
newtype OrdersCustombatch' = OrdersCustombatch'
    { _ordPayload :: OrdersCustomBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordPayload'
ordersCustombatch'
    :: OrdersCustomBatchRequest -- ^ 'payload'
    -> OrdersCustombatch'
ordersCustombatch' pOrdPayload_ =
    OrdersCustombatch'
    { _ordPayload = pOrdPayload_
    }

-- | Multipart request metadata.
ordPayload :: Lens' OrdersCustombatch' OrdersCustomBatchRequest
ordPayload
  = lens _ordPayload (\ s a -> s{_ordPayload = a})

instance GoogleRequest OrdersCustombatch' where
        type Rs OrdersCustombatch' =
             OrdersCustomBatchResponse
        requestClient OrdersCustombatch'{..}
          = go (Just AltJSON) _ordPayload shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCustombatchResource)
                      mempty
