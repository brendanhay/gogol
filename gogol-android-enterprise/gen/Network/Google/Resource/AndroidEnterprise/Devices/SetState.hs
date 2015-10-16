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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseDevicesSetState@.
module Network.Google.Resource.AndroidEnterprise.Devices.SetState
    (
    -- * REST Resource
      DevicesSetStateResource

    -- * Creating a Request
    , devicesSetState'
    , DevicesSetState'

    -- * Request Lenses
    , dssEnterpriseId
    , dssPayload
    , dssUserId
    , dssDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseDevicesSetState@ method which the
-- 'DevicesSetState'' request conforms to.
type DevicesSetStateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "state" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeviceState :>
                       Put '[JSON] DeviceState

-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ 'devicesSetState'' smart constructor.
data DevicesSetState' = DevicesSetState'
    { _dssEnterpriseId :: !Text
    , _dssPayload      :: !DeviceState
    , _dssUserId       :: !Text
    , _dssDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesSetState'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssEnterpriseId'
--
-- * 'dssPayload'
--
-- * 'dssUserId'
--
-- * 'dssDeviceId'
devicesSetState'
    :: Text -- ^ 'enterpriseId'
    -> DeviceState -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesSetState'
devicesSetState' pDssEnterpriseId_ pDssPayload_ pDssUserId_ pDssDeviceId_ =
    DevicesSetState'
    { _dssEnterpriseId = pDssEnterpriseId_
    , _dssPayload = pDssPayload_
    , _dssUserId = pDssUserId_
    , _dssDeviceId = pDssDeviceId_
    }

-- | The ID of the enterprise.
dssEnterpriseId :: Lens' DevicesSetState' Text
dssEnterpriseId
  = lens _dssEnterpriseId
      (\ s a -> s{_dssEnterpriseId = a})

-- | Multipart request metadata.
dssPayload :: Lens' DevicesSetState' DeviceState
dssPayload
  = lens _dssPayload (\ s a -> s{_dssPayload = a})

-- | The ID of the user.
dssUserId :: Lens' DevicesSetState' Text
dssUserId
  = lens _dssUserId (\ s a -> s{_dssUserId = a})

-- | The ID of the device.
dssDeviceId :: Lens' DevicesSetState' Text
dssDeviceId
  = lens _dssDeviceId (\ s a -> s{_dssDeviceId = a})

instance GoogleRequest DevicesSetState' where
        type Rs DevicesSetState' = DeviceState
        requestClient DevicesSetState'{..}
          = go _dssEnterpriseId _dssUserId _dssDeviceId
              (Just AltJSON)
              _dssPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesSetStateResource)
                      mempty
