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
-- Module      : Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a charge invoice for a shipment group, and triggers a charge
-- capture for non-facilitated payment orders.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderinvoices.createchargeinvoice@.
module Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
    (
    -- * REST Resource
      OrderinvoicesCreatechargeinvoiceResource

    -- * Creating a Request
    , orderinvoicesCreatechargeinvoice
    , OrderinvoicesCreatechargeinvoice

    -- * Request Lenses
    , oMerchantId
    , oPayload
    , oOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderinvoices.createchargeinvoice@ method which the
-- 'OrderinvoicesCreatechargeinvoice' request conforms to.
type OrderinvoicesCreatechargeinvoiceResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderinvoices" :>
             Capture "orderId" Text :>
               "createChargeInvoice" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrderinvoicesCreateChargeInvoiceRequest
                     :>
                     Post '[JSON] OrderinvoicesCreateChargeInvoiceResponse

-- | Creates a charge invoice for a shipment group, and triggers a charge
-- capture for non-facilitated payment orders.
--
-- /See:/ 'orderinvoicesCreatechargeinvoice' smart constructor.
data OrderinvoicesCreatechargeinvoice =
  OrderinvoicesCreatechargeinvoice'
    { _oMerchantId :: !(Textual Word64)
    , _oPayload    :: !OrderinvoicesCreateChargeInvoiceRequest
    , _oOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCreatechargeinvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oMerchantId'
--
-- * 'oPayload'
--
-- * 'oOrderId'
orderinvoicesCreatechargeinvoice
    :: Word64 -- ^ 'oMerchantId'
    -> OrderinvoicesCreateChargeInvoiceRequest -- ^ 'oPayload'
    -> Text -- ^ 'oOrderId'
    -> OrderinvoicesCreatechargeinvoice
orderinvoicesCreatechargeinvoice pOMerchantId_ pOPayload_ pOOrderId_ =
  OrderinvoicesCreatechargeinvoice'
    { _oMerchantId = _Coerce # pOMerchantId_
    , _oPayload = pOPayload_
    , _oOrderId = pOOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oMerchantId :: Lens' OrderinvoicesCreatechargeinvoice Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a}) .
      _Coerce

-- | Multipart request metadata.
oPayload :: Lens' OrderinvoicesCreatechargeinvoice OrderinvoicesCreateChargeInvoiceRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | The ID of the order.
oOrderId :: Lens' OrderinvoicesCreatechargeinvoice Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

instance GoogleRequest
           OrderinvoicesCreatechargeinvoice
         where
        type Rs OrderinvoicesCreatechargeinvoice =
             OrderinvoicesCreateChargeInvoiceResponse
        type Scopes OrderinvoicesCreatechargeinvoice =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderinvoicesCreatechargeinvoice'{..}
          = go _oMerchantId _oOrderId (Just AltJSON) _oPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderinvoicesCreatechargeinvoiceResource)
                      mempty
