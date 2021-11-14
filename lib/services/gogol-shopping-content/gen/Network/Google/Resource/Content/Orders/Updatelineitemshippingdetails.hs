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
-- Module      : Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates ship by and delivery by dates for a line item.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.updatelineitemshippingdetails@.
module Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
    (
    -- * REST Resource
      OrdersUpdatelineitemshippingdetailsResource

    -- * Creating a Request
    , ordersUpdatelineitemshippingdetails
    , OrdersUpdatelineitemshippingdetails

    -- * Request Lenses
    , ousXgafv
    , ousMerchantId
    , ousUploadProtocol
    , ousAccessToken
    , ousUploadType
    , ousPayload
    , ousOrderId
    , ousCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updatelineitemshippingdetails@ method which the
-- 'OrdersUpdatelineitemshippingdetails' request conforms to.
type OrdersUpdatelineitemshippingdetailsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateLineItemShippingDetails" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               OrdersUpdateLineItemShippingDetailsRequest
                               :>
                               Post '[JSON]
                                 OrdersUpdateLineItemShippingDetailsResponse

-- | Updates ship by and delivery by dates for a line item.
--
-- /See:/ 'ordersUpdatelineitemshippingdetails' smart constructor.
data OrdersUpdatelineitemshippingdetails =
  OrdersUpdatelineitemshippingdetails'
    { _ousXgafv :: !(Maybe Xgafv)
    , _ousMerchantId :: !(Textual Word64)
    , _ousUploadProtocol :: !(Maybe Text)
    , _ousAccessToken :: !(Maybe Text)
    , _ousUploadType :: !(Maybe Text)
    , _ousPayload :: !OrdersUpdateLineItemShippingDetailsRequest
    , _ousOrderId :: !Text
    , _ousCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdatelineitemshippingdetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousXgafv'
--
-- * 'ousMerchantId'
--
-- * 'ousUploadProtocol'
--
-- * 'ousAccessToken'
--
-- * 'ousUploadType'
--
-- * 'ousPayload'
--
-- * 'ousOrderId'
--
-- * 'ousCallback'
ordersUpdatelineitemshippingdetails
    :: Word64 -- ^ 'ousMerchantId'
    -> OrdersUpdateLineItemShippingDetailsRequest -- ^ 'ousPayload'
    -> Text -- ^ 'ousOrderId'
    -> OrdersUpdatelineitemshippingdetails
ordersUpdatelineitemshippingdetails pOusMerchantId_ pOusPayload_ pOusOrderId_ =
  OrdersUpdatelineitemshippingdetails'
    { _ousXgafv = Nothing
    , _ousMerchantId = _Coerce # pOusMerchantId_
    , _ousUploadProtocol = Nothing
    , _ousAccessToken = Nothing
    , _ousUploadType = Nothing
    , _ousPayload = pOusPayload_
    , _ousOrderId = pOusOrderId_
    , _ousCallback = Nothing
    }


-- | V1 error format.
ousXgafv :: Lens' OrdersUpdatelineitemshippingdetails (Maybe Xgafv)
ousXgafv = lens _ousXgafv (\ s a -> s{_ousXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ousMerchantId :: Lens' OrdersUpdatelineitemshippingdetails Word64
ousMerchantId
  = lens _ousMerchantId
      (\ s a -> s{_ousMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ousUploadProtocol :: Lens' OrdersUpdatelineitemshippingdetails (Maybe Text)
ousUploadProtocol
  = lens _ousUploadProtocol
      (\ s a -> s{_ousUploadProtocol = a})

-- | OAuth access token.
ousAccessToken :: Lens' OrdersUpdatelineitemshippingdetails (Maybe Text)
ousAccessToken
  = lens _ousAccessToken
      (\ s a -> s{_ousAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ousUploadType :: Lens' OrdersUpdatelineitemshippingdetails (Maybe Text)
ousUploadType
  = lens _ousUploadType
      (\ s a -> s{_ousUploadType = a})

-- | Multipart request metadata.
ousPayload :: Lens' OrdersUpdatelineitemshippingdetails OrdersUpdateLineItemShippingDetailsRequest
ousPayload
  = lens _ousPayload (\ s a -> s{_ousPayload = a})

-- | The ID of the order.
ousOrderId :: Lens' OrdersUpdatelineitemshippingdetails Text
ousOrderId
  = lens _ousOrderId (\ s a -> s{_ousOrderId = a})

-- | JSONP
ousCallback :: Lens' OrdersUpdatelineitemshippingdetails (Maybe Text)
ousCallback
  = lens _ousCallback (\ s a -> s{_ousCallback = a})

instance GoogleRequest
           OrdersUpdatelineitemshippingdetails
         where
        type Rs OrdersUpdatelineitemshippingdetails =
             OrdersUpdateLineItemShippingDetailsResponse
        type Scopes OrdersUpdatelineitemshippingdetails =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          OrdersUpdatelineitemshippingdetails'{..}
          = go _ousMerchantId _ousOrderId _ousXgafv
              _ousUploadProtocol
              _ousAccessToken
              _ousUploadType
              _ousCallback
              (Just AltJSON)
              _ousPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrdersUpdatelineitemshippingdetailsResource)
                      mempty
