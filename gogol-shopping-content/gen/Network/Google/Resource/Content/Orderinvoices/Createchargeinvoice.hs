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
-- capture for orderinvoice enabled orders.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderinvoices.createchargeinvoice@.
module Network.Google.Resource.Content.Orderinvoices.Createchargeinvoice
    (
    -- * REST Resource
      OrderinvoicesCreatechargeinvoiceResource

    -- * Creating a Request
    , orderinvoicesCreatechargeinvoice
    , OrderinvoicesCreatechargeinvoice

    -- * Request Lenses
    , ooXgafv
    , ooMerchantId
    , ooUploadProtocol
    , ooAccessToken
    , ooUploadType
    , ooPayload
    , ooOrderId
    , ooCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderinvoices.createchargeinvoice@ method which the
-- 'OrderinvoicesCreatechargeinvoice' request conforms to.
type OrderinvoicesCreatechargeinvoiceResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderinvoices" :>
             Capture "orderId" Text :>
               "createChargeInvoice" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               OrderinvoicesCreateChargeInvoiceRequest
                               :>
                               Post '[JSON]
                                 OrderinvoicesCreateChargeInvoiceResponse

-- | Creates a charge invoice for a shipment group, and triggers a charge
-- capture for orderinvoice enabled orders.
--
-- /See:/ 'orderinvoicesCreatechargeinvoice' smart constructor.
data OrderinvoicesCreatechargeinvoice =
  OrderinvoicesCreatechargeinvoice'
    { _ooXgafv :: !(Maybe Xgafv)
    , _ooMerchantId :: !(Textual Word64)
    , _ooUploadProtocol :: !(Maybe Text)
    , _ooAccessToken :: !(Maybe Text)
    , _ooUploadType :: !(Maybe Text)
    , _ooPayload :: !OrderinvoicesCreateChargeInvoiceRequest
    , _ooOrderId :: !Text
    , _ooCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreatechargeinvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooXgafv'
--
-- * 'ooMerchantId'
--
-- * 'ooUploadProtocol'
--
-- * 'ooAccessToken'
--
-- * 'ooUploadType'
--
-- * 'ooPayload'
--
-- * 'ooOrderId'
--
-- * 'ooCallback'
orderinvoicesCreatechargeinvoice
    :: Word64 -- ^ 'ooMerchantId'
    -> OrderinvoicesCreateChargeInvoiceRequest -- ^ 'ooPayload'
    -> Text -- ^ 'ooOrderId'
    -> OrderinvoicesCreatechargeinvoice
orderinvoicesCreatechargeinvoice pOoMerchantId_ pOoPayload_ pOoOrderId_ =
  OrderinvoicesCreatechargeinvoice'
    { _ooXgafv = Nothing
    , _ooMerchantId = _Coerce # pOoMerchantId_
    , _ooUploadProtocol = Nothing
    , _ooAccessToken = Nothing
    , _ooUploadType = Nothing
    , _ooPayload = pOoPayload_
    , _ooOrderId = pOoOrderId_
    , _ooCallback = Nothing
    }


-- | V1 error format.
ooXgafv :: Lens' OrderinvoicesCreatechargeinvoice (Maybe Xgafv)
ooXgafv = lens _ooXgafv (\ s a -> s{_ooXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ooMerchantId :: Lens' OrderinvoicesCreatechargeinvoice Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ooUploadProtocol :: Lens' OrderinvoicesCreatechargeinvoice (Maybe Text)
ooUploadProtocol
  = lens _ooUploadProtocol
      (\ s a -> s{_ooUploadProtocol = a})

-- | OAuth access token.
ooAccessToken :: Lens' OrderinvoicesCreatechargeinvoice (Maybe Text)
ooAccessToken
  = lens _ooAccessToken
      (\ s a -> s{_ooAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ooUploadType :: Lens' OrderinvoicesCreatechargeinvoice (Maybe Text)
ooUploadType
  = lens _ooUploadType (\ s a -> s{_ooUploadType = a})

-- | Multipart request metadata.
ooPayload :: Lens' OrderinvoicesCreatechargeinvoice OrderinvoicesCreateChargeInvoiceRequest
ooPayload
  = lens _ooPayload (\ s a -> s{_ooPayload = a})

-- | The ID of the order.
ooOrderId :: Lens' OrderinvoicesCreatechargeinvoice Text
ooOrderId
  = lens _ooOrderId (\ s a -> s{_ooOrderId = a})

-- | JSONP
ooCallback :: Lens' OrderinvoicesCreatechargeinvoice (Maybe Text)
ooCallback
  = lens _ooCallback (\ s a -> s{_ooCallback = a})

instance GoogleRequest
           OrderinvoicesCreatechargeinvoice
         where
        type Rs OrderinvoicesCreatechargeinvoice =
             OrderinvoicesCreateChargeInvoiceResponse
        type Scopes OrderinvoicesCreatechargeinvoice =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderinvoicesCreatechargeinvoice'{..}
          = go _ooMerchantId _ooOrderId _ooXgafv
              _ooUploadProtocol
              _ooAccessToken
              _ooUploadType
              _ooCallback
              (Just AltJSON)
              _ooPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderinvoicesCreatechargeinvoiceResource)
                      mempty
