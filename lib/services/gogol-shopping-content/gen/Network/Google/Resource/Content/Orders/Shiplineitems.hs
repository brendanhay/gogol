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
-- Module      : Network.Google.Resource.Content.Orders.Shiplineitems
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks line item(s) as shipped.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.shiplineitems@.
module Network.Google.Resource.Content.Orders.Shiplineitems
    (
    -- * REST Resource
      OrdersShiplineitemsResource

    -- * Creating a Request
    , ordersShiplineitems
    , OrdersShiplineitems

    -- * Request Lenses
    , osXgafv
    , osMerchantId
    , osUploadProtocol
    , osAccessToken
    , osUploadType
    , osPayload
    , osOrderId
    , osCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.shiplineitems@ method which the
-- 'OrdersShiplineitems' request conforms to.
type OrdersShiplineitemsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "shipLineItems" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersShipLineItemsRequest :>
                               Post '[JSON] OrdersShipLineItemsResponse

-- | Marks line item(s) as shipped.
--
-- /See:/ 'ordersShiplineitems' smart constructor.
data OrdersShiplineitems =
  OrdersShiplineitems'
    { _osXgafv :: !(Maybe Xgafv)
    , _osMerchantId :: !(Textual Word64)
    , _osUploadProtocol :: !(Maybe Text)
    , _osAccessToken :: !(Maybe Text)
    , _osUploadType :: !(Maybe Text)
    , _osPayload :: !OrdersShipLineItemsRequest
    , _osOrderId :: !Text
    , _osCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersShiplineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osXgafv'
--
-- * 'osMerchantId'
--
-- * 'osUploadProtocol'
--
-- * 'osAccessToken'
--
-- * 'osUploadType'
--
-- * 'osPayload'
--
-- * 'osOrderId'
--
-- * 'osCallback'
ordersShiplineitems
    :: Word64 -- ^ 'osMerchantId'
    -> OrdersShipLineItemsRequest -- ^ 'osPayload'
    -> Text -- ^ 'osOrderId'
    -> OrdersShiplineitems
ordersShiplineitems pOsMerchantId_ pOsPayload_ pOsOrderId_ =
  OrdersShiplineitems'
    { _osXgafv = Nothing
    , _osMerchantId = _Coerce # pOsMerchantId_
    , _osUploadProtocol = Nothing
    , _osAccessToken = Nothing
    , _osUploadType = Nothing
    , _osPayload = pOsPayload_
    , _osOrderId = pOsOrderId_
    , _osCallback = Nothing
    }


-- | V1 error format.
osXgafv :: Lens' OrdersShiplineitems (Maybe Xgafv)
osXgafv = lens _osXgafv (\ s a -> s{_osXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
osMerchantId :: Lens' OrdersShiplineitems Word64
osMerchantId
  = lens _osMerchantId (\ s a -> s{_osMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osUploadProtocol :: Lens' OrdersShiplineitems (Maybe Text)
osUploadProtocol
  = lens _osUploadProtocol
      (\ s a -> s{_osUploadProtocol = a})

-- | OAuth access token.
osAccessToken :: Lens' OrdersShiplineitems (Maybe Text)
osAccessToken
  = lens _osAccessToken
      (\ s a -> s{_osAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osUploadType :: Lens' OrdersShiplineitems (Maybe Text)
osUploadType
  = lens _osUploadType (\ s a -> s{_osUploadType = a})

-- | Multipart request metadata.
osPayload :: Lens' OrdersShiplineitems OrdersShipLineItemsRequest
osPayload
  = lens _osPayload (\ s a -> s{_osPayload = a})

-- | The ID of the order.
osOrderId :: Lens' OrdersShiplineitems Text
osOrderId
  = lens _osOrderId (\ s a -> s{_osOrderId = a})

-- | JSONP
osCallback :: Lens' OrdersShiplineitems (Maybe Text)
osCallback
  = lens _osCallback (\ s a -> s{_osCallback = a})

instance GoogleRequest OrdersShiplineitems where
        type Rs OrdersShiplineitems =
             OrdersShipLineItemsResponse
        type Scopes OrdersShiplineitems =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersShiplineitems'{..}
          = go _osMerchantId _osOrderId _osXgafv
              _osUploadProtocol
              _osAccessToken
              _osUploadType
              _osCallback
              (Just AltJSON)
              _osPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersShiplineitemsResource)
                      mempty
