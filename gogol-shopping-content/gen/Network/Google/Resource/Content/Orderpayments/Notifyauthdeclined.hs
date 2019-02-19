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
-- Module      : Network.Google.Resource.Content.Orderpayments.Notifyauthdeclined
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notify about failure to authorize user\'s payment method.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderpayments.notifyauthdeclined@.
module Network.Google.Resource.Content.Orderpayments.Notifyauthdeclined
    (
    -- * REST Resource
      OrderpaymentsNotifyauthdeclinedResource

    -- * Creating a Request
    , orderpaymentsNotifyauthdeclined
    , OrderpaymentsNotifyauthdeclined

    -- * Request Lenses
    , onMerchantId
    , onPayload
    , onOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderpayments.notifyauthdeclined@ method which the
-- 'OrderpaymentsNotifyauthdeclined' request conforms to.
type OrderpaymentsNotifyauthdeclinedResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderpayments" :>
             Capture "orderId" Text :>
               "notifyAuthDeclined" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrderpaymentsNotifyAuthDeclinedRequest
                     :>
                     Post '[JSON] OrderpaymentsNotifyAuthDeclinedResponse

-- | Notify about failure to authorize user\'s payment method.
--
-- /See:/ 'orderpaymentsNotifyauthdeclined' smart constructor.
data OrderpaymentsNotifyauthdeclined =
  OrderpaymentsNotifyauthdeclined'
    { _onMerchantId :: !(Textual Word64)
    , _onPayload    :: !OrderpaymentsNotifyAuthDeclinedRequest
    , _onOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyauthdeclined' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onMerchantId'
--
-- * 'onPayload'
--
-- * 'onOrderId'
orderpaymentsNotifyauthdeclined
    :: Word64 -- ^ 'onMerchantId'
    -> OrderpaymentsNotifyAuthDeclinedRequest -- ^ 'onPayload'
    -> Text -- ^ 'onOrderId'
    -> OrderpaymentsNotifyauthdeclined
orderpaymentsNotifyauthdeclined pOnMerchantId_ pOnPayload_ pOnOrderId_ =
  OrderpaymentsNotifyauthdeclined'
    { _onMerchantId = _Coerce # pOnMerchantId_
    , _onPayload = pOnPayload_
    , _onOrderId = pOnOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
onMerchantId :: Lens' OrderpaymentsNotifyauthdeclined Word64
onMerchantId
  = lens _onMerchantId (\ s a -> s{_onMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
onPayload :: Lens' OrderpaymentsNotifyauthdeclined OrderpaymentsNotifyAuthDeclinedRequest
onPayload
  = lens _onPayload (\ s a -> s{_onPayload = a})

-- | The ID of the order for which payment authorization was declined.
onOrderId :: Lens' OrderpaymentsNotifyauthdeclined Text
onOrderId
  = lens _onOrderId (\ s a -> s{_onOrderId = a})

instance GoogleRequest
           OrderpaymentsNotifyauthdeclined
         where
        type Rs OrderpaymentsNotifyauthdeclined =
             OrderpaymentsNotifyAuthDeclinedResponse
        type Scopes OrderpaymentsNotifyauthdeclined =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderpaymentsNotifyauthdeclined'{..}
          = go _onMerchantId _onOrderId (Just AltJSON)
              _onPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderpaymentsNotifyauthdeclinedResource)
                      mempty
