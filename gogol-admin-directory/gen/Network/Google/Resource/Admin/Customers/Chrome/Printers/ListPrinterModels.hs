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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.ListPrinterModels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the supported printer models.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.listPrinterModels@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.ListPrinterModels
    (
    -- * REST Resource
      CustomersChromePrintersListPrinterModelsResource

    -- * Creating a Request
    , customersChromePrintersListPrinterModels
    , CustomersChromePrintersListPrinterModels

    -- * Request Lenses
    , ccplpmParent
    , ccplpmXgafv
    , ccplpmUploadProtocol
    , ccplpmAccessToken
    , ccplpmUploadType
    , ccplpmFilter
    , ccplpmPageToken
    , ccplpmPageSize
    , ccplpmCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.listPrinterModels@ method which the
-- 'CustomersChromePrintersListPrinterModels' request conforms to.
type CustomersChromePrintersListPrinterModelsResource
     =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "parent" Text :>
             "chrome" :>
               "printers:listPrinterModels" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListPrinterModelsResponse

-- | Lists the supported printer models.
--
-- /See:/ 'customersChromePrintersListPrinterModels' smart constructor.
data CustomersChromePrintersListPrinterModels =
  CustomersChromePrintersListPrinterModels'
    { _ccplpmParent :: !Text
    , _ccplpmXgafv :: !(Maybe Xgafv)
    , _ccplpmUploadProtocol :: !(Maybe Text)
    , _ccplpmAccessToken :: !(Maybe Text)
    , _ccplpmUploadType :: !(Maybe Text)
    , _ccplpmFilter :: !(Maybe Text)
    , _ccplpmPageToken :: !(Maybe Text)
    , _ccplpmPageSize :: !(Maybe (Textual Int32))
    , _ccplpmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersListPrinterModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccplpmParent'
--
-- * 'ccplpmXgafv'
--
-- * 'ccplpmUploadProtocol'
--
-- * 'ccplpmAccessToken'
--
-- * 'ccplpmUploadType'
--
-- * 'ccplpmFilter'
--
-- * 'ccplpmPageToken'
--
-- * 'ccplpmPageSize'
--
-- * 'ccplpmCallback'
customersChromePrintersListPrinterModels
    :: Text -- ^ 'ccplpmParent'
    -> CustomersChromePrintersListPrinterModels
customersChromePrintersListPrinterModels pCcplpmParent_ =
  CustomersChromePrintersListPrinterModels'
    { _ccplpmParent = pCcplpmParent_
    , _ccplpmXgafv = Nothing
    , _ccplpmUploadProtocol = Nothing
    , _ccplpmAccessToken = Nothing
    , _ccplpmUploadType = Nothing
    , _ccplpmFilter = Nothing
    , _ccplpmPageToken = Nothing
    , _ccplpmPageSize = Nothing
    , _ccplpmCallback = Nothing
    }


-- | Required. The name of the customer who owns this collection of printers.
-- Format: customers\/{customer_id}
ccplpmParent :: Lens' CustomersChromePrintersListPrinterModels Text
ccplpmParent
  = lens _ccplpmParent (\ s a -> s{_ccplpmParent = a})

-- | V1 error format.
ccplpmXgafv :: Lens' CustomersChromePrintersListPrinterModels (Maybe Xgafv)
ccplpmXgafv
  = lens _ccplpmXgafv (\ s a -> s{_ccplpmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccplpmUploadProtocol :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmUploadProtocol
  = lens _ccplpmUploadProtocol
      (\ s a -> s{_ccplpmUploadProtocol = a})

-- | OAuth access token.
ccplpmAccessToken :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmAccessToken
  = lens _ccplpmAccessToken
      (\ s a -> s{_ccplpmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccplpmUploadType :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmUploadType
  = lens _ccplpmUploadType
      (\ s a -> s{_ccplpmUploadType = a})

-- | Filer to list only models by a given manufacturer in format:
-- \"manufacturer:Brother\". Search syntax is shared between this api and
-- Admin Console printers pages.
ccplpmFilter :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmFilter
  = lens _ccplpmFilter (\ s a -> s{_ccplpmFilter = a})

-- | A page token, received from a previous call.
ccplpmPageToken :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmPageToken
  = lens _ccplpmPageToken
      (\ s a -> s{_ccplpmPageToken = a})

-- | The maximum number of objects to return. The service may return fewer
-- than this value.
ccplpmPageSize :: Lens' CustomersChromePrintersListPrinterModels (Maybe Int32)
ccplpmPageSize
  = lens _ccplpmPageSize
      (\ s a -> s{_ccplpmPageSize = a})
      . mapping _Coerce

-- | JSONP
ccplpmCallback :: Lens' CustomersChromePrintersListPrinterModels (Maybe Text)
ccplpmCallback
  = lens _ccplpmCallback
      (\ s a -> s{_ccplpmCallback = a})

instance GoogleRequest
           CustomersChromePrintersListPrinterModels
         where
        type Rs CustomersChromePrintersListPrinterModels =
             ListPrinterModelsResponse
        type Scopes CustomersChromePrintersListPrinterModels
             =
             '["https://www.googleapis.com/auth/admin.chrome.printers",
               "https://www.googleapis.com/auth/admin.chrome.printers.readonly"]
        requestClient
          CustomersChromePrintersListPrinterModels'{..}
          = go _ccplpmParent _ccplpmXgafv _ccplpmUploadProtocol
              _ccplpmAccessToken
              _ccplpmUploadType
              _ccplpmFilter
              _ccplpmPageToken
              _ccplpmPageSize
              _ccplpmCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CustomersChromePrintersListPrinterModelsResource)
                      mempty
