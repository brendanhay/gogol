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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchCreatePrinters
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates printers under given Organization Unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.batchCreatePrinters@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchCreatePrinters
    (
    -- * REST Resource
      CustomersChromePrintersBatchCreatePrintersResource

    -- * Creating a Request
    , customersChromePrintersBatchCreatePrinters
    , CustomersChromePrintersBatchCreatePrinters

    -- * Request Lenses
    , ccpbcpParent
    , ccpbcpXgafv
    , ccpbcpUploadProtocol
    , ccpbcpAccessToken
    , ccpbcpUploadType
    , ccpbcpPayload
    , ccpbcpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.batchCreatePrinters@ method which the
-- 'CustomersChromePrintersBatchCreatePrinters' request conforms to.
type CustomersChromePrintersBatchCreatePrintersResource
     =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "parent" Text :>
             "chrome" :>
               "printers:batchCreatePrinters" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchCreatePrintersRequest :>
                               Post '[JSON] BatchCreatePrintersResponse

-- | Creates printers under given Organization Unit.
--
-- /See:/ 'customersChromePrintersBatchCreatePrinters' smart constructor.
data CustomersChromePrintersBatchCreatePrinters =
  CustomersChromePrintersBatchCreatePrinters'
    { _ccpbcpParent :: !Text
    , _ccpbcpXgafv :: !(Maybe Xgafv)
    , _ccpbcpUploadProtocol :: !(Maybe Text)
    , _ccpbcpAccessToken :: !(Maybe Text)
    , _ccpbcpUploadType :: !(Maybe Text)
    , _ccpbcpPayload :: !BatchCreatePrintersRequest
    , _ccpbcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersBatchCreatePrinters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpbcpParent'
--
-- * 'ccpbcpXgafv'
--
-- * 'ccpbcpUploadProtocol'
--
-- * 'ccpbcpAccessToken'
--
-- * 'ccpbcpUploadType'
--
-- * 'ccpbcpPayload'
--
-- * 'ccpbcpCallback'
customersChromePrintersBatchCreatePrinters
    :: Text -- ^ 'ccpbcpParent'
    -> BatchCreatePrintersRequest -- ^ 'ccpbcpPayload'
    -> CustomersChromePrintersBatchCreatePrinters
customersChromePrintersBatchCreatePrinters pCcpbcpParent_ pCcpbcpPayload_ =
  CustomersChromePrintersBatchCreatePrinters'
    { _ccpbcpParent = pCcpbcpParent_
    , _ccpbcpXgafv = Nothing
    , _ccpbcpUploadProtocol = Nothing
    , _ccpbcpAccessToken = Nothing
    , _ccpbcpUploadType = Nothing
    , _ccpbcpPayload = pCcpbcpPayload_
    , _ccpbcpCallback = Nothing
    }


-- | Required. The name of the customer. Format: customers\/{customer_id}
ccpbcpParent :: Lens' CustomersChromePrintersBatchCreatePrinters Text
ccpbcpParent
  = lens _ccpbcpParent (\ s a -> s{_ccpbcpParent = a})

-- | V1 error format.
ccpbcpXgafv :: Lens' CustomersChromePrintersBatchCreatePrinters (Maybe Xgafv)
ccpbcpXgafv
  = lens _ccpbcpXgafv (\ s a -> s{_ccpbcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpbcpUploadProtocol :: Lens' CustomersChromePrintersBatchCreatePrinters (Maybe Text)
ccpbcpUploadProtocol
  = lens _ccpbcpUploadProtocol
      (\ s a -> s{_ccpbcpUploadProtocol = a})

-- | OAuth access token.
ccpbcpAccessToken :: Lens' CustomersChromePrintersBatchCreatePrinters (Maybe Text)
ccpbcpAccessToken
  = lens _ccpbcpAccessToken
      (\ s a -> s{_ccpbcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpbcpUploadType :: Lens' CustomersChromePrintersBatchCreatePrinters (Maybe Text)
ccpbcpUploadType
  = lens _ccpbcpUploadType
      (\ s a -> s{_ccpbcpUploadType = a})

-- | Multipart request metadata.
ccpbcpPayload :: Lens' CustomersChromePrintersBatchCreatePrinters BatchCreatePrintersRequest
ccpbcpPayload
  = lens _ccpbcpPayload
      (\ s a -> s{_ccpbcpPayload = a})

-- | JSONP
ccpbcpCallback :: Lens' CustomersChromePrintersBatchCreatePrinters (Maybe Text)
ccpbcpCallback
  = lens _ccpbcpCallback
      (\ s a -> s{_ccpbcpCallback = a})

instance GoogleRequest
           CustomersChromePrintersBatchCreatePrinters
         where
        type Rs CustomersChromePrintersBatchCreatePrinters =
             BatchCreatePrintersResponse
        type Scopes
               CustomersChromePrintersBatchCreatePrinters
             =
             '["https://www.googleapis.com/auth/admin.chrome.printers"]
        requestClient
          CustomersChromePrintersBatchCreatePrinters'{..}
          = go _ccpbcpParent _ccpbcpXgafv _ccpbcpUploadProtocol
              _ccpbcpAccessToken
              _ccpbcpUploadType
              _ccpbcpCallback
              (Just AltJSON)
              _ccpbcpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CustomersChromePrintersBatchCreatePrintersResource)
                      mempty
