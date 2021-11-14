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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchDeletePrinters
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes printers in batch.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.batchDeletePrinters@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchDeletePrinters
    (
    -- * REST Resource
      CustomersChromePrintersBatchDeletePrintersResource

    -- * Creating a Request
    , customersChromePrintersBatchDeletePrinters
    , CustomersChromePrintersBatchDeletePrinters

    -- * Request Lenses
    , ccpbdpParent
    , ccpbdpXgafv
    , ccpbdpUploadProtocol
    , ccpbdpAccessToken
    , ccpbdpUploadType
    , ccpbdpPayload
    , ccpbdpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.batchDeletePrinters@ method which the
-- 'CustomersChromePrintersBatchDeletePrinters' request conforms to.
type CustomersChromePrintersBatchDeletePrintersResource
     =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "parent" Text :>
             "chrome" :>
               "printers:batchDeletePrinters" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchDeletePrintersRequest :>
                               Post '[JSON] BatchDeletePrintersResponse

-- | Deletes printers in batch.
--
-- /See:/ 'customersChromePrintersBatchDeletePrinters' smart constructor.
data CustomersChromePrintersBatchDeletePrinters =
  CustomersChromePrintersBatchDeletePrinters'
    { _ccpbdpParent :: !Text
    , _ccpbdpXgafv :: !(Maybe Xgafv)
    , _ccpbdpUploadProtocol :: !(Maybe Text)
    , _ccpbdpAccessToken :: !(Maybe Text)
    , _ccpbdpUploadType :: !(Maybe Text)
    , _ccpbdpPayload :: !BatchDeletePrintersRequest
    , _ccpbdpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersBatchDeletePrinters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpbdpParent'
--
-- * 'ccpbdpXgafv'
--
-- * 'ccpbdpUploadProtocol'
--
-- * 'ccpbdpAccessToken'
--
-- * 'ccpbdpUploadType'
--
-- * 'ccpbdpPayload'
--
-- * 'ccpbdpCallback'
customersChromePrintersBatchDeletePrinters
    :: Text -- ^ 'ccpbdpParent'
    -> BatchDeletePrintersRequest -- ^ 'ccpbdpPayload'
    -> CustomersChromePrintersBatchDeletePrinters
customersChromePrintersBatchDeletePrinters pCcpbdpParent_ pCcpbdpPayload_ =
  CustomersChromePrintersBatchDeletePrinters'
    { _ccpbdpParent = pCcpbdpParent_
    , _ccpbdpXgafv = Nothing
    , _ccpbdpUploadProtocol = Nothing
    , _ccpbdpAccessToken = Nothing
    , _ccpbdpUploadType = Nothing
    , _ccpbdpPayload = pCcpbdpPayload_
    , _ccpbdpCallback = Nothing
    }


-- | Required. The name of the customer. Format: customers\/{customer_id}
ccpbdpParent :: Lens' CustomersChromePrintersBatchDeletePrinters Text
ccpbdpParent
  = lens _ccpbdpParent (\ s a -> s{_ccpbdpParent = a})

-- | V1 error format.
ccpbdpXgafv :: Lens' CustomersChromePrintersBatchDeletePrinters (Maybe Xgafv)
ccpbdpXgafv
  = lens _ccpbdpXgafv (\ s a -> s{_ccpbdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpbdpUploadProtocol :: Lens' CustomersChromePrintersBatchDeletePrinters (Maybe Text)
ccpbdpUploadProtocol
  = lens _ccpbdpUploadProtocol
      (\ s a -> s{_ccpbdpUploadProtocol = a})

-- | OAuth access token.
ccpbdpAccessToken :: Lens' CustomersChromePrintersBatchDeletePrinters (Maybe Text)
ccpbdpAccessToken
  = lens _ccpbdpAccessToken
      (\ s a -> s{_ccpbdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpbdpUploadType :: Lens' CustomersChromePrintersBatchDeletePrinters (Maybe Text)
ccpbdpUploadType
  = lens _ccpbdpUploadType
      (\ s a -> s{_ccpbdpUploadType = a})

-- | Multipart request metadata.
ccpbdpPayload :: Lens' CustomersChromePrintersBatchDeletePrinters BatchDeletePrintersRequest
ccpbdpPayload
  = lens _ccpbdpPayload
      (\ s a -> s{_ccpbdpPayload = a})

-- | JSONP
ccpbdpCallback :: Lens' CustomersChromePrintersBatchDeletePrinters (Maybe Text)
ccpbdpCallback
  = lens _ccpbdpCallback
      (\ s a -> s{_ccpbdpCallback = a})

instance GoogleRequest
           CustomersChromePrintersBatchDeletePrinters
         where
        type Rs CustomersChromePrintersBatchDeletePrinters =
             BatchDeletePrintersResponse
        type Scopes
               CustomersChromePrintersBatchDeletePrinters
             =
             '["https://www.googleapis.com/auth/admin.chrome.printers"]
        requestClient
          CustomersChromePrintersBatchDeletePrinters'{..}
          = go _ccpbdpParent _ccpbdpXgafv _ccpbdpUploadProtocol
              _ccpbdpAccessToken
              _ccpbdpUploadType
              _ccpbdpCallback
              (Just AltJSON)
              _ccpbdpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CustomersChromePrintersBatchDeletePrintersResource)
                      mempty
