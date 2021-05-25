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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.delete@.
module Network.Google.Resource.AndroidEnterprise.Installs.Delete
    (
    -- * REST Resource
      InstallsDeleteResource

    -- * Creating a Request
    , installsDelete
    , InstallsDelete

    -- * Request Lenses
    , idXgafv
    , idUploadProtocol
    , idEnterpriseId
    , idAccessToken
    , idUploadType
    , idUserId
    , idInstallId
    , idDeviceId
    , idCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.installs.delete@ method which the
-- 'InstallsDelete' request conforms to.
type InstallsDeleteResource =
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
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ 'installsDelete' smart constructor.
data InstallsDelete =
  InstallsDelete'
    { _idXgafv :: !(Maybe Xgafv)
    , _idUploadProtocol :: !(Maybe Text)
    , _idEnterpriseId :: !Text
    , _idAccessToken :: !(Maybe Text)
    , _idUploadType :: !(Maybe Text)
    , _idUserId :: !Text
    , _idInstallId :: !Text
    , _idDeviceId :: !Text
    , _idCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstallsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idXgafv'
--
-- * 'idUploadProtocol'
--
-- * 'idEnterpriseId'
--
-- * 'idAccessToken'
--
-- * 'idUploadType'
--
-- * 'idUserId'
--
-- * 'idInstallId'
--
-- * 'idDeviceId'
--
-- * 'idCallback'
installsDelete
    :: Text -- ^ 'idEnterpriseId'
    -> Text -- ^ 'idUserId'
    -> Text -- ^ 'idInstallId'
    -> Text -- ^ 'idDeviceId'
    -> InstallsDelete
installsDelete pIdEnterpriseId_ pIdUserId_ pIdInstallId_ pIdDeviceId_ =
  InstallsDelete'
    { _idXgafv = Nothing
    , _idUploadProtocol = Nothing
    , _idEnterpriseId = pIdEnterpriseId_
    , _idAccessToken = Nothing
    , _idUploadType = Nothing
    , _idUserId = pIdUserId_
    , _idInstallId = pIdInstallId_
    , _idDeviceId = pIdDeviceId_
    , _idCallback = Nothing
    }


-- | V1 error format.
idXgafv :: Lens' InstallsDelete (Maybe Xgafv)
idXgafv = lens _idXgafv (\ s a -> s{_idXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idUploadProtocol :: Lens' InstallsDelete (Maybe Text)
idUploadProtocol
  = lens _idUploadProtocol
      (\ s a -> s{_idUploadProtocol = a})

-- | The ID of the enterprise.
idEnterpriseId :: Lens' InstallsDelete Text
idEnterpriseId
  = lens _idEnterpriseId
      (\ s a -> s{_idEnterpriseId = a})

-- | OAuth access token.
idAccessToken :: Lens' InstallsDelete (Maybe Text)
idAccessToken
  = lens _idAccessToken
      (\ s a -> s{_idAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idUploadType :: Lens' InstallsDelete (Maybe Text)
idUploadType
  = lens _idUploadType (\ s a -> s{_idUploadType = a})

-- | The ID of the user.
idUserId :: Lens' InstallsDelete Text
idUserId = lens _idUserId (\ s a -> s{_idUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
idInstallId :: Lens' InstallsDelete Text
idInstallId
  = lens _idInstallId (\ s a -> s{_idInstallId = a})

-- | The Android ID of the device.
idDeviceId :: Lens' InstallsDelete Text
idDeviceId
  = lens _idDeviceId (\ s a -> s{_idDeviceId = a})

-- | JSONP
idCallback :: Lens' InstallsDelete (Maybe Text)
idCallback
  = lens _idCallback (\ s a -> s{_idCallback = a})

instance GoogleRequest InstallsDelete where
        type Rs InstallsDelete = ()
        type Scopes InstallsDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient InstallsDelete'{..}
          = go _idEnterpriseId _idUserId _idDeviceId
              _idInstallId
              _idXgafv
              _idUploadProtocol
              _idAccessToken
              _idUploadType
              _idCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsDeleteResource)
                      mempty
