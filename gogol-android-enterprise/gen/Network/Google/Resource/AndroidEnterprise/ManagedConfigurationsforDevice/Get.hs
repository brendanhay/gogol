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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a per-device managed configuration.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.get@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Get
    (
    -- * REST Resource
      ManagedConfigurationsforDeviceGetResource

    -- * Creating a Request
    , managedConfigurationsforDeviceGet
    , ManagedConfigurationsforDeviceGet

    -- * Request Lenses
    , mcdgEnterpriseId
    , mcdgUserId
    , mcdgDeviceId
    , mcdgManagedConfigurationForDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.get@ method which the
-- 'ManagedConfigurationsforDeviceGet' request conforms to.
type ManagedConfigurationsforDeviceGetResource =
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
                           Get '[JSON] ManagedConfiguration

-- | Retrieves details of a per-device managed configuration.
--
-- /See:/ 'managedConfigurationsforDeviceGet' smart constructor.
data ManagedConfigurationsforDeviceGet =
  ManagedConfigurationsforDeviceGet'
    { _mcdgEnterpriseId                    :: !Text
    , _mcdgUserId                          :: !Text
    , _mcdgDeviceId                        :: !Text
    , _mcdgManagedConfigurationForDeviceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationsforDeviceGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdgEnterpriseId'
--
-- * 'mcdgUserId'
--
-- * 'mcdgDeviceId'
--
-- * 'mcdgManagedConfigurationForDeviceId'
managedConfigurationsforDeviceGet
    :: Text -- ^ 'mcdgEnterpriseId'
    -> Text -- ^ 'mcdgUserId'
    -> Text -- ^ 'mcdgDeviceId'
    -> Text -- ^ 'mcdgManagedConfigurationForDeviceId'
    -> ManagedConfigurationsforDeviceGet
managedConfigurationsforDeviceGet pMcdgEnterpriseId_ pMcdgUserId_ pMcdgDeviceId_ pMcdgManagedConfigurationForDeviceId_ =
  ManagedConfigurationsforDeviceGet'
    { _mcdgEnterpriseId = pMcdgEnterpriseId_
    , _mcdgUserId = pMcdgUserId_
    , _mcdgDeviceId = pMcdgDeviceId_
    , _mcdgManagedConfigurationForDeviceId =
        pMcdgManagedConfigurationForDeviceId_
    }

-- | The ID of the enterprise.
mcdgEnterpriseId :: Lens' ManagedConfigurationsforDeviceGet Text
mcdgEnterpriseId
  = lens _mcdgEnterpriseId
      (\ s a -> s{_mcdgEnterpriseId = a})

-- | The ID of the user.
mcdgUserId :: Lens' ManagedConfigurationsforDeviceGet Text
mcdgUserId
  = lens _mcdgUserId (\ s a -> s{_mcdgUserId = a})

-- | The Android ID of the device.
mcdgDeviceId :: Lens' ManagedConfigurationsforDeviceGet Text
mcdgDeviceId
  = lens _mcdgDeviceId (\ s a -> s{_mcdgDeviceId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcdgManagedConfigurationForDeviceId :: Lens' ManagedConfigurationsforDeviceGet Text
mcdgManagedConfigurationForDeviceId
  = lens _mcdgManagedConfigurationForDeviceId
      (\ s a ->
         s{_mcdgManagedConfigurationForDeviceId = a})

instance GoogleRequest
           ManagedConfigurationsforDeviceGet
         where
        type Rs ManagedConfigurationsforDeviceGet =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforDeviceGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforDeviceGet'{..}
          = go _mcdgEnterpriseId _mcdgUserId _mcdgDeviceId
              _mcdgManagedConfigurationForDeviceId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDeviceGetResource)
                      mempty
