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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device. Only company-owned device may be created. **Note**:
-- This method is available only to customers who have one of the following
-- SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education,
-- and Cloud Identity Premium
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.create@.
module Network.Google.Resource.CloudIdentity.Devices.Create
    (
    -- * REST Resource
      DevicesCreateResource

    -- * Creating a Request
    , devicesCreate
    , DevicesCreate

    -- * Request Lenses
    , dcXgafv
    , dcUploadProtocol
    , dcAccessToken
    , dcUploadType
    , dcPayload
    , dcCustomer
    , dcCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.create@ method which the
-- 'DevicesCreate' request conforms to.
type DevicesCreateResource =
     "v1" :>
       "devices" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customer" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleAppsCloudidentityDevicesV1Device
                         :> Post '[JSON] Operation

-- | Creates a device. Only company-owned device may be created. **Note**:
-- This method is available only to customers who have one of the following
-- SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education,
-- and Cloud Identity Premium
--
-- /See:/ 'devicesCreate' smart constructor.
data DevicesCreate =
  DevicesCreate'
    { _dcXgafv :: !(Maybe Xgafv)
    , _dcUploadProtocol :: !(Maybe Text)
    , _dcAccessToken :: !(Maybe Text)
    , _dcUploadType :: !(Maybe Text)
    , _dcPayload :: !GoogleAppsCloudidentityDevicesV1Device
    , _dcCustomer :: !(Maybe Text)
    , _dcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcXgafv'
--
-- * 'dcUploadProtocol'
--
-- * 'dcAccessToken'
--
-- * 'dcUploadType'
--
-- * 'dcPayload'
--
-- * 'dcCustomer'
--
-- * 'dcCallback'
devicesCreate
    :: GoogleAppsCloudidentityDevicesV1Device -- ^ 'dcPayload'
    -> DevicesCreate
devicesCreate pDcPayload_ =
  DevicesCreate'
    { _dcXgafv = Nothing
    , _dcUploadProtocol = Nothing
    , _dcAccessToken = Nothing
    , _dcUploadType = Nothing
    , _dcPayload = pDcPayload_
    , _dcCustomer = Nothing
    , _dcCallback = Nothing
    }


-- | V1 error format.
dcXgafv :: Lens' DevicesCreate (Maybe Xgafv)
dcXgafv = lens _dcXgafv (\ s a -> s{_dcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcUploadProtocol :: Lens' DevicesCreate (Maybe Text)
dcUploadProtocol
  = lens _dcUploadProtocol
      (\ s a -> s{_dcUploadProtocol = a})

-- | OAuth access token.
dcAccessToken :: Lens' DevicesCreate (Maybe Text)
dcAccessToken
  = lens _dcAccessToken
      (\ s a -> s{_dcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcUploadType :: Lens' DevicesCreate (Maybe Text)
dcUploadType
  = lens _dcUploadType (\ s a -> s{_dcUploadType = a})

-- | Multipart request metadata.
dcPayload :: Lens' DevicesCreate GoogleAppsCloudidentityDevicesV1Device
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
dcCustomer :: Lens' DevicesCreate (Maybe Text)
dcCustomer
  = lens _dcCustomer (\ s a -> s{_dcCustomer = a})

-- | JSONP
dcCallback :: Lens' DevicesCreate (Maybe Text)
dcCallback
  = lens _dcCallback (\ s a -> s{_dcCallback = a})

instance GoogleRequest DevicesCreate where
        type Rs DevicesCreate = Operation
        type Scopes DevicesCreate = '[]
        requestClient DevicesCreate'{..}
          = go _dcXgafv _dcUploadProtocol _dcAccessToken
              _dcUploadType
              _dcCustomer
              _dcCallback
              (Just AltJSON)
              _dcPayload
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy DevicesCreateResource)
                      mempty
