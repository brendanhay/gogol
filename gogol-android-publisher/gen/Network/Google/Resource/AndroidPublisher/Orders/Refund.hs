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
-- Module      : Network.Google.Resource.AndroidPublisher.Orders.Refund
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refund a user\'s subscription or in-app purchase order.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.orders.refund@.
module Network.Google.Resource.AndroidPublisher.Orders.Refund
    (
    -- * REST Resource
      OrdersRefundResource

    -- * Creating a Request
    , ordersRefund
    , OrdersRefund

    -- * Request Lenses
    , orPackageName
    , orRevoke
    , orOrderId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.orders.refund@ method which the
-- 'OrdersRefund' request conforms to.
type OrdersRefundResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "orders" :>
               CaptureMode "orderId" "refund" Text :>
                 QueryParam "revoke" Bool :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refund a user\'s subscription or in-app purchase order.
--
-- /See:/ 'ordersRefund' smart constructor.
data OrdersRefund =
  OrdersRefund'
    { _orPackageName :: !Text
    , _orRevoke      :: !(Maybe Bool)
    , _orOrderId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orPackageName'
--
-- * 'orRevoke'
--
-- * 'orOrderId'
ordersRefund
    :: Text -- ^ 'orPackageName'
    -> Text -- ^ 'orOrderId'
    -> OrdersRefund
ordersRefund pOrPackageName_ pOrOrderId_ =
  OrdersRefund'
    { _orPackageName = pOrPackageName_
    , _orRevoke = Nothing
    , _orOrderId = pOrOrderId_
    }

-- | The package name of the application for which this subscription or
-- in-app item was purchased (for example, \'com.some.thing\').
orPackageName :: Lens' OrdersRefund Text
orPackageName
  = lens _orPackageName
      (\ s a -> s{_orPackageName = a})

-- | Whether to revoke the purchased item. If set to true, access to the
-- subscription or in-app item will be terminated immediately. If the item
-- is a recurring subscription, all future payments will also be
-- terminated. Consumed in-app items need to be handled by developer\'s
-- app. (optional)
orRevoke :: Lens' OrdersRefund (Maybe Bool)
orRevoke = lens _orRevoke (\ s a -> s{_orRevoke = a})

-- | The order ID provided to the user when the subscription or in-app order
-- was purchased.
orOrderId :: Lens' OrdersRefund Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

instance GoogleRequest OrdersRefund where
        type Rs OrdersRefund = ()
        type Scopes OrdersRefund =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient OrdersRefund'{..}
          = go _orPackageName _orOrderId _orRevoke
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy OrdersRefundResource)
                      mempty
