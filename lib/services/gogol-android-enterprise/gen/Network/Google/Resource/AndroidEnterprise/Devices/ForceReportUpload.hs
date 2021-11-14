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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.ForceReportUpload
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a report containing any changes in app states on the device
-- since the last report was generated. You can call this method up to 3
-- times every 24 hours for a given device. If you exceed the quota, then
-- the Google Play EMM API returns HTTP 429 Too Many Requests.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.forceReportUpload@.
module Network.Google.Resource.AndroidEnterprise.Devices.ForceReportUpload
    (
    -- * REST Resource
      DevicesForceReportUploadResource

    -- * Creating a Request
    , devicesForceReportUpload
    , DevicesForceReportUpload

    -- * Request Lenses
    , dfruXgafv
    , dfruUploadProtocol
    , dfruEnterpriseId
    , dfruAccessToken
    , dfruUploadType
    , dfruUserId
    , dfruDeviceId
    , dfruCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.forceReportUpload@ method which the
-- 'DevicesForceReportUpload' request conforms to.
type DevicesForceReportUploadResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "forceReportUpload" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Uploads a report containing any changes in app states on the device
-- since the last report was generated. You can call this method up to 3
-- times every 24 hours for a given device. If you exceed the quota, then
-- the Google Play EMM API returns HTTP 429 Too Many Requests.
--
-- /See:/ 'devicesForceReportUpload' smart constructor.
data DevicesForceReportUpload =
  DevicesForceReportUpload'
    { _dfruXgafv :: !(Maybe Xgafv)
    , _dfruUploadProtocol :: !(Maybe Text)
    , _dfruEnterpriseId :: !Text
    , _dfruAccessToken :: !(Maybe Text)
    , _dfruUploadType :: !(Maybe Text)
    , _dfruUserId :: !Text
    , _dfruDeviceId :: !Text
    , _dfruCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesForceReportUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfruXgafv'
--
-- * 'dfruUploadProtocol'
--
-- * 'dfruEnterpriseId'
--
-- * 'dfruAccessToken'
--
-- * 'dfruUploadType'
--
-- * 'dfruUserId'
--
-- * 'dfruDeviceId'
--
-- * 'dfruCallback'
devicesForceReportUpload
    :: Text -- ^ 'dfruEnterpriseId'
    -> Text -- ^ 'dfruUserId'
    -> Text -- ^ 'dfruDeviceId'
    -> DevicesForceReportUpload
devicesForceReportUpload pDfruEnterpriseId_ pDfruUserId_ pDfruDeviceId_ =
  DevicesForceReportUpload'
    { _dfruXgafv = Nothing
    , _dfruUploadProtocol = Nothing
    , _dfruEnterpriseId = pDfruEnterpriseId_
    , _dfruAccessToken = Nothing
    , _dfruUploadType = Nothing
    , _dfruUserId = pDfruUserId_
    , _dfruDeviceId = pDfruDeviceId_
    , _dfruCallback = Nothing
    }


-- | V1 error format.
dfruXgafv :: Lens' DevicesForceReportUpload (Maybe Xgafv)
dfruXgafv
  = lens _dfruXgafv (\ s a -> s{_dfruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dfruUploadProtocol :: Lens' DevicesForceReportUpload (Maybe Text)
dfruUploadProtocol
  = lens _dfruUploadProtocol
      (\ s a -> s{_dfruUploadProtocol = a})

-- | The ID of the enterprise.
dfruEnterpriseId :: Lens' DevicesForceReportUpload Text
dfruEnterpriseId
  = lens _dfruEnterpriseId
      (\ s a -> s{_dfruEnterpriseId = a})

-- | OAuth access token.
dfruAccessToken :: Lens' DevicesForceReportUpload (Maybe Text)
dfruAccessToken
  = lens _dfruAccessToken
      (\ s a -> s{_dfruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dfruUploadType :: Lens' DevicesForceReportUpload (Maybe Text)
dfruUploadType
  = lens _dfruUploadType
      (\ s a -> s{_dfruUploadType = a})

-- | The ID of the user.
dfruUserId :: Lens' DevicesForceReportUpload Text
dfruUserId
  = lens _dfruUserId (\ s a -> s{_dfruUserId = a})

-- | The ID of the device.
dfruDeviceId :: Lens' DevicesForceReportUpload Text
dfruDeviceId
  = lens _dfruDeviceId (\ s a -> s{_dfruDeviceId = a})

-- | JSONP
dfruCallback :: Lens' DevicesForceReportUpload (Maybe Text)
dfruCallback
  = lens _dfruCallback (\ s a -> s{_dfruCallback = a})

instance GoogleRequest DevicesForceReportUpload where
        type Rs DevicesForceReportUpload = ()
        type Scopes DevicesForceReportUpload =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesForceReportUpload'{..}
          = go _dfruEnterpriseId _dfruUserId _dfruDeviceId
              _dfruXgafv
              _dfruUploadProtocol
              _dfruAccessToken
              _dfruUploadType
              _dfruCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesForceReportUploadResource)
                      mempty
