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
-- Module      : Network.Google.Resource.Content.Orders.Returnrefundlineitem
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns and refunds a line item. Note that this method can only be
-- called on fully shipped orders. Please also note that the Orderreturns
-- API is the preferred way to handle returns after you receive a return
-- from a customer. You can use Orderreturns.list or Orderreturns.get to
-- search for the return, and then use Orderreturns.processreturn to issue
-- the refund. If the return cannot be found, then we recommend using this
-- API to issue a refund.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.returnrefundlineitem@.
module Network.Google.Resource.Content.Orders.Returnrefundlineitem
    (
    -- * REST Resource
      OrdersReturnrefundlineitemResource

    -- * Creating a Request
    , ordersReturnrefundlineitem
    , OrdersReturnrefundlineitem

    -- * Request Lenses
    , orXgafv
    , orMerchantId
    , orUploadProtocol
    , orAccessToken
    , orUploadType
    , orPayload
    , orOrderId
    , orCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.returnrefundlineitem@ method which the
-- 'OrdersReturnrefundlineitem' request conforms to.
type OrdersReturnrefundlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "returnRefundLineItem" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersReturnRefundLineItemRequest
                               :>
                               Post '[JSON] OrdersReturnRefundLineItemResponse

-- | Returns and refunds a line item. Note that this method can only be
-- called on fully shipped orders. Please also note that the Orderreturns
-- API is the preferred way to handle returns after you receive a return
-- from a customer. You can use Orderreturns.list or Orderreturns.get to
-- search for the return, and then use Orderreturns.processreturn to issue
-- the refund. If the return cannot be found, then we recommend using this
-- API to issue a refund.
--
-- /See:/ 'ordersReturnrefundlineitem' smart constructor.
data OrdersReturnrefundlineitem =
  OrdersReturnrefundlineitem'
    { _orXgafv :: !(Maybe Xgafv)
    , _orMerchantId :: !(Textual Word64)
    , _orUploadProtocol :: !(Maybe Text)
    , _orAccessToken :: !(Maybe Text)
    , _orUploadType :: !(Maybe Text)
    , _orPayload :: !OrdersReturnRefundLineItemRequest
    , _orOrderId :: !Text
    , _orCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersReturnrefundlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orXgafv'
--
-- * 'orMerchantId'
--
-- * 'orUploadProtocol'
--
-- * 'orAccessToken'
--
-- * 'orUploadType'
--
-- * 'orPayload'
--
-- * 'orOrderId'
--
-- * 'orCallback'
ordersReturnrefundlineitem
    :: Word64 -- ^ 'orMerchantId'
    -> OrdersReturnRefundLineItemRequest -- ^ 'orPayload'
    -> Text -- ^ 'orOrderId'
    -> OrdersReturnrefundlineitem
ordersReturnrefundlineitem pOrMerchantId_ pOrPayload_ pOrOrderId_ =
  OrdersReturnrefundlineitem'
    { _orXgafv = Nothing
    , _orMerchantId = _Coerce # pOrMerchantId_
    , _orUploadProtocol = Nothing
    , _orAccessToken = Nothing
    , _orUploadType = Nothing
    , _orPayload = pOrPayload_
    , _orOrderId = pOrOrderId_
    , _orCallback = Nothing
    }


-- | V1 error format.
orXgafv :: Lens' OrdersReturnrefundlineitem (Maybe Xgafv)
orXgafv = lens _orXgafv (\ s a -> s{_orXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orMerchantId :: Lens' OrdersReturnrefundlineitem Word64
orMerchantId
  = lens _orMerchantId (\ s a -> s{_orMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orUploadProtocol :: Lens' OrdersReturnrefundlineitem (Maybe Text)
orUploadProtocol
  = lens _orUploadProtocol
      (\ s a -> s{_orUploadProtocol = a})

-- | OAuth access token.
orAccessToken :: Lens' OrdersReturnrefundlineitem (Maybe Text)
orAccessToken
  = lens _orAccessToken
      (\ s a -> s{_orAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orUploadType :: Lens' OrdersReturnrefundlineitem (Maybe Text)
orUploadType
  = lens _orUploadType (\ s a -> s{_orUploadType = a})

-- | Multipart request metadata.
orPayload :: Lens' OrdersReturnrefundlineitem OrdersReturnRefundLineItemRequest
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | The ID of the order.
orOrderId :: Lens' OrdersReturnrefundlineitem Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

-- | JSONP
orCallback :: Lens' OrdersReturnrefundlineitem (Maybe Text)
orCallback
  = lens _orCallback (\ s a -> s{_orCallback = a})

instance GoogleRequest OrdersReturnrefundlineitem
         where
        type Rs OrdersReturnrefundlineitem =
             OrdersReturnRefundLineItemResponse
        type Scopes OrdersReturnrefundlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersReturnrefundlineitem'{..}
          = go _orMerchantId _orOrderId _orXgafv
              _orUploadProtocol
              _orAccessToken
              _orUploadType
              _orCallback
              (Just AltJSON)
              _orPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersReturnrefundlineitemResource)
                      mempty
