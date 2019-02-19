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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the per-device managed configurations for the specified
-- device. Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.list@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.List
    (
    -- * REST Resource
      ManagedConfigurationsforDeviceListResource

    -- * Creating a Request
    , managedConfigurationsforDeviceList
    , ManagedConfigurationsforDeviceList

    -- * Request Lenses
    , mcdlEnterpriseId
    , mcdlUserId
    , mcdlDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.list@ method which the
-- 'ManagedConfigurationsforDeviceList' request conforms to.
type ManagedConfigurationsforDeviceListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "managedConfigurationsForDevice" :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           ManagedConfigurationsForDeviceListResponse

-- | Lists all the per-device managed configurations for the specified
-- device. Only the ID is set.
--
-- /See:/ 'managedConfigurationsforDeviceList' smart constructor.
data ManagedConfigurationsforDeviceList =
  ManagedConfigurationsforDeviceList'
    { _mcdlEnterpriseId :: !Text
    , _mcdlUserId       :: !Text
    , _mcdlDeviceId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsforDeviceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdlEnterpriseId'
--
-- * 'mcdlUserId'
--
-- * 'mcdlDeviceId'
managedConfigurationsforDeviceList
    :: Text -- ^ 'mcdlEnterpriseId'
    -> Text -- ^ 'mcdlUserId'
    -> Text -- ^ 'mcdlDeviceId'
    -> ManagedConfigurationsforDeviceList
managedConfigurationsforDeviceList pMcdlEnterpriseId_ pMcdlUserId_ pMcdlDeviceId_ =
  ManagedConfigurationsforDeviceList'
    { _mcdlEnterpriseId = pMcdlEnterpriseId_
    , _mcdlUserId = pMcdlUserId_
    , _mcdlDeviceId = pMcdlDeviceId_
    }

-- | The ID of the enterprise.
mcdlEnterpriseId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlEnterpriseId
  = lens _mcdlEnterpriseId
      (\ s a -> s{_mcdlEnterpriseId = a})

-- | The ID of the user.
mcdlUserId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlUserId
  = lens _mcdlUserId (\ s a -> s{_mcdlUserId = a})

-- | The Android ID of the device.
mcdlDeviceId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlDeviceId
  = lens _mcdlDeviceId (\ s a -> s{_mcdlDeviceId = a})

instance GoogleRequest
           ManagedConfigurationsforDeviceList
         where
        type Rs ManagedConfigurationsforDeviceList =
             ManagedConfigurationsForDeviceListResponse
        type Scopes ManagedConfigurationsforDeviceList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforDeviceList'{..}
          = go _mcdlEnterpriseId _mcdlUserId _mcdlDeviceId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDeviceListResource)
                      mempty
