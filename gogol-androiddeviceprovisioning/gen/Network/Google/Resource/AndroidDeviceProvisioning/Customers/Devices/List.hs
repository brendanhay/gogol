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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a customer\'s devices.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.List
    (
    -- * REST Resource
      CustomersDevicesListResource

    -- * Creating a Request
    , customersDevicesList
    , CustomersDevicesList

    -- * Request Lenses
    , cParent
    , cXgafv
    , cUploadProtocol
    , cAccessToken
    , cUploadType
    , cPageToken
    , cPageSize
    , cCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.devices.list@ method which the
-- 'CustomersDevicesList' request conforms to.
type CustomersDevicesListResource =
     "v1" :>
       Capture "parent" Text :>
         "devices" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int64) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CustomerListDevicesResponse

-- | Lists a customer\'s devices.
--
-- /See:/ 'customersDevicesList' smart constructor.
data CustomersDevicesList =
  CustomersDevicesList'
    { _cParent         :: !Text
    , _cXgafv          :: !(Maybe Xgafv)
    , _cUploadProtocol :: !(Maybe Text)
    , _cAccessToken    :: !(Maybe Text)
    , _cUploadType     :: !(Maybe Text)
    , _cPageToken      :: !(Maybe Text)
    , _cPageSize       :: !(Maybe (Textual Int64))
    , _cCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cParent'
--
-- * 'cXgafv'
--
-- * 'cUploadProtocol'
--
-- * 'cAccessToken'
--
-- * 'cUploadType'
--
-- * 'cPageToken'
--
-- * 'cPageSize'
--
-- * 'cCallback'
customersDevicesList
    :: Text -- ^ 'cParent'
    -> CustomersDevicesList
customersDevicesList pCParent_ =
  CustomersDevicesList'
    { _cParent = pCParent_
    , _cXgafv = Nothing
    , _cUploadProtocol = Nothing
    , _cAccessToken = Nothing
    , _cUploadType = Nothing
    , _cPageToken = Nothing
    , _cPageSize = Nothing
    , _cCallback = Nothing
    }


-- | Required. The customer managing the devices. An API resource name in the
-- format \`customers\/[CUSTOMER_ID]\`.
cParent :: Lens' CustomersDevicesList Text
cParent = lens _cParent (\ s a -> s{_cParent = a})

-- | V1 error format.
cXgafv :: Lens' CustomersDevicesList (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' CustomersDevicesList (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | OAuth access token.
cAccessToken :: Lens' CustomersDevicesList (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' CustomersDevicesList (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | A token specifying which result page to return.
cPageToken :: Lens' CustomersDevicesList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | The maximum number of devices to show in a page of results. Must be
-- between 1 and 100 inclusive.
cPageSize :: Lens' CustomersDevicesList (Maybe Int64)
cPageSize
  = lens _cPageSize (\ s a -> s{_cPageSize = a}) .
      mapping _Coerce

-- | JSONP
cCallback :: Lens' CustomersDevicesList (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest CustomersDevicesList where
        type Rs CustomersDevicesList =
             CustomerListDevicesResponse
        type Scopes CustomersDevicesList = '[]
        requestClient CustomersDevicesList'{..}
          = go _cParent _cXgafv _cUploadProtocol _cAccessToken
              _cUploadType
              _cPageToken
              _cPageSize
              _cCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersDevicesListResource)
                      mempty
