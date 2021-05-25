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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a per-device managed configuration for an app for the specified
-- device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.delete@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Delete
    (
    -- * REST Resource
      ManagedConfigurationsforDeviceDeleteResource

    -- * Creating a Request
    , managedConfigurationsforDeviceDelete
    , ManagedConfigurationsforDeviceDelete

    -- * Request Lenses
    , mcddXgafv
    , mcddUploadProtocol
    , mcddEnterpriseId
    , mcddAccessToken
    , mcddUploadType
    , mcddUserId
    , mcddDeviceId
    , mcddManagedConfigurationForDeviceId
    , mcddCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.delete@ method which the
-- 'ManagedConfigurationsforDeviceDelete' request conforms to.
type ManagedConfigurationsforDeviceDeleteResource =
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
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a per-device managed configuration for an app for the specified
-- device.
--
-- /See:/ 'managedConfigurationsforDeviceDelete' smart constructor.
data ManagedConfigurationsforDeviceDelete =
  ManagedConfigurationsforDeviceDelete'
    { _mcddXgafv :: !(Maybe Xgafv)
    , _mcddUploadProtocol :: !(Maybe Text)
    , _mcddEnterpriseId :: !Text
    , _mcddAccessToken :: !(Maybe Text)
    , _mcddUploadType :: !(Maybe Text)
    , _mcddUserId :: !Text
    , _mcddDeviceId :: !Text
    , _mcddManagedConfigurationForDeviceId :: !Text
    , _mcddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforDeviceDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcddXgafv'
--
-- * 'mcddUploadProtocol'
--
-- * 'mcddEnterpriseId'
--
-- * 'mcddAccessToken'
--
-- * 'mcddUploadType'
--
-- * 'mcddUserId'
--
-- * 'mcddDeviceId'
--
-- * 'mcddManagedConfigurationForDeviceId'
--
-- * 'mcddCallback'
managedConfigurationsforDeviceDelete
    :: Text -- ^ 'mcddEnterpriseId'
    -> Text -- ^ 'mcddUserId'
    -> Text -- ^ 'mcddDeviceId'
    -> Text -- ^ 'mcddManagedConfigurationForDeviceId'
    -> ManagedConfigurationsforDeviceDelete
managedConfigurationsforDeviceDelete pMcddEnterpriseId_ pMcddUserId_ pMcddDeviceId_ pMcddManagedConfigurationForDeviceId_ =
  ManagedConfigurationsforDeviceDelete'
    { _mcddXgafv = Nothing
    , _mcddUploadProtocol = Nothing
    , _mcddEnterpriseId = pMcddEnterpriseId_
    , _mcddAccessToken = Nothing
    , _mcddUploadType = Nothing
    , _mcddUserId = pMcddUserId_
    , _mcddDeviceId = pMcddDeviceId_
    , _mcddManagedConfigurationForDeviceId =
        pMcddManagedConfigurationForDeviceId_
    , _mcddCallback = Nothing
    }


-- | V1 error format.
mcddXgafv :: Lens' ManagedConfigurationsforDeviceDelete (Maybe Xgafv)
mcddXgafv
  = lens _mcddXgafv (\ s a -> s{_mcddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcddUploadProtocol :: Lens' ManagedConfigurationsforDeviceDelete (Maybe Text)
mcddUploadProtocol
  = lens _mcddUploadProtocol
      (\ s a -> s{_mcddUploadProtocol = a})

-- | The ID of the enterprise.
mcddEnterpriseId :: Lens' ManagedConfigurationsforDeviceDelete Text
mcddEnterpriseId
  = lens _mcddEnterpriseId
      (\ s a -> s{_mcddEnterpriseId = a})

-- | OAuth access token.
mcddAccessToken :: Lens' ManagedConfigurationsforDeviceDelete (Maybe Text)
mcddAccessToken
  = lens _mcddAccessToken
      (\ s a -> s{_mcddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcddUploadType :: Lens' ManagedConfigurationsforDeviceDelete (Maybe Text)
mcddUploadType
  = lens _mcddUploadType
      (\ s a -> s{_mcddUploadType = a})

-- | The ID of the user.
mcddUserId :: Lens' ManagedConfigurationsforDeviceDelete Text
mcddUserId
  = lens _mcddUserId (\ s a -> s{_mcddUserId = a})

-- | The Android ID of the device.
mcddDeviceId :: Lens' ManagedConfigurationsforDeviceDelete Text
mcddDeviceId
  = lens _mcddDeviceId (\ s a -> s{_mcddDeviceId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcddManagedConfigurationForDeviceId :: Lens' ManagedConfigurationsforDeviceDelete Text
mcddManagedConfigurationForDeviceId
  = lens _mcddManagedConfigurationForDeviceId
      (\ s a ->
         s{_mcddManagedConfigurationForDeviceId = a})

-- | JSONP
mcddCallback :: Lens' ManagedConfigurationsforDeviceDelete (Maybe Text)
mcddCallback
  = lens _mcddCallback (\ s a -> s{_mcddCallback = a})

instance GoogleRequest
           ManagedConfigurationsforDeviceDelete
         where
        type Rs ManagedConfigurationsforDeviceDelete = ()
        type Scopes ManagedConfigurationsforDeviceDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          ManagedConfigurationsforDeviceDelete'{..}
          = go _mcddEnterpriseId _mcddUserId _mcddDeviceId
              _mcddManagedConfigurationForDeviceId
              _mcddXgafv
              _mcddUploadProtocol
              _mcddAccessToken
              _mcddUploadType
              _mcddCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDeviceDeleteResource)
                      mempty
