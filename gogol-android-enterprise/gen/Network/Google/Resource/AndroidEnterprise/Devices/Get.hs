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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.get@.
module Network.Google.Resource.AndroidEnterprise.Devices.Get
    (
    -- * REST Resource
      DevicesGetResource

    -- * Creating a Request
    , devicesGet
    , DevicesGet

    -- * Request Lenses
    , dgEnterpriseId
    , dgUserId
    , dgDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.get@ method which the
-- 'DevicesGet' request conforms to.
type DevicesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Retrieves the details of a device.
--
-- /See:/ 'devicesGet' smart constructor.
data DevicesGet = DevicesGet
    { _dgEnterpriseId :: !Text
    , _dgUserId       :: !Text
    , _dgDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgEnterpriseId'
--
-- * 'dgUserId'
--
-- * 'dgDeviceId'
devicesGet
    :: Text -- ^ 'dgEnterpriseId'
    -> Text -- ^ 'dgUserId'
    -> Text -- ^ 'dgDeviceId'
    -> DevicesGet
devicesGet pDgEnterpriseId_ pDgUserId_ pDgDeviceId_ =
    DevicesGet
    { _dgEnterpriseId = pDgEnterpriseId_
    , _dgUserId = pDgUserId_
    , _dgDeviceId = pDgDeviceId_
    }

-- | The ID of the enterprise.
dgEnterpriseId :: Lens' DevicesGet Text
dgEnterpriseId
  = lens _dgEnterpriseId
      (\ s a -> s{_dgEnterpriseId = a})

-- | The ID of the user.
dgUserId :: Lens' DevicesGet Text
dgUserId = lens _dgUserId (\ s a -> s{_dgUserId = a})

-- | The ID of the device.
dgDeviceId :: Lens' DevicesGet Text
dgDeviceId
  = lens _dgDeviceId (\ s a -> s{_dgDeviceId = a})

instance GoogleRequest DevicesGet where
        type Rs DevicesGet = Device
        requestClient DevicesGet{..}
          = go _dgEnterpriseId _dgUserId _dgDeviceId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesGetResource)
                      mempty
