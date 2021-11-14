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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Chrome OS device\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.get@.
module Network.Google.Resource.Directory.ChromeosDevices.Get
    (
    -- * REST Resource
      ChromeosDevicesGetResource

    -- * Creating a Request
    , chromeosDevicesGet
    , ChromeosDevicesGet

    -- * Request Lenses
    , cdgXgafv
    , cdgUploadProtocol
    , cdgAccessToken
    , cdgUploadType
    , cdgCustomerId
    , cdgDeviceId
    , cdgProjection
    , cdgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.get@ method which the
-- 'ChromeosDevicesGet' request conforms to.
type ChromeosDevicesGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "projection"
                               ChromeosDevicesGetProjection
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ChromeOSDevice

-- | Retrieves a Chrome OS device\'s properties.
--
-- /See:/ 'chromeosDevicesGet' smart constructor.
data ChromeosDevicesGet =
  ChromeosDevicesGet'
    { _cdgXgafv :: !(Maybe Xgafv)
    , _cdgUploadProtocol :: !(Maybe Text)
    , _cdgAccessToken :: !(Maybe Text)
    , _cdgUploadType :: !(Maybe Text)
    , _cdgCustomerId :: !Text
    , _cdgDeviceId :: !Text
    , _cdgProjection :: !(Maybe ChromeosDevicesGetProjection)
    , _cdgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgXgafv'
--
-- * 'cdgUploadProtocol'
--
-- * 'cdgAccessToken'
--
-- * 'cdgUploadType'
--
-- * 'cdgCustomerId'
--
-- * 'cdgDeviceId'
--
-- * 'cdgProjection'
--
-- * 'cdgCallback'
chromeosDevicesGet
    :: Text -- ^ 'cdgCustomerId'
    -> Text -- ^ 'cdgDeviceId'
    -> ChromeosDevicesGet
chromeosDevicesGet pCdgCustomerId_ pCdgDeviceId_ =
  ChromeosDevicesGet'
    { _cdgXgafv = Nothing
    , _cdgUploadProtocol = Nothing
    , _cdgAccessToken = Nothing
    , _cdgUploadType = Nothing
    , _cdgCustomerId = pCdgCustomerId_
    , _cdgDeviceId = pCdgDeviceId_
    , _cdgProjection = Nothing
    , _cdgCallback = Nothing
    }


-- | V1 error format.
cdgXgafv :: Lens' ChromeosDevicesGet (Maybe Xgafv)
cdgXgafv = lens _cdgXgafv (\ s a -> s{_cdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdgUploadProtocol :: Lens' ChromeosDevicesGet (Maybe Text)
cdgUploadProtocol
  = lens _cdgUploadProtocol
      (\ s a -> s{_cdgUploadProtocol = a})

-- | OAuth access token.
cdgAccessToken :: Lens' ChromeosDevicesGet (Maybe Text)
cdgAccessToken
  = lens _cdgAccessToken
      (\ s a -> s{_cdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdgUploadType :: Lens' ChromeosDevicesGet (Maybe Text)
cdgUploadType
  = lens _cdgUploadType
      (\ s a -> s{_cdgUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
cdgCustomerId :: Lens' ChromeosDevicesGet Text
cdgCustomerId
  = lens _cdgCustomerId
      (\ s a -> s{_cdgCustomerId = a})

-- | The unique ID of the device. The \`deviceId\`s are returned in the
-- response from the
-- [chromeosdevices.list](\/admin-sdk\/directory\/v1\/reference\/chromeosdevices\/list)
-- method.
cdgDeviceId :: Lens' ChromeosDevicesGet Text
cdgDeviceId
  = lens _cdgDeviceId (\ s a -> s{_cdgDeviceId = a})

-- | Determines whether the response contains the full list of properties or
-- only a subset.
cdgProjection :: Lens' ChromeosDevicesGet (Maybe ChromeosDevicesGetProjection)
cdgProjection
  = lens _cdgProjection
      (\ s a -> s{_cdgProjection = a})

-- | JSONP
cdgCallback :: Lens' ChromeosDevicesGet (Maybe Text)
cdgCallback
  = lens _cdgCallback (\ s a -> s{_cdgCallback = a})

instance GoogleRequest ChromeosDevicesGet where
        type Rs ChromeosDevicesGet = ChromeOSDevice
        type Scopes ChromeosDevicesGet =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos",
               "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
        requestClient ChromeosDevicesGet'{..}
          = go _cdgCustomerId _cdgDeviceId _cdgXgafv
              _cdgUploadProtocol
              _cdgAccessToken
              _cdgUploadType
              _cdgProjection
              _cdgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesGetResource)
                      mempty
