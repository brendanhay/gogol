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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the device policy
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.update@.
module Network.Google.Resource.AndroidEnterprise.Devices.Update
    (
    -- * REST Resource
      DevicesUpdateResource

    -- * Creating a Request
    , devicesUpdate
    , DevicesUpdate

    -- * Request Lenses
    , duUpdateMask
    , duEnterpriseId
    , duPayload
    , duUserId
    , duDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.update@ method which the
-- 'DevicesUpdate' request conforms to.
type DevicesUpdateResource =
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
                         ReqBody '[JSON] Device :> Put '[JSON] Device

-- | Updates the device policy
--
-- /See:/ 'devicesUpdate' smart constructor.
data DevicesUpdate = DevicesUpdate'
    { _duUpdateMask   :: !(Maybe Text)
    , _duEnterpriseId :: !Text
    , _duPayload      :: !Device
    , _duUserId       :: !Text
    , _duDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duUpdateMask'
--
-- * 'duEnterpriseId'
--
-- * 'duPayload'
--
-- * 'duUserId'
--
-- * 'duDeviceId'
devicesUpdate
    :: Text -- ^ 'duEnterpriseId'
    -> Device -- ^ 'duPayload'
    -> Text -- ^ 'duUserId'
    -> Text -- ^ 'duDeviceId'
    -> DevicesUpdate
devicesUpdate pDuEnterpriseId_ pDuPayload_ pDuUserId_ pDuDeviceId_ =
    DevicesUpdate'
    { _duUpdateMask = Nothing
    , _duEnterpriseId = pDuEnterpriseId_
    , _duPayload = pDuPayload_
    , _duUserId = pDuUserId_
    , _duDeviceId = pDuDeviceId_
    }

-- | Mask that identifies which fields to update. If not set, all modifiable
-- fields will be modified. When set in a query parameter, this field
-- should be specified as updateMask=,,...
duUpdateMask :: Lens' DevicesUpdate (Maybe Text)
duUpdateMask
  = lens _duUpdateMask (\ s a -> s{_duUpdateMask = a})

-- | The ID of the enterprise.
duEnterpriseId :: Lens' DevicesUpdate Text
duEnterpriseId
  = lens _duEnterpriseId
      (\ s a -> s{_duEnterpriseId = a})

-- | Multipart request metadata.
duPayload :: Lens' DevicesUpdate Device
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | The ID of the user.
duUserId :: Lens' DevicesUpdate Text
duUserId = lens _duUserId (\ s a -> s{_duUserId = a})

-- | The ID of the device.
duDeviceId :: Lens' DevicesUpdate Text
duDeviceId
  = lens _duDeviceId (\ s a -> s{_duDeviceId = a})

instance GoogleRequest DevicesUpdate where
        type Rs DevicesUpdate = Device
        type Scopes DevicesUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesUpdate'{..}
          = go _duEnterpriseId _duUserId _duDeviceId
              _duUpdateMask
              (Just AltJSON)
              _duPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesUpdateResource)
                      mempty
