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
-- Module      : Network.Google.Resource.Content.Orderpayments.Notifyrefund
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notify about refund on user\'s selected payments method.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderpayments.notifyrefund@.
module Network.Google.Resource.Content.Orderpayments.Notifyrefund
    (
    -- * REST Resource
      OrderpaymentsNotifyrefundResource

    -- * Creating a Request
    , orderpaymentsNotifyrefund
    , OrderpaymentsNotifyrefund

    -- * Request Lenses
    , ooMerchantId
    , ooPayload
    , ooOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderpayments.notifyrefund@ method which the
-- 'OrderpaymentsNotifyrefund' request conforms to.
type OrderpaymentsNotifyrefundResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderpayments" :>
             Capture "orderId" Text :>
               "notifyRefund" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrderpaymentsNotifyRefundRequest :>
                     Post '[JSON] OrderpaymentsNotifyRefundResponse

-- | Notify about refund on user\'s selected payments method.
--
-- /See:/ 'orderpaymentsNotifyrefund' smart constructor.
data OrderpaymentsNotifyrefund =
  OrderpaymentsNotifyrefund'
    { _ooMerchantId :: !(Textual Word64)
    , _ooPayload    :: !OrderpaymentsNotifyRefundRequest
    , _ooOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyrefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooMerchantId'
--
-- * 'ooPayload'
--
-- * 'ooOrderId'
orderpaymentsNotifyrefund
    :: Word64 -- ^ 'ooMerchantId'
    -> OrderpaymentsNotifyRefundRequest -- ^ 'ooPayload'
    -> Text -- ^ 'ooOrderId'
    -> OrderpaymentsNotifyrefund
orderpaymentsNotifyrefund pOoMerchantId_ pOoPayload_ pOoOrderId_ =
  OrderpaymentsNotifyrefund'
    { _ooMerchantId = _Coerce # pOoMerchantId_
    , _ooPayload = pOoPayload_
    , _ooOrderId = pOoOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ooMerchantId :: Lens' OrderpaymentsNotifyrefund Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ooPayload :: Lens' OrderpaymentsNotifyrefund OrderpaymentsNotifyRefundRequest
ooPayload
  = lens _ooPayload (\ s a -> s{_ooPayload = a})

-- | The ID of the order for which charge is happening.
ooOrderId :: Lens' OrderpaymentsNotifyrefund Text
ooOrderId
  = lens _ooOrderId (\ s a -> s{_ooOrderId = a})

instance GoogleRequest OrderpaymentsNotifyrefund
         where
        type Rs OrderpaymentsNotifyrefund =
             OrderpaymentsNotifyRefundResponse
        type Scopes OrderpaymentsNotifyrefund =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderpaymentsNotifyrefund'{..}
          = go _ooMerchantId _ooOrderId (Just AltJSON)
              _ooPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderpaymentsNotifyrefundResource)
                      mempty
