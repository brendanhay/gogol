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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates a per-device managed configuration for an app for the
-- specified device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.update@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforDevice.Update
    (
    -- * REST Resource
      ManagedConfigurationsforDeviceUpdateResource

    -- * Creating a Request
    , managedConfigurationsforDeviceUpdate
    , ManagedConfigurationsforDeviceUpdate

    -- * Request Lenses
    , mcduXgafv
    , mcduUploadProtocol
    , mcduEnterpriseId
    , mcduAccessToken
    , mcduUploadType
    , mcduPayload
    , mcduUserId
    , mcduDeviceId
    , mcduManagedConfigurationForDeviceId
    , mcduCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.update@ method which the
-- 'ManagedConfigurationsforDeviceUpdate' request conforms to.
type ManagedConfigurationsforDeviceUpdateResource =
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
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ManagedConfiguration :>
                                       Put '[JSON] ManagedConfiguration

-- | Adds or updates a per-device managed configuration for an app for the
-- specified device.
--
-- /See:/ 'managedConfigurationsforDeviceUpdate' smart constructor.
data ManagedConfigurationsforDeviceUpdate =
  ManagedConfigurationsforDeviceUpdate'
    { _mcduXgafv :: !(Maybe Xgafv)
    , _mcduUploadProtocol :: !(Maybe Text)
    , _mcduEnterpriseId :: !Text
    , _mcduAccessToken :: !(Maybe Text)
    , _mcduUploadType :: !(Maybe Text)
    , _mcduPayload :: !ManagedConfiguration
    , _mcduUserId :: !Text
    , _mcduDeviceId :: !Text
    , _mcduManagedConfigurationForDeviceId :: !Text
    , _mcduCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforDeviceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcduXgafv'
--
-- * 'mcduUploadProtocol'
--
-- * 'mcduEnterpriseId'
--
-- * 'mcduAccessToken'
--
-- * 'mcduUploadType'
--
-- * 'mcduPayload'
--
-- * 'mcduUserId'
--
-- * 'mcduDeviceId'
--
-- * 'mcduManagedConfigurationForDeviceId'
--
-- * 'mcduCallback'
managedConfigurationsforDeviceUpdate
    :: Text -- ^ 'mcduEnterpriseId'
    -> ManagedConfiguration -- ^ 'mcduPayload'
    -> Text -- ^ 'mcduUserId'
    -> Text -- ^ 'mcduDeviceId'
    -> Text -- ^ 'mcduManagedConfigurationForDeviceId'
    -> ManagedConfigurationsforDeviceUpdate
managedConfigurationsforDeviceUpdate pMcduEnterpriseId_ pMcduPayload_ pMcduUserId_ pMcduDeviceId_ pMcduManagedConfigurationForDeviceId_ =
  ManagedConfigurationsforDeviceUpdate'
    { _mcduXgafv = Nothing
    , _mcduUploadProtocol = Nothing
    , _mcduEnterpriseId = pMcduEnterpriseId_
    , _mcduAccessToken = Nothing
    , _mcduUploadType = Nothing
    , _mcduPayload = pMcduPayload_
    , _mcduUserId = pMcduUserId_
    , _mcduDeviceId = pMcduDeviceId_
    , _mcduManagedConfigurationForDeviceId =
        pMcduManagedConfigurationForDeviceId_
    , _mcduCallback = Nothing
    }


-- | V1 error format.
mcduXgafv :: Lens' ManagedConfigurationsforDeviceUpdate (Maybe Xgafv)
mcduXgafv
  = lens _mcduXgafv (\ s a -> s{_mcduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcduUploadProtocol :: Lens' ManagedConfigurationsforDeviceUpdate (Maybe Text)
mcduUploadProtocol
  = lens _mcduUploadProtocol
      (\ s a -> s{_mcduUploadProtocol = a})

-- | The ID of the enterprise.
mcduEnterpriseId :: Lens' ManagedConfigurationsforDeviceUpdate Text
mcduEnterpriseId
  = lens _mcduEnterpriseId
      (\ s a -> s{_mcduEnterpriseId = a})

-- | OAuth access token.
mcduAccessToken :: Lens' ManagedConfigurationsforDeviceUpdate (Maybe Text)
mcduAccessToken
  = lens _mcduAccessToken
      (\ s a -> s{_mcduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcduUploadType :: Lens' ManagedConfigurationsforDeviceUpdate (Maybe Text)
mcduUploadType
  = lens _mcduUploadType
      (\ s a -> s{_mcduUploadType = a})

-- | Multipart request metadata.
mcduPayload :: Lens' ManagedConfigurationsforDeviceUpdate ManagedConfiguration
mcduPayload
  = lens _mcduPayload (\ s a -> s{_mcduPayload = a})

-- | The ID of the user.
mcduUserId :: Lens' ManagedConfigurationsforDeviceUpdate Text
mcduUserId
  = lens _mcduUserId (\ s a -> s{_mcduUserId = a})

-- | The Android ID of the device.
mcduDeviceId :: Lens' ManagedConfigurationsforDeviceUpdate Text
mcduDeviceId
  = lens _mcduDeviceId (\ s a -> s{_mcduDeviceId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcduManagedConfigurationForDeviceId :: Lens' ManagedConfigurationsforDeviceUpdate Text
mcduManagedConfigurationForDeviceId
  = lens _mcduManagedConfigurationForDeviceId
      (\ s a ->
         s{_mcduManagedConfigurationForDeviceId = a})

-- | JSONP
mcduCallback :: Lens' ManagedConfigurationsforDeviceUpdate (Maybe Text)
mcduCallback
  = lens _mcduCallback (\ s a -> s{_mcduCallback = a})

instance GoogleRequest
           ManagedConfigurationsforDeviceUpdate
         where
        type Rs ManagedConfigurationsforDeviceUpdate =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforDeviceUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          ManagedConfigurationsforDeviceUpdate'{..}
          = go _mcduEnterpriseId _mcduUserId _mcduDeviceId
              _mcduManagedConfigurationForDeviceId
              _mcduXgafv
              _mcduUploadProtocol
              _mcduAccessToken
              _mcduUploadType
              _mcduCallback
              (Just AltJSON)
              _mcduPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDeviceUpdateResource)
                      mempty
