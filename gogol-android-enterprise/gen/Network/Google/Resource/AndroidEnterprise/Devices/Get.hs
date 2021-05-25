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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.get@.
module Network.Google.Resource.AndroidEnterprise.Devices.Get
    (
    -- * REST Resource
      DevicesGetResource

    -- * Creating a Request
    , devicesGet
    , DevicesGet

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgEnterpriseId
    , dgAccessToken
    , dgUploadType
    , dgUserId
    , dgDeviceId
    , dgCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.get@ method which the
-- 'DevicesGet' request conforms to.
type DevicesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Retrieves the details of a device.
--
-- /See:/ 'devicesGet' smart constructor.
data DevicesGet =
  DevicesGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgEnterpriseId :: !Text
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgUserId :: !Text
    , _dgDeviceId :: !Text
    , _dgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgEnterpriseId'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgUserId'
--
-- * 'dgDeviceId'
--
-- * 'dgCallback'
devicesGet
    :: Text -- ^ 'dgEnterpriseId'
    -> Text -- ^ 'dgUserId'
    -> Text -- ^ 'dgDeviceId'
    -> DevicesGet
devicesGet pDgEnterpriseId_ pDgUserId_ pDgDeviceId_ =
  DevicesGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgEnterpriseId = pDgEnterpriseId_
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgUserId = pDgUserId_
    , _dgDeviceId = pDgDeviceId_
    , _dgCallback = Nothing
    }


-- | V1 error format.
dgXgafv :: Lens' DevicesGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DevicesGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | The ID of the enterprise.
dgEnterpriseId :: Lens' DevicesGet Text
dgEnterpriseId
  = lens _dgEnterpriseId
      (\ s a -> s{_dgEnterpriseId = a})

-- | OAuth access token.
dgAccessToken :: Lens' DevicesGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DevicesGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | The ID of the user.
dgUserId :: Lens' DevicesGet Text
dgUserId = lens _dgUserId (\ s a -> s{_dgUserId = a})

-- | The ID of the device.
dgDeviceId :: Lens' DevicesGet Text
dgDeviceId
  = lens _dgDeviceId (\ s a -> s{_dgDeviceId = a})

-- | JSONP
dgCallback :: Lens' DevicesGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DevicesGet where
        type Rs DevicesGet = Device
        type Scopes DevicesGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesGet'{..}
          = go _dgEnterpriseId _dgUserId _dgDeviceId _dgXgafv
              _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesGetResource)
                      mempty
