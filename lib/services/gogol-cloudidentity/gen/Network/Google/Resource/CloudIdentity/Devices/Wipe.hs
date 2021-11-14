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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.Wipe
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wipes all data on the specified device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.wipe@.
module Network.Google.Resource.CloudIdentity.Devices.Wipe
    (
    -- * REST Resource
      DevicesWipeResource

    -- * Creating a Request
    , devicesWipe
    , DevicesWipe

    -- * Request Lenses
    , dwXgafv
    , dwUploadProtocol
    , dwAccessToken
    , dwUploadType
    , dwPayload
    , dwName
    , dwCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.wipe@ method which the
-- 'DevicesWipe' request conforms to.
type DevicesWipeResource =
     "v1" :>
       CaptureMode "name" "wipe" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
                       :> Post '[JSON] Operation

-- | Wipes all data on the specified device.
--
-- /See:/ 'devicesWipe' smart constructor.
data DevicesWipe =
  DevicesWipe'
    { _dwXgafv :: !(Maybe Xgafv)
    , _dwUploadProtocol :: !(Maybe Text)
    , _dwAccessToken :: !(Maybe Text)
    , _dwUploadType :: !(Maybe Text)
    , _dwPayload :: !GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    , _dwName :: !Text
    , _dwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesWipe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwXgafv'
--
-- * 'dwUploadProtocol'
--
-- * 'dwAccessToken'
--
-- * 'dwUploadType'
--
-- * 'dwPayload'
--
-- * 'dwName'
--
-- * 'dwCallback'
devicesWipe
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceRequest -- ^ 'dwPayload'
    -> Text -- ^ 'dwName'
    -> DevicesWipe
devicesWipe pDwPayload_ pDwName_ =
  DevicesWipe'
    { _dwXgafv = Nothing
    , _dwUploadProtocol = Nothing
    , _dwAccessToken = Nothing
    , _dwUploadType = Nothing
    , _dwPayload = pDwPayload_
    , _dwName = pDwName_
    , _dwCallback = Nothing
    }


-- | V1 error format.
dwXgafv :: Lens' DevicesWipe (Maybe Xgafv)
dwXgafv = lens _dwXgafv (\ s a -> s{_dwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dwUploadProtocol :: Lens' DevicesWipe (Maybe Text)
dwUploadProtocol
  = lens _dwUploadProtocol
      (\ s a -> s{_dwUploadProtocol = a})

-- | OAuth access token.
dwAccessToken :: Lens' DevicesWipe (Maybe Text)
dwAccessToken
  = lens _dwAccessToken
      (\ s a -> s{_dwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dwUploadType :: Lens' DevicesWipe (Maybe Text)
dwUploadType
  = lens _dwUploadType (\ s a -> s{_dwUploadType = a})

-- | Multipart request metadata.
dwPayload :: Lens' DevicesWipe GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
dwPayload
  = lens _dwPayload (\ s a -> s{_dwPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
dwName :: Lens' DevicesWipe Text
dwName = lens _dwName (\ s a -> s{_dwName = a})

-- | JSONP
dwCallback :: Lens' DevicesWipe (Maybe Text)
dwCallback
  = lens _dwCallback (\ s a -> s{_dwCallback = a})

instance GoogleRequest DevicesWipe where
        type Rs DevicesWipe = Operation
        type Scopes DevicesWipe = '[]
        requestClient DevicesWipe'{..}
          = go _dwName _dwXgafv _dwUploadProtocol
              _dwAccessToken
              _dwUploadType
              _dwCallback
              (Just AltJSON)
              _dwPayload
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy DevicesWipeResource)
                      mempty
