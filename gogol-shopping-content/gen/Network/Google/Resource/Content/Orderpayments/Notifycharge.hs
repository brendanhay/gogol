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
-- Module      : Network.Google.Resource.Content.Orderpayments.Notifycharge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notify about charge on user\'s selected payments method.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderpayments.notifycharge@.
module Network.Google.Resource.Content.Orderpayments.Notifycharge
    (
    -- * REST Resource
      OrderpaymentsNotifychargeResource

    -- * Creating a Request
    , orderpaymentsNotifycharge
    , OrderpaymentsNotifycharge

    -- * Request Lenses
    , onnMerchantId
    , onnPayload
    , onnOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderpayments.notifycharge@ method which the
-- 'OrderpaymentsNotifycharge' request conforms to.
type OrderpaymentsNotifychargeResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderpayments" :>
             Capture "orderId" Text :>
               "notifyCharge" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrderpaymentsNotifyChargeRequest :>
                     Post '[JSON] OrderpaymentsNotifyChargeResponse

-- | Notify about charge on user\'s selected payments method.
--
-- /See:/ 'orderpaymentsNotifycharge' smart constructor.
data OrderpaymentsNotifycharge = OrderpaymentsNotifycharge'
    { _onnMerchantId :: !(Textual Word64)
    , _onnPayload    :: !OrderpaymentsNotifyChargeRequest
    , _onnOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderpaymentsNotifycharge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onnMerchantId'
--
-- * 'onnPayload'
--
-- * 'onnOrderId'
orderpaymentsNotifycharge
    :: Word64 -- ^ 'onnMerchantId'
    -> OrderpaymentsNotifyChargeRequest -- ^ 'onnPayload'
    -> Text -- ^ 'onnOrderId'
    -> OrderpaymentsNotifycharge
orderpaymentsNotifycharge pOnnMerchantId_ pOnnPayload_ pOnnOrderId_ =
    OrderpaymentsNotifycharge'
    { _onnMerchantId = _Coerce # pOnnMerchantId_
    , _onnPayload = pOnnPayload_
    , _onnOrderId = pOnnOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
onnMerchantId :: Lens' OrderpaymentsNotifycharge Word64
onnMerchantId
  = lens _onnMerchantId
      (\ s a -> s{_onnMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
onnPayload :: Lens' OrderpaymentsNotifycharge OrderpaymentsNotifyChargeRequest
onnPayload
  = lens _onnPayload (\ s a -> s{_onnPayload = a})

-- | The ID of the order for which charge is happening.
onnOrderId :: Lens' OrderpaymentsNotifycharge Text
onnOrderId
  = lens _onnOrderId (\ s a -> s{_onnOrderId = a})

instance GoogleRequest OrderpaymentsNotifycharge
         where
        type Rs OrderpaymentsNotifycharge =
             OrderpaymentsNotifyChargeResponse
        type Scopes OrderpaymentsNotifycharge =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderpaymentsNotifycharge'{..}
          = go _onnMerchantId _onnOrderId (Just AltJSON)
              _onnPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderpaymentsNotifychargeResource)
                      mempty
