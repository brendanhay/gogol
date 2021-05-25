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
    , mcdlXgafv
    , mcdlUploadProtocol
    , mcdlEnterpriseId
    , mcdlAccessToken
    , mcdlUploadType
    , mcdlUserId
    , mcdlDeviceId
    , mcdlCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

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
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     ManagedConfigurationsForDeviceListResponse

-- | Lists all the per-device managed configurations for the specified
-- device. Only the ID is set.
--
-- /See:/ 'managedConfigurationsforDeviceList' smart constructor.
data ManagedConfigurationsforDeviceList =
  ManagedConfigurationsforDeviceList'
    { _mcdlXgafv :: !(Maybe Xgafv)
    , _mcdlUploadProtocol :: !(Maybe Text)
    , _mcdlEnterpriseId :: !Text
    , _mcdlAccessToken :: !(Maybe Text)
    , _mcdlUploadType :: !(Maybe Text)
    , _mcdlUserId :: !Text
    , _mcdlDeviceId :: !Text
    , _mcdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforDeviceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdlXgafv'
--
-- * 'mcdlUploadProtocol'
--
-- * 'mcdlEnterpriseId'
--
-- * 'mcdlAccessToken'
--
-- * 'mcdlUploadType'
--
-- * 'mcdlUserId'
--
-- * 'mcdlDeviceId'
--
-- * 'mcdlCallback'
managedConfigurationsforDeviceList
    :: Text -- ^ 'mcdlEnterpriseId'
    -> Text -- ^ 'mcdlUserId'
    -> Text -- ^ 'mcdlDeviceId'
    -> ManagedConfigurationsforDeviceList
managedConfigurationsforDeviceList pMcdlEnterpriseId_ pMcdlUserId_ pMcdlDeviceId_ =
  ManagedConfigurationsforDeviceList'
    { _mcdlXgafv = Nothing
    , _mcdlUploadProtocol = Nothing
    , _mcdlEnterpriseId = pMcdlEnterpriseId_
    , _mcdlAccessToken = Nothing
    , _mcdlUploadType = Nothing
    , _mcdlUserId = pMcdlUserId_
    , _mcdlDeviceId = pMcdlDeviceId_
    , _mcdlCallback = Nothing
    }


-- | V1 error format.
mcdlXgafv :: Lens' ManagedConfigurationsforDeviceList (Maybe Xgafv)
mcdlXgafv
  = lens _mcdlXgafv (\ s a -> s{_mcdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcdlUploadProtocol :: Lens' ManagedConfigurationsforDeviceList (Maybe Text)
mcdlUploadProtocol
  = lens _mcdlUploadProtocol
      (\ s a -> s{_mcdlUploadProtocol = a})

-- | The ID of the enterprise.
mcdlEnterpriseId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlEnterpriseId
  = lens _mcdlEnterpriseId
      (\ s a -> s{_mcdlEnterpriseId = a})

-- | OAuth access token.
mcdlAccessToken :: Lens' ManagedConfigurationsforDeviceList (Maybe Text)
mcdlAccessToken
  = lens _mcdlAccessToken
      (\ s a -> s{_mcdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcdlUploadType :: Lens' ManagedConfigurationsforDeviceList (Maybe Text)
mcdlUploadType
  = lens _mcdlUploadType
      (\ s a -> s{_mcdlUploadType = a})

-- | The ID of the user.
mcdlUserId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlUserId
  = lens _mcdlUserId (\ s a -> s{_mcdlUserId = a})

-- | The Android ID of the device.
mcdlDeviceId :: Lens' ManagedConfigurationsforDeviceList Text
mcdlDeviceId
  = lens _mcdlDeviceId (\ s a -> s{_mcdlDeviceId = a})

-- | JSONP
mcdlCallback :: Lens' ManagedConfigurationsforDeviceList (Maybe Text)
mcdlCallback
  = lens _mcdlCallback (\ s a -> s{_mcdlCallback = a})

instance GoogleRequest
           ManagedConfigurationsforDeviceList
         where
        type Rs ManagedConfigurationsforDeviceList =
             ManagedConfigurationsForDeviceListResponse
        type Scopes ManagedConfigurationsforDeviceList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforDeviceList'{..}
          = go _mcdlEnterpriseId _mcdlUserId _mcdlDeviceId
              _mcdlXgafv
              _mcdlUploadProtocol
              _mcdlAccessToken
              _mcdlUploadType
              _mcdlCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforDeviceListResource)
                      mempty
