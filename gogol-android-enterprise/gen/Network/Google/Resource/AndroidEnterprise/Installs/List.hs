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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all apps installed on the specified device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.list@.
module Network.Google.Resource.AndroidEnterprise.Installs.List
    (
    -- * REST Resource
      InstallsListResource

    -- * Creating a Request
    , installsList
    , InstallsList

    -- * Request Lenses
    , ilXgafv
    , ilUploadProtocol
    , ilEnterpriseId
    , ilAccessToken
    , ilUploadType
    , ilUserId
    , ilDeviceId
    , ilCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.installs.list@ method which the
-- 'InstallsList' request conforms to.
type InstallsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "installs" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] InstallsListResponse

-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ 'installsList' smart constructor.
data InstallsList =
  InstallsList'
    { _ilXgafv :: !(Maybe Xgafv)
    , _ilUploadProtocol :: !(Maybe Text)
    , _ilEnterpriseId :: !Text
    , _ilAccessToken :: !(Maybe Text)
    , _ilUploadType :: !(Maybe Text)
    , _ilUserId :: !Text
    , _ilDeviceId :: !Text
    , _ilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstallsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilXgafv'
--
-- * 'ilUploadProtocol'
--
-- * 'ilEnterpriseId'
--
-- * 'ilAccessToken'
--
-- * 'ilUploadType'
--
-- * 'ilUserId'
--
-- * 'ilDeviceId'
--
-- * 'ilCallback'
installsList
    :: Text -- ^ 'ilEnterpriseId'
    -> Text -- ^ 'ilUserId'
    -> Text -- ^ 'ilDeviceId'
    -> InstallsList
installsList pIlEnterpriseId_ pIlUserId_ pIlDeviceId_ =
  InstallsList'
    { _ilXgafv = Nothing
    , _ilUploadProtocol = Nothing
    , _ilEnterpriseId = pIlEnterpriseId_
    , _ilAccessToken = Nothing
    , _ilUploadType = Nothing
    , _ilUserId = pIlUserId_
    , _ilDeviceId = pIlDeviceId_
    , _ilCallback = Nothing
    }


-- | V1 error format.
ilXgafv :: Lens' InstallsList (Maybe Xgafv)
ilXgafv = lens _ilXgafv (\ s a -> s{_ilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ilUploadProtocol :: Lens' InstallsList (Maybe Text)
ilUploadProtocol
  = lens _ilUploadProtocol
      (\ s a -> s{_ilUploadProtocol = a})

-- | The ID of the enterprise.
ilEnterpriseId :: Lens' InstallsList Text
ilEnterpriseId
  = lens _ilEnterpriseId
      (\ s a -> s{_ilEnterpriseId = a})

-- | OAuth access token.
ilAccessToken :: Lens' InstallsList (Maybe Text)
ilAccessToken
  = lens _ilAccessToken
      (\ s a -> s{_ilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ilUploadType :: Lens' InstallsList (Maybe Text)
ilUploadType
  = lens _ilUploadType (\ s a -> s{_ilUploadType = a})

-- | The ID of the user.
ilUserId :: Lens' InstallsList Text
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | The Android ID of the device.
ilDeviceId :: Lens' InstallsList Text
ilDeviceId
  = lens _ilDeviceId (\ s a -> s{_ilDeviceId = a})

-- | JSONP
ilCallback :: Lens' InstallsList (Maybe Text)
ilCallback
  = lens _ilCallback (\ s a -> s{_ilCallback = a})

instance GoogleRequest InstallsList where
        type Rs InstallsList = InstallsListResponse
        type Scopes InstallsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient InstallsList'{..}
          = go _ilEnterpriseId _ilUserId _ilDeviceId _ilXgafv
              _ilUploadProtocol
              _ilAccessToken
              _ilUploadType
              _ilCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsListResource)
                      mempty
