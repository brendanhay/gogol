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
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.orders.refund@.
module Network.Google.Resource.AndroidPublisher.Orders.Refund
    (
    -- * REST Resource
      OrdersRefundResource

    -- * Creating a Request
    , ordersRefund
    , OrdersRefund

    -- * Request Lenses
    , orXgafv
    , orUploadProtocol
    , orPackageName
    , orAccessToken
    , orUploadType
    , orRevoke
    , orOrderId
    , orCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.orders.refund@ method which the
-- 'OrdersRefund' request conforms to.
type OrdersRefundResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "orders" :>
               CaptureMode "orderId" "refund" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "revoke" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refund a user\'s subscription or in-app purchase order.
--
-- /See:/ 'ordersRefund' smart constructor.
data OrdersRefund =
  OrdersRefund'
    { _orXgafv :: !(Maybe Xgafv)
    , _orUploadProtocol :: !(Maybe Text)
    , _orPackageName :: !Text
    , _orAccessToken :: !(Maybe Text)
    , _orUploadType :: !(Maybe Text)
    , _orRevoke :: !(Maybe Bool)
    , _orOrderId :: !Text
    , _orCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orXgafv'
--
-- * 'orUploadProtocol'
--
-- * 'orPackageName'
--
-- * 'orAccessToken'
--
-- * 'orUploadType'
--
-- * 'orRevoke'
--
-- * 'orOrderId'
--
-- * 'orCallback'
ordersRefund
    :: Text -- ^ 'orPackageName'
    -> Text -- ^ 'orOrderId'
    -> OrdersRefund
ordersRefund pOrPackageName_ pOrOrderId_ =
  OrdersRefund'
    { _orXgafv = Nothing
    , _orUploadProtocol = Nothing
    , _orPackageName = pOrPackageName_
    , _orAccessToken = Nothing
    , _orUploadType = Nothing
    , _orRevoke = Nothing
    , _orOrderId = pOrOrderId_
    , _orCallback = Nothing
    }


-- | V1 error format.
orXgafv :: Lens' OrdersRefund (Maybe Xgafv)
orXgafv = lens _orXgafv (\ s a -> s{_orXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orUploadProtocol :: Lens' OrdersRefund (Maybe Text)
orUploadProtocol
  = lens _orUploadProtocol
      (\ s a -> s{_orUploadProtocol = a})

-- | The package name of the application for which this subscription or
-- in-app item was purchased (for example, \'com.some.thing\').
orPackageName :: Lens' OrdersRefund Text
orPackageName
  = lens _orPackageName
      (\ s a -> s{_orPackageName = a})

-- | OAuth access token.
orAccessToken :: Lens' OrdersRefund (Maybe Text)
orAccessToken
  = lens _orAccessToken
      (\ s a -> s{_orAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orUploadType :: Lens' OrdersRefund (Maybe Text)
orUploadType
  = lens _orUploadType (\ s a -> s{_orUploadType = a})

-- | Whether to revoke the purchased item. If set to true, access to the
-- subscription or in-app item will be terminated immediately. If the item
-- is a recurring subscription, all future payments will also be
-- terminated. Consumed in-app items need to be handled by developer\'s
-- app. (optional).
orRevoke :: Lens' OrdersRefund (Maybe Bool)
orRevoke = lens _orRevoke (\ s a -> s{_orRevoke = a})

-- | The order ID provided to the user when the subscription or in-app order
-- was purchased.
orOrderId :: Lens' OrdersRefund Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

-- | JSONP
orCallback :: Lens' OrdersRefund (Maybe Text)
orCallback
  = lens _orCallback (\ s a -> s{_orCallback = a})

instance GoogleRequest OrdersRefund where
        type Rs OrdersRefund = ()
        type Scopes OrdersRefund =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient OrdersRefund'{..}
          = go _orPackageName _orOrderId _orXgafv
              _orUploadProtocol
              _orAccessToken
              _orUploadType
              _orRevoke
              _orCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy OrdersRefundResource)
                      mempty
