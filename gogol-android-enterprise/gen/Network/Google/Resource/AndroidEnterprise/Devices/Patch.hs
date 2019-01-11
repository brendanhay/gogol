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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the device policy. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.patch@.
module Network.Google.Resource.AndroidEnterprise.Devices.Patch
    (
    -- * REST Resource
      DevicesPatchResource

    -- * Creating a Request
    , devicesPatch
    , DevicesPatch

    -- * Request Lenses
    , dpUpdateMask
    , dpEnterpriseId
    , dpPayload
    , dpUserId
    , dpDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.patch@ method which the
-- 'DevicesPatch' request conforms to.
type DevicesPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     QueryParam "updateMask" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Device :> Patch '[JSON] Device

-- | Updates the device policy. This method supports patch semantics.
--
-- /See:/ 'devicesPatch' smart constructor.
data DevicesPatch = DevicesPatch'
    { _dpUpdateMask   :: !(Maybe Text)
    , _dpEnterpriseId :: !Text
    , _dpPayload      :: !Device
    , _dpUserId       :: !Text
    , _dpDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpUpdateMask'
--
-- * 'dpEnterpriseId'
--
-- * 'dpPayload'
--
-- * 'dpUserId'
--
-- * 'dpDeviceId'
devicesPatch
    :: Text -- ^ 'dpEnterpriseId'
    -> Device -- ^ 'dpPayload'
    -> Text -- ^ 'dpUserId'
    -> Text -- ^ 'dpDeviceId'
    -> DevicesPatch
devicesPatch pDpEnterpriseId_ pDpPayload_ pDpUserId_ pDpDeviceId_ =
    DevicesPatch'
    { _dpUpdateMask = Nothing
    , _dpEnterpriseId = pDpEnterpriseId_
    , _dpPayload = pDpPayload_
    , _dpUserId = pDpUserId_
    , _dpDeviceId = pDpDeviceId_
    }

-- | Mask that identifies which fields to update. If not set, all modifiable
-- fields will be modified. When set in a query parameter, this field
-- should be specified as updateMask=,,...
dpUpdateMask :: Lens' DevicesPatch (Maybe Text)
dpUpdateMask
  = lens _dpUpdateMask (\ s a -> s{_dpUpdateMask = a})

-- | The ID of the enterprise.
dpEnterpriseId :: Lens' DevicesPatch Text
dpEnterpriseId
  = lens _dpEnterpriseId
      (\ s a -> s{_dpEnterpriseId = a})

-- | Multipart request metadata.
dpPayload :: Lens' DevicesPatch Device
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | The ID of the user.
dpUserId :: Lens' DevicesPatch Text
dpUserId = lens _dpUserId (\ s a -> s{_dpUserId = a})

-- | The ID of the device.
dpDeviceId :: Lens' DevicesPatch Text
dpDeviceId
  = lens _dpDeviceId (\ s a -> s{_dpDeviceId = a})

instance GoogleRequest DevicesPatch where
        type Rs DevicesPatch = Device
        type Scopes DevicesPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesPatch'{..}
          = go _dpEnterpriseId _dpUserId _dpDeviceId
              _dpUpdateMask
              (Just AltJSON)
              _dpPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesPatchResource)
                      mempty
