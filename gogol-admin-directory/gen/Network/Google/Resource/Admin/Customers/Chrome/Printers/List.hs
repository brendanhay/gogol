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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List printers configs.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.list@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.List
    (
    -- * REST Resource
      CustomersChromePrintersListResource

    -- * Creating a Request
    , customersChromePrintersList
    , CustomersChromePrintersList

    -- * Request Lenses
    , ccplParent
    , ccplXgafv
    , ccplUploadProtocol
    , ccplAccessToken
    , ccplUploadType
    , ccplFilter
    , ccplPageToken
    , ccplPageSize
    , ccplOrgUnitId
    , ccplCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.list@ method which the
-- 'CustomersChromePrintersList' request conforms to.
type CustomersChromePrintersListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "parent" Text :>
             "chrome" :>
               "printers" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "orgUnitId" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListPrintersResponse

-- | List printers configs.
--
-- /See:/ 'customersChromePrintersList' smart constructor.
data CustomersChromePrintersList =
  CustomersChromePrintersList'
    { _ccplParent :: !Text
    , _ccplXgafv :: !(Maybe Xgafv)
    , _ccplUploadProtocol :: !(Maybe Text)
    , _ccplAccessToken :: !(Maybe Text)
    , _ccplUploadType :: !(Maybe Text)
    , _ccplFilter :: !(Maybe Text)
    , _ccplPageToken :: !(Maybe Text)
    , _ccplPageSize :: !(Maybe (Textual Int32))
    , _ccplOrgUnitId :: !(Maybe Text)
    , _ccplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccplParent'
--
-- * 'ccplXgafv'
--
-- * 'ccplUploadProtocol'
--
-- * 'ccplAccessToken'
--
-- * 'ccplUploadType'
--
-- * 'ccplFilter'
--
-- * 'ccplPageToken'
--
-- * 'ccplPageSize'
--
-- * 'ccplOrgUnitId'
--
-- * 'ccplCallback'
customersChromePrintersList
    :: Text -- ^ 'ccplParent'
    -> CustomersChromePrintersList
customersChromePrintersList pCcplParent_ =
  CustomersChromePrintersList'
    { _ccplParent = pCcplParent_
    , _ccplXgafv = Nothing
    , _ccplUploadProtocol = Nothing
    , _ccplAccessToken = Nothing
    , _ccplUploadType = Nothing
    , _ccplFilter = Nothing
    , _ccplPageToken = Nothing
    , _ccplPageSize = Nothing
    , _ccplOrgUnitId = Nothing
    , _ccplCallback = Nothing
    }


-- | Required. The name of the customer who owns this collection of printers.
-- Format: customers\/{customer_id}
ccplParent :: Lens' CustomersChromePrintersList Text
ccplParent
  = lens _ccplParent (\ s a -> s{_ccplParent = a})

-- | V1 error format.
ccplXgafv :: Lens' CustomersChromePrintersList (Maybe Xgafv)
ccplXgafv
  = lens _ccplXgafv (\ s a -> s{_ccplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccplUploadProtocol :: Lens' CustomersChromePrintersList (Maybe Text)
ccplUploadProtocol
  = lens _ccplUploadProtocol
      (\ s a -> s{_ccplUploadProtocol = a})

-- | OAuth access token.
ccplAccessToken :: Lens' CustomersChromePrintersList (Maybe Text)
ccplAccessToken
  = lens _ccplAccessToken
      (\ s a -> s{_ccplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccplUploadType :: Lens' CustomersChromePrintersList (Maybe Text)
ccplUploadType
  = lens _ccplUploadType
      (\ s a -> s{_ccplUploadType = a})

-- | Search query. Search syntax is shared between this api and Admin Console
-- printers pages.
ccplFilter :: Lens' CustomersChromePrintersList (Maybe Text)
ccplFilter
  = lens _ccplFilter (\ s a -> s{_ccplFilter = a})

-- | A page token, received from a previous call.
ccplPageToken :: Lens' CustomersChromePrintersList (Maybe Text)
ccplPageToken
  = lens _ccplPageToken
      (\ s a -> s{_ccplPageToken = a})

-- | The maximum number of objects to return. The service may return fewer
-- than this value.
ccplPageSize :: Lens' CustomersChromePrintersList (Maybe Int32)
ccplPageSize
  = lens _ccplPageSize (\ s a -> s{_ccplPageSize = a})
      . mapping _Coerce

-- | Organization Unit that we want to list the printers for. When org_unit
-- is not present in the request then all printers of the customer are
-- returned (or filtered). When org_unit is present in the request then
-- only printers available to this OU will be returned (owned or
-- inherited). You may see if printer is owned or inherited for this OU by
-- looking at Printer.org_unit_id.
ccplOrgUnitId :: Lens' CustomersChromePrintersList (Maybe Text)
ccplOrgUnitId
  = lens _ccplOrgUnitId
      (\ s a -> s{_ccplOrgUnitId = a})

-- | JSONP
ccplCallback :: Lens' CustomersChromePrintersList (Maybe Text)
ccplCallback
  = lens _ccplCallback (\ s a -> s{_ccplCallback = a})

instance GoogleRequest CustomersChromePrintersList
         where
        type Rs CustomersChromePrintersList =
             ListPrintersResponse
        type Scopes CustomersChromePrintersList =
             '["https://www.googleapis.com/auth/admin.chrome.printers",
               "https://www.googleapis.com/auth/admin.chrome.printers.readonly"]
        requestClient CustomersChromePrintersList'{..}
          = go _ccplParent _ccplXgafv _ccplUploadProtocol
              _ccplAccessToken
              _ccplUploadType
              _ccplFilter
              _ccplPageToken
              _ccplPageSize
              _ccplOrgUnitId
              _ccplCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersChromePrintersListResource)
                      mempty
