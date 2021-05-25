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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an installation of an app on a device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.get@.
module Network.Google.Resource.AndroidEnterprise.Installs.Get
    (
    -- * REST Resource
      InstallsGetResource

    -- * Creating a Request
    , installsGet
    , InstallsGet

    -- * Request Lenses
    , igXgafv
    , igUploadProtocol
    , igEnterpriseId
    , igAccessToken
    , igUploadType
    , igUserId
    , igInstallId
    , igDeviceId
    , igCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.installs.get@ method which the
-- 'InstallsGet' request conforms to.
type InstallsGetResource =
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
                                     Get '[JSON] Install

-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ 'installsGet' smart constructor.
data InstallsGet =
  InstallsGet'
    { _igXgafv :: !(Maybe Xgafv)
    , _igUploadProtocol :: !(Maybe Text)
    , _igEnterpriseId :: !Text
    , _igAccessToken :: !(Maybe Text)
    , _igUploadType :: !(Maybe Text)
    , _igUserId :: !Text
    , _igInstallId :: !Text
    , _igDeviceId :: !Text
    , _igCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstallsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igXgafv'
--
-- * 'igUploadProtocol'
--
-- * 'igEnterpriseId'
--
-- * 'igAccessToken'
--
-- * 'igUploadType'
--
-- * 'igUserId'
--
-- * 'igInstallId'
--
-- * 'igDeviceId'
--
-- * 'igCallback'
installsGet
    :: Text -- ^ 'igEnterpriseId'
    -> Text -- ^ 'igUserId'
    -> Text -- ^ 'igInstallId'
    -> Text -- ^ 'igDeviceId'
    -> InstallsGet
installsGet pIgEnterpriseId_ pIgUserId_ pIgInstallId_ pIgDeviceId_ =
  InstallsGet'
    { _igXgafv = Nothing
    , _igUploadProtocol = Nothing
    , _igEnterpriseId = pIgEnterpriseId_
    , _igAccessToken = Nothing
    , _igUploadType = Nothing
    , _igUserId = pIgUserId_
    , _igInstallId = pIgInstallId_
    , _igDeviceId = pIgDeviceId_
    , _igCallback = Nothing
    }


-- | V1 error format.
igXgafv :: Lens' InstallsGet (Maybe Xgafv)
igXgafv = lens _igXgafv (\ s a -> s{_igXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
igUploadProtocol :: Lens' InstallsGet (Maybe Text)
igUploadProtocol
  = lens _igUploadProtocol
      (\ s a -> s{_igUploadProtocol = a})

-- | The ID of the enterprise.
igEnterpriseId :: Lens' InstallsGet Text
igEnterpriseId
  = lens _igEnterpriseId
      (\ s a -> s{_igEnterpriseId = a})

-- | OAuth access token.
igAccessToken :: Lens' InstallsGet (Maybe Text)
igAccessToken
  = lens _igAccessToken
      (\ s a -> s{_igAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
igUploadType :: Lens' InstallsGet (Maybe Text)
igUploadType
  = lens _igUploadType (\ s a -> s{_igUploadType = a})

-- | The ID of the user.
igUserId :: Lens' InstallsGet Text
igUserId = lens _igUserId (\ s a -> s{_igUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
igInstallId :: Lens' InstallsGet Text
igInstallId
  = lens _igInstallId (\ s a -> s{_igInstallId = a})

-- | The Android ID of the device.
igDeviceId :: Lens' InstallsGet Text
igDeviceId
  = lens _igDeviceId (\ s a -> s{_igDeviceId = a})

-- | JSONP
igCallback :: Lens' InstallsGet (Maybe Text)
igCallback
  = lens _igCallback (\ s a -> s{_igCallback = a})

instance GoogleRequest InstallsGet where
        type Rs InstallsGet = Install
        type Scopes InstallsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient InstallsGet'{..}
          = go _igEnterpriseId _igUserId _igDeviceId
              _igInstallId
              _igXgafv
              _igUploadProtocol
              _igAccessToken
              _igUploadType
              _igCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsGetResource)
                      mempty
