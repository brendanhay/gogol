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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to install the latest version of an app to a device. If the app
-- is already installed, then it is updated to the latest version if
-- necessary.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.update@.
module Network.Google.Resource.AndroidEnterprise.Installs.Update
    (
    -- * REST Resource
      InstallsUpdateResource

    -- * Creating a Request
    , installsUpdate
    , InstallsUpdate

    -- * Request Lenses
    , iuXgafv
    , iuUploadProtocol
    , iuEnterpriseId
    , iuAccessToken
    , iuUploadType
    , iuPayload
    , iuUserId
    , iuInstallId
    , iuDeviceId
    , iuCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.installs.update@ method which the
-- 'InstallsUpdate' request conforms to.
type InstallsUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       Capture "installId" Text :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Install :>
                                       Put '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed, then it is updated to the latest version if
-- necessary.
--
-- /See:/ 'installsUpdate' smart constructor.
data InstallsUpdate =
  InstallsUpdate'
    { _iuXgafv :: !(Maybe Xgafv)
    , _iuUploadProtocol :: !(Maybe Text)
    , _iuEnterpriseId :: !Text
    , _iuAccessToken :: !(Maybe Text)
    , _iuUploadType :: !(Maybe Text)
    , _iuPayload :: !Install
    , _iuUserId :: !Text
    , _iuInstallId :: !Text
    , _iuDeviceId :: !Text
    , _iuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstallsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuXgafv'
--
-- * 'iuUploadProtocol'
--
-- * 'iuEnterpriseId'
--
-- * 'iuAccessToken'
--
-- * 'iuUploadType'
--
-- * 'iuPayload'
--
-- * 'iuUserId'
--
-- * 'iuInstallId'
--
-- * 'iuDeviceId'
--
-- * 'iuCallback'
installsUpdate
    :: Text -- ^ 'iuEnterpriseId'
    -> Install -- ^ 'iuPayload'
    -> Text -- ^ 'iuUserId'
    -> Text -- ^ 'iuInstallId'
    -> Text -- ^ 'iuDeviceId'
    -> InstallsUpdate
installsUpdate pIuEnterpriseId_ pIuPayload_ pIuUserId_ pIuInstallId_ pIuDeviceId_ =
  InstallsUpdate'
    { _iuXgafv = Nothing
    , _iuUploadProtocol = Nothing
    , _iuEnterpriseId = pIuEnterpriseId_
    , _iuAccessToken = Nothing
    , _iuUploadType = Nothing
    , _iuPayload = pIuPayload_
    , _iuUserId = pIuUserId_
    , _iuInstallId = pIuInstallId_
    , _iuDeviceId = pIuDeviceId_
    , _iuCallback = Nothing
    }


-- | V1 error format.
iuXgafv :: Lens' InstallsUpdate (Maybe Xgafv)
iuXgafv = lens _iuXgafv (\ s a -> s{_iuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iuUploadProtocol :: Lens' InstallsUpdate (Maybe Text)
iuUploadProtocol
  = lens _iuUploadProtocol
      (\ s a -> s{_iuUploadProtocol = a})

-- | The ID of the enterprise.
iuEnterpriseId :: Lens' InstallsUpdate Text
iuEnterpriseId
  = lens _iuEnterpriseId
      (\ s a -> s{_iuEnterpriseId = a})

-- | OAuth access token.
iuAccessToken :: Lens' InstallsUpdate (Maybe Text)
iuAccessToken
  = lens _iuAccessToken
      (\ s a -> s{_iuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iuUploadType :: Lens' InstallsUpdate (Maybe Text)
iuUploadType
  = lens _iuUploadType (\ s a -> s{_iuUploadType = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstallsUpdate Install
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | The ID of the user.
iuUserId :: Lens' InstallsUpdate Text
iuUserId = lens _iuUserId (\ s a -> s{_iuUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
iuInstallId :: Lens' InstallsUpdate Text
iuInstallId
  = lens _iuInstallId (\ s a -> s{_iuInstallId = a})

-- | The Android ID of the device.
iuDeviceId :: Lens' InstallsUpdate Text
iuDeviceId
  = lens _iuDeviceId (\ s a -> s{_iuDeviceId = a})

-- | JSONP
iuCallback :: Lens' InstallsUpdate (Maybe Text)
iuCallback
  = lens _iuCallback (\ s a -> s{_iuCallback = a})

instance GoogleRequest InstallsUpdate where
        type Rs InstallsUpdate = Install
        type Scopes InstallsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient InstallsUpdate'{..}
          = go _iuEnterpriseId _iuUserId _iuDeviceId
              _iuInstallId
              _iuXgafv
              _iuUploadProtocol
              _iuAccessToken
              _iuUploadType
              _iuCallback
              (Just AltJSON)
              _iuPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsUpdateResource)
                      mempty
