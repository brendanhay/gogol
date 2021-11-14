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
-- Module      : Network.Google.Resource.Admin.Customer.Devices.Chromeos.Commands.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets command data a specific command issued to the device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customer.devices.chromeos.commands.get@.
module Network.Google.Resource.Admin.Customer.Devices.Chromeos.Commands.Get
    (
    -- * REST Resource
      CustomerDevicesChromeosCommandsGetResource

    -- * Creating a Request
    , customerDevicesChromeosCommandsGet
    , CustomerDevicesChromeosCommandsGet

    -- * Request Lenses
    , cdccgXgafv
    , cdccgUploadProtocol
    , cdccgAccessToken
    , cdccgUploadType
    , cdccgCustomerId
    , cdccgCommandId
    , cdccgDeviceId
    , cdccgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customer.devices.chromeos.commands.get@ method which the
-- 'CustomerDevicesChromeosCommandsGet' request conforms to.
type CustomerDevicesChromeosCommandsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     "commands" :>
                       Capture "commandId" (Textual Int64) :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DirectoryChromeosDevicesCommand

-- | Gets command data a specific command issued to the device.
--
-- /See:/ 'customerDevicesChromeosCommandsGet' smart constructor.
data CustomerDevicesChromeosCommandsGet =
  CustomerDevicesChromeosCommandsGet'
    { _cdccgXgafv :: !(Maybe Xgafv)
    , _cdccgUploadProtocol :: !(Maybe Text)
    , _cdccgAccessToken :: !(Maybe Text)
    , _cdccgUploadType :: !(Maybe Text)
    , _cdccgCustomerId :: !Text
    , _cdccgCommandId :: !(Textual Int64)
    , _cdccgDeviceId :: !Text
    , _cdccgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerDevicesChromeosCommandsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdccgXgafv'
--
-- * 'cdccgUploadProtocol'
--
-- * 'cdccgAccessToken'
--
-- * 'cdccgUploadType'
--
-- * 'cdccgCustomerId'
--
-- * 'cdccgCommandId'
--
-- * 'cdccgDeviceId'
--
-- * 'cdccgCallback'
customerDevicesChromeosCommandsGet
    :: Text -- ^ 'cdccgCustomerId'
    -> Int64 -- ^ 'cdccgCommandId'
    -> Text -- ^ 'cdccgDeviceId'
    -> CustomerDevicesChromeosCommandsGet
customerDevicesChromeosCommandsGet pCdccgCustomerId_ pCdccgCommandId_ pCdccgDeviceId_ =
  CustomerDevicesChromeosCommandsGet'
    { _cdccgXgafv = Nothing
    , _cdccgUploadProtocol = Nothing
    , _cdccgAccessToken = Nothing
    , _cdccgUploadType = Nothing
    , _cdccgCustomerId = pCdccgCustomerId_
    , _cdccgCommandId = _Coerce # pCdccgCommandId_
    , _cdccgDeviceId = pCdccgDeviceId_
    , _cdccgCallback = Nothing
    }


-- | V1 error format.
cdccgXgafv :: Lens' CustomerDevicesChromeosCommandsGet (Maybe Xgafv)
cdccgXgafv
  = lens _cdccgXgafv (\ s a -> s{_cdccgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdccgUploadProtocol :: Lens' CustomerDevicesChromeosCommandsGet (Maybe Text)
cdccgUploadProtocol
  = lens _cdccgUploadProtocol
      (\ s a -> s{_cdccgUploadProtocol = a})

-- | OAuth access token.
cdccgAccessToken :: Lens' CustomerDevicesChromeosCommandsGet (Maybe Text)
cdccgAccessToken
  = lens _cdccgAccessToken
      (\ s a -> s{_cdccgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdccgUploadType :: Lens' CustomerDevicesChromeosCommandsGet (Maybe Text)
cdccgUploadType
  = lens _cdccgUploadType
      (\ s a -> s{_cdccgUploadType = a})

-- | Immutable. Immutable ID of the Google Workspace account.
cdccgCustomerId :: Lens' CustomerDevicesChromeosCommandsGet Text
cdccgCustomerId
  = lens _cdccgCustomerId
      (\ s a -> s{_cdccgCustomerId = a})

-- | Immutable. Immutable ID of Chrome OS Device Command.
cdccgCommandId :: Lens' CustomerDevicesChromeosCommandsGet Int64
cdccgCommandId
  = lens _cdccgCommandId
      (\ s a -> s{_cdccgCommandId = a})
      . _Coerce

-- | Immutable. Immutable ID of Chrome OS Device.
cdccgDeviceId :: Lens' CustomerDevicesChromeosCommandsGet Text
cdccgDeviceId
  = lens _cdccgDeviceId
      (\ s a -> s{_cdccgDeviceId = a})

-- | JSONP
cdccgCallback :: Lens' CustomerDevicesChromeosCommandsGet (Maybe Text)
cdccgCallback
  = lens _cdccgCallback
      (\ s a -> s{_cdccgCallback = a})

instance GoogleRequest
           CustomerDevicesChromeosCommandsGet
         where
        type Rs CustomerDevicesChromeosCommandsGet =
             DirectoryChromeosDevicesCommand
        type Scopes CustomerDevicesChromeosCommandsGet =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos",
               "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
        requestClient CustomerDevicesChromeosCommandsGet'{..}
          = go _cdccgCustomerId _cdccgDeviceId _cdccgCommandId
              _cdccgXgafv
              _cdccgUploadProtocol
              _cdccgAccessToken
              _cdccgUploadType
              _cdccgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomerDevicesChromeosCommandsGetResource)
                      mempty
