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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.SetState
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets whether a device\'s access to Google services is enabled or
-- disabled. The device state takes effect only if enforcing EMM policies
-- on Android devices is enabled in the Google Admin Console. Otherwise,
-- the device state is ignored and all devices are allowed access to Google
-- services. This is only supported for Google-managed users.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.setState@.
module Network.Google.Resource.AndroidEnterprise.Devices.SetState
    (
    -- * REST Resource
      DevicesSetStateResource

    -- * Creating a Request
    , devicesSetState
    , DevicesSetState

    -- * Request Lenses
    , dssXgafv
    , dssUploadProtocol
    , dssEnterpriseId
    , dssAccessToken
    , dssUploadType
    , dssPayload
    , dssUserId
    , dssDeviceId
    , dssCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.setState@ method which the
-- 'DevicesSetState' request conforms to.
type DevicesSetStateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "state" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] DeviceState :>
                                     Put '[JSON] DeviceState

-- | Sets whether a device\'s access to Google services is enabled or
-- disabled. The device state takes effect only if enforcing EMM policies
-- on Android devices is enabled in the Google Admin Console. Otherwise,
-- the device state is ignored and all devices are allowed access to Google
-- services. This is only supported for Google-managed users.
--
-- /See:/ 'devicesSetState' smart constructor.
data DevicesSetState =
  DevicesSetState'
    { _dssXgafv :: !(Maybe Xgafv)
    , _dssUploadProtocol :: !(Maybe Text)
    , _dssEnterpriseId :: !Text
    , _dssAccessToken :: !(Maybe Text)
    , _dssUploadType :: !(Maybe Text)
    , _dssPayload :: !DeviceState
    , _dssUserId :: !Text
    , _dssDeviceId :: !Text
    , _dssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesSetState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssXgafv'
--
-- * 'dssUploadProtocol'
--
-- * 'dssEnterpriseId'
--
-- * 'dssAccessToken'
--
-- * 'dssUploadType'
--
-- * 'dssPayload'
--
-- * 'dssUserId'
--
-- * 'dssDeviceId'
--
-- * 'dssCallback'
devicesSetState
    :: Text -- ^ 'dssEnterpriseId'
    -> DeviceState -- ^ 'dssPayload'
    -> Text -- ^ 'dssUserId'
    -> Text -- ^ 'dssDeviceId'
    -> DevicesSetState
devicesSetState pDssEnterpriseId_ pDssPayload_ pDssUserId_ pDssDeviceId_ =
  DevicesSetState'
    { _dssXgafv = Nothing
    , _dssUploadProtocol = Nothing
    , _dssEnterpriseId = pDssEnterpriseId_
    , _dssAccessToken = Nothing
    , _dssUploadType = Nothing
    , _dssPayload = pDssPayload_
    , _dssUserId = pDssUserId_
    , _dssDeviceId = pDssDeviceId_
    , _dssCallback = Nothing
    }


-- | V1 error format.
dssXgafv :: Lens' DevicesSetState (Maybe Xgafv)
dssXgafv = lens _dssXgafv (\ s a -> s{_dssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dssUploadProtocol :: Lens' DevicesSetState (Maybe Text)
dssUploadProtocol
  = lens _dssUploadProtocol
      (\ s a -> s{_dssUploadProtocol = a})

-- | The ID of the enterprise.
dssEnterpriseId :: Lens' DevicesSetState Text
dssEnterpriseId
  = lens _dssEnterpriseId
      (\ s a -> s{_dssEnterpriseId = a})

-- | OAuth access token.
dssAccessToken :: Lens' DevicesSetState (Maybe Text)
dssAccessToken
  = lens _dssAccessToken
      (\ s a -> s{_dssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dssUploadType :: Lens' DevicesSetState (Maybe Text)
dssUploadType
  = lens _dssUploadType
      (\ s a -> s{_dssUploadType = a})

-- | Multipart request metadata.
dssPayload :: Lens' DevicesSetState DeviceState
dssPayload
  = lens _dssPayload (\ s a -> s{_dssPayload = a})

-- | The ID of the user.
dssUserId :: Lens' DevicesSetState Text
dssUserId
  = lens _dssUserId (\ s a -> s{_dssUserId = a})

-- | The ID of the device.
dssDeviceId :: Lens' DevicesSetState Text
dssDeviceId
  = lens _dssDeviceId (\ s a -> s{_dssDeviceId = a})

-- | JSONP
dssCallback :: Lens' DevicesSetState (Maybe Text)
dssCallback
  = lens _dssCallback (\ s a -> s{_dssCallback = a})

instance GoogleRequest DevicesSetState where
        type Rs DevicesSetState = DeviceState
        type Scopes DevicesSetState =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesSetState'{..}
          = go _dssEnterpriseId _dssUserId _dssDeviceId
              _dssXgafv
              _dssUploadProtocol
              _dssAccessToken
              _dssUploadType
              _dssCallback
              (Just AltJSON)
              _dssPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesSetStateResource)
                      mempty
