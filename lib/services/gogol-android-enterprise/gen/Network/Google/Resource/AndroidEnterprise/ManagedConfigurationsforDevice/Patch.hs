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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates a per-device managed configuration for an app for the
-- specified device. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.patch@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Patch
    (
    -- * REST Resource
      ManagedConfigurationsforDevicePatchResource

    -- * Creating a Request
    , managedConfigurationsforDevicePatch
    , ManagedConfigurationsforDevicePatch

    -- * Request Lenses
    , mcdpEnterpriseId
    , mcdpPayload
    , mcdpUserId
    , mcdpDeviceId
    , mcdpManagedConfigurationForDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.patch@ method which the
-- 'ManagedConfigurationsforDevicePatch' request conforms to.
type ManagedConfigurationsforDevicePatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "managedConfigurationsForDevice" :>
                       Capture "managedConfigurationForDeviceId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ManagedConfiguration :>
                             Patch '[JSON] ManagedConfiguration

-- | Adds or updates a per-device managed configuration for an app for the
-- specified device. This method supports patch semantics.
--
-- /See:/ 'managedConfigurationsforDevicePatch' smart constructor.
data ManagedConfigurationsforDevicePatch =
  ManagedConfigurationsforDevicePatch'
    { _mcdpEnterpriseId                    :: !Text
    , _mcdpPayload                         :: !ManagedConfiguration
    , _mcdpUserId                          :: !Text
    , _mcdpDeviceId                        :: !Text
    , _mcdpManagedConfigurationForDeviceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforDevicePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdpEnterpriseId'
--
-- * 'mcdpPayload'
--
-- * 'mcdpUserId'
--
-- * 'mcdpDeviceId'
--
-- * 'mcdpManagedConfigurationForDeviceId'
managedConfigurationsforDevicePatch
    :: Text -- ^ 'mcdpEnterpriseId'
    -> ManagedConfiguration -- ^ 'mcdpPayload'
    -> Text -- ^ 'mcdpUserId'
    -> Text -- ^ 'mcdpDeviceId'
    -> Text -- ^ 'mcdpManagedConfigurationForDeviceId'
    -> ManagedConfigurationsforDevicePatch
managedConfigurationsforDevicePatch pMcdpEnterpriseId_ pMcdpPayload_ pMcdpUserId_ pMcdpDeviceId_ pMcdpManagedConfigurationForDeviceId_ =
  ManagedConfigurationsforDevicePatch'
    { _mcdpEnterpriseId = pMcdpEnterpriseId_
    , _mcdpPayload = pMcdpPayload_
    , _mcdpUserId = pMcdpUserId_
    , _mcdpDeviceId = pMcdpDeviceId_
    , _mcdpManagedConfigurationForDeviceId =
        pMcdpManagedConfigurationForDeviceId_
    }


-- | The ID of the enterprise.
mcdpEnterpriseId :: Lens' ManagedConfigurationsforDevicePatch Text
mcdpEnterpriseId
  = lens _mcdpEnterpriseId
      (\ s a -> s{_mcdpEnterpriseId = a})

-- | Multipart request metadata.
mcdpPayload :: Lens' ManagedConfigurationsforDevicePatch ManagedConfiguration
mcdpPayload
  = lens _mcdpPayload (\ s a -> s{_mcdpPayload = a})

-- | The ID of the user.
mcdpUserId :: Lens' ManagedConfigurationsforDevicePatch Text
mcdpUserId
  = lens _mcdpUserId (\ s a -> s{_mcdpUserId = a})

-- | The Android ID of the device.
mcdpDeviceId :: Lens' ManagedConfigurationsforDevicePatch Text
mcdpDeviceId
  = lens _mcdpDeviceId (\ s a -> s{_mcdpDeviceId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcdpManagedConfigurationForDeviceId :: Lens' ManagedConfigurationsforDevicePatch Text
mcdpManagedConfigurationForDeviceId
  = lens _mcdpManagedConfigurationForDeviceId
      (\ s a ->
         s{_mcdpManagedConfigurationForDeviceId = a})

instance GoogleRequest
           ManagedConfigurationsforDevicePatch
         where
        type Rs ManagedConfigurationsforDevicePatch =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforDevicePatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          ManagedConfigurationsforDevicePatch'{..}
          = go _mcdpEnterpriseId _mcdpUserId _mcdpDeviceId
              _mcdpManagedConfigurationForDeviceId
              (Just AltJSON)
              _mcdpPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDevicePatchResource)
                      mempty
