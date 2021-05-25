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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Get
    (
    -- * REST Resource
      EnterprisesDevicesGetResource

    -- * Creating a Request
    , enterprisesDevicesGet
    , EnterprisesDevicesGet

    -- * Request Lenses
    , edgXgafv
    , edgUploadProtocol
    , edgAccessToken
    , edgUploadType
    , edgName
    , edgCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.get@ method which the
-- 'EnterprisesDevicesGet' request conforms to.
type EnterprisesDevicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Gets a device.
--
-- /See:/ 'enterprisesDevicesGet' smart constructor.
data EnterprisesDevicesGet =
  EnterprisesDevicesGet'
    { _edgXgafv :: !(Maybe Xgafv)
    , _edgUploadProtocol :: !(Maybe Text)
    , _edgAccessToken :: !(Maybe Text)
    , _edgUploadType :: !(Maybe Text)
    , _edgName :: !Text
    , _edgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edgXgafv'
--
-- * 'edgUploadProtocol'
--
-- * 'edgAccessToken'
--
-- * 'edgUploadType'
--
-- * 'edgName'
--
-- * 'edgCallback'
enterprisesDevicesGet
    :: Text -- ^ 'edgName'
    -> EnterprisesDevicesGet
enterprisesDevicesGet pEdgName_ =
  EnterprisesDevicesGet'
    { _edgXgafv = Nothing
    , _edgUploadProtocol = Nothing
    , _edgAccessToken = Nothing
    , _edgUploadType = Nothing
    , _edgName = pEdgName_
    , _edgCallback = Nothing
    }


-- | V1 error format.
edgXgafv :: Lens' EnterprisesDevicesGet (Maybe Xgafv)
edgXgafv = lens _edgXgafv (\ s a -> s{_edgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edgUploadProtocol :: Lens' EnterprisesDevicesGet (Maybe Text)
edgUploadProtocol
  = lens _edgUploadProtocol
      (\ s a -> s{_edgUploadProtocol = a})

-- | OAuth access token.
edgAccessToken :: Lens' EnterprisesDevicesGet (Maybe Text)
edgAccessToken
  = lens _edgAccessToken
      (\ s a -> s{_edgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edgUploadType :: Lens' EnterprisesDevicesGet (Maybe Text)
edgUploadType
  = lens _edgUploadType
      (\ s a -> s{_edgUploadType = a})

-- | The name of the device in the form
-- enterprises\/{enterpriseId}\/devices\/{deviceId}.
edgName :: Lens' EnterprisesDevicesGet Text
edgName = lens _edgName (\ s a -> s{_edgName = a})

-- | JSONP
edgCallback :: Lens' EnterprisesDevicesGet (Maybe Text)
edgCallback
  = lens _edgCallback (\ s a -> s{_edgCallback = a})

instance GoogleRequest EnterprisesDevicesGet where
        type Rs EnterprisesDevicesGet = Device
        type Scopes EnterprisesDevicesGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesGet'{..}
          = go _edgName _edgXgafv _edgUploadProtocol
              _edgAccessToken
              _edgUploadType
              _edgCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDevicesGetResource)
                      mempty
