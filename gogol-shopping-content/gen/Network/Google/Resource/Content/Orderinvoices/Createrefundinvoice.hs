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
-- Module      : Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a refund invoice for one or more shipment groups, and triggers a
-- refund for orderinvoice enabled orders. This can only be used for line
-- items that have previously been charged using \`createChargeInvoice\`.
-- All amounts (except for the summary) are incremental with respect to the
-- previous invoice.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderinvoices.createrefundinvoice@.
module Network.Google.Resource.Content.Orderinvoices.Createrefundinvoice
    (
    -- * REST Resource
      OrderinvoicesCreaterefundinvoiceResource

    -- * Creating a Request
    , orderinvoicesCreaterefundinvoice
    , OrderinvoicesCreaterefundinvoice

    -- * Request Lenses
    , ocXgafv
    , ocMerchantId
    , ocUploadProtocol
    , ocAccessToken
    , ocUploadType
    , ocPayload
    , ocOrderId
    , ocCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderinvoices.createrefundinvoice@ method which the
-- 'OrderinvoicesCreaterefundinvoice' request conforms to.
type OrderinvoicesCreaterefundinvoiceResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderinvoices" :>
             Capture "orderId" Text :>
               "createRefundInvoice" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               OrderinvoicesCreateRefundInvoiceRequest
                               :>
                               Post '[JSON]
                                 OrderinvoicesCreateRefundInvoiceResponse

-- | Creates a refund invoice for one or more shipment groups, and triggers a
-- refund for orderinvoice enabled orders. This can only be used for line
-- items that have previously been charged using \`createChargeInvoice\`.
-- All amounts (except for the summary) are incremental with respect to the
-- previous invoice.
--
-- /See:/ 'orderinvoicesCreaterefundinvoice' smart constructor.
data OrderinvoicesCreaterefundinvoice =
  OrderinvoicesCreaterefundinvoice'
    { _ocXgafv :: !(Maybe Xgafv)
    , _ocMerchantId :: !(Textual Word64)
    , _ocUploadProtocol :: !(Maybe Text)
    , _ocAccessToken :: !(Maybe Text)
    , _ocUploadType :: !(Maybe Text)
    , _ocPayload :: !OrderinvoicesCreateRefundInvoiceRequest
    , _ocOrderId :: !Text
    , _ocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreaterefundinvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocXgafv'
--
-- * 'ocMerchantId'
--
-- * 'ocUploadProtocol'
--
-- * 'ocAccessToken'
--
-- * 'ocUploadType'
--
-- * 'ocPayload'
--
-- * 'ocOrderId'
--
-- * 'ocCallback'
orderinvoicesCreaterefundinvoice
    :: Word64 -- ^ 'ocMerchantId'
    -> OrderinvoicesCreateRefundInvoiceRequest -- ^ 'ocPayload'
    -> Text -- ^ 'ocOrderId'
    -> OrderinvoicesCreaterefundinvoice
orderinvoicesCreaterefundinvoice pOcMerchantId_ pOcPayload_ pOcOrderId_ =
  OrderinvoicesCreaterefundinvoice'
    { _ocXgafv = Nothing
    , _ocMerchantId = _Coerce # pOcMerchantId_
    , _ocUploadProtocol = Nothing
    , _ocAccessToken = Nothing
    , _ocUploadType = Nothing
    , _ocPayload = pOcPayload_
    , _ocOrderId = pOcOrderId_
    , _ocCallback = Nothing
    }


-- | V1 error format.
ocXgafv :: Lens' OrderinvoicesCreaterefundinvoice (Maybe Xgafv)
ocXgafv = lens _ocXgafv (\ s a -> s{_ocXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ocMerchantId :: Lens' OrderinvoicesCreaterefundinvoice Word64
ocMerchantId
  = lens _ocMerchantId (\ s a -> s{_ocMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocUploadProtocol :: Lens' OrderinvoicesCreaterefundinvoice (Maybe Text)
ocUploadProtocol
  = lens _ocUploadProtocol
      (\ s a -> s{_ocUploadProtocol = a})

-- | OAuth access token.
ocAccessToken :: Lens' OrderinvoicesCreaterefundinvoice (Maybe Text)
ocAccessToken
  = lens _ocAccessToken
      (\ s a -> s{_ocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocUploadType :: Lens' OrderinvoicesCreaterefundinvoice (Maybe Text)
ocUploadType
  = lens _ocUploadType (\ s a -> s{_ocUploadType = a})

-- | Multipart request metadata.
ocPayload :: Lens' OrderinvoicesCreaterefundinvoice OrderinvoicesCreateRefundInvoiceRequest
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | The ID of the order.
ocOrderId :: Lens' OrderinvoicesCreaterefundinvoice Text
ocOrderId
  = lens _ocOrderId (\ s a -> s{_ocOrderId = a})

-- | JSONP
ocCallback :: Lens' OrderinvoicesCreaterefundinvoice (Maybe Text)
ocCallback
  = lens _ocCallback (\ s a -> s{_ocCallback = a})

instance GoogleRequest
           OrderinvoicesCreaterefundinvoice
         where
        type Rs OrderinvoicesCreaterefundinvoice =
             OrderinvoicesCreateRefundInvoiceResponse
        type Scopes OrderinvoicesCreaterefundinvoice =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderinvoicesCreaterefundinvoice'{..}
          = go _ocMerchantId _ocOrderId _ocXgafv
              _ocUploadProtocol
              _ocAccessToken
              _ocUploadType
              _ocCallback
              (Just AltJSON)
              _ocPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderinvoicesCreaterefundinvoiceResource)
                      mempty
