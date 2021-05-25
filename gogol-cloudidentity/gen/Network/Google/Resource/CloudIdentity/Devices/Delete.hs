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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.delete@.
module Network.Google.Resource.CloudIdentity.Devices.Delete
    (
    -- * REST Resource
      DevicesDeleteResource

    -- * Creating a Request
    , devicesDelete
    , DevicesDelete

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddAccessToken
    , ddUploadType
    , ddCustomer
    , ddName
    , ddCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.delete@ method which the
-- 'DevicesDelete' request conforms to.
type DevicesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customer" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified device.
--
-- /See:/ 'devicesDelete' smart constructor.
data DevicesDelete =
  DevicesDelete'
    { _ddXgafv :: !(Maybe Xgafv)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddAccessToken :: !(Maybe Text)
    , _ddUploadType :: !(Maybe Text)
    , _ddCustomer :: !(Maybe Text)
    , _ddName :: !Text
    , _ddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddCustomer'
--
-- * 'ddName'
--
-- * 'ddCallback'
devicesDelete
    :: Text -- ^ 'ddName'
    -> DevicesDelete
devicesDelete pDdName_ =
  DevicesDelete'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddCustomer = Nothing
    , _ddName = pDdName_
    , _ddCallback = Nothing
    }


-- | V1 error format.
ddXgafv :: Lens' DevicesDelete (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DevicesDelete (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | OAuth access token.
ddAccessToken :: Lens' DevicesDelete (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DevicesDelete (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
ddCustomer :: Lens' DevicesDelete (Maybe Text)
ddCustomer
  = lens _ddCustomer (\ s a -> s{_ddCustomer = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format: \`devices\/{device_id}\`, where device_id is the
-- unique ID assigned to the Device.
ddName :: Lens' DevicesDelete Text
ddName = lens _ddName (\ s a -> s{_ddName = a})

-- | JSONP
ddCallback :: Lens' DevicesDelete (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleRequest DevicesDelete where
        type Rs DevicesDelete = Operation
        type Scopes DevicesDelete = '[]
        requestClient DevicesDelete'{..}
          = go _ddName _ddXgafv _ddUploadProtocol
              _ddAccessToken
              _ddUploadType
              _ddCustomer
              _ddCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy DevicesDeleteResource)
                      mempty
