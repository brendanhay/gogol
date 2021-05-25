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
-- Module      : Network.Google.Resource.Admin.Customer.Devices.Chromeos.IssueCommand
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a command for the device to execute.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customer.devices.chromeos.issueCommand@.
module Network.Google.Resource.Admin.Customer.Devices.Chromeos.IssueCommand
    (
    -- * REST Resource
      CustomerDevicesChromeosIssueCommandResource

    -- * Creating a Request
    , customerDevicesChromeosIssueCommand
    , CustomerDevicesChromeosIssueCommand

    -- * Request Lenses
    , cdcicXgafv
    , cdcicUploadProtocol
    , cdcicAccessToken
    , cdcicUploadType
    , cdcicPayload
    , cdcicCustomerId
    , cdcicDeviceId
    , cdcicCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customer.devices.chromeos.issueCommand@ method which the
-- 'CustomerDevicesChromeosIssueCommand' request conforms to.
type CustomerDevicesChromeosIssueCommandResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   CaptureMode "deviceId" "issueCommand" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON]
                                   DirectoryChromeosDevicesIssueCommandRequest
                                   :>
                                   Post '[JSON]
                                     DirectoryChromeosDevicesIssueCommandResponse

-- | Issues a command for the device to execute.
--
-- /See:/ 'customerDevicesChromeosIssueCommand' smart constructor.
data CustomerDevicesChromeosIssueCommand =
  CustomerDevicesChromeosIssueCommand'
    { _cdcicXgafv :: !(Maybe Xgafv)
    , _cdcicUploadProtocol :: !(Maybe Text)
    , _cdcicAccessToken :: !(Maybe Text)
    , _cdcicUploadType :: !(Maybe Text)
    , _cdcicPayload :: !DirectoryChromeosDevicesIssueCommandRequest
    , _cdcicCustomerId :: !Text
    , _cdcicDeviceId :: !Text
    , _cdcicCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerDevicesChromeosIssueCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcicXgafv'
--
-- * 'cdcicUploadProtocol'
--
-- * 'cdcicAccessToken'
--
-- * 'cdcicUploadType'
--
-- * 'cdcicPayload'
--
-- * 'cdcicCustomerId'
--
-- * 'cdcicDeviceId'
--
-- * 'cdcicCallback'
customerDevicesChromeosIssueCommand
    :: DirectoryChromeosDevicesIssueCommandRequest -- ^ 'cdcicPayload'
    -> Text -- ^ 'cdcicCustomerId'
    -> Text -- ^ 'cdcicDeviceId'
    -> CustomerDevicesChromeosIssueCommand
customerDevicesChromeosIssueCommand pCdcicPayload_ pCdcicCustomerId_ pCdcicDeviceId_ =
  CustomerDevicesChromeosIssueCommand'
    { _cdcicXgafv = Nothing
    , _cdcicUploadProtocol = Nothing
    , _cdcicAccessToken = Nothing
    , _cdcicUploadType = Nothing
    , _cdcicPayload = pCdcicPayload_
    , _cdcicCustomerId = pCdcicCustomerId_
    , _cdcicDeviceId = pCdcicDeviceId_
    , _cdcicCallback = Nothing
    }


-- | V1 error format.
cdcicXgafv :: Lens' CustomerDevicesChromeosIssueCommand (Maybe Xgafv)
cdcicXgafv
  = lens _cdcicXgafv (\ s a -> s{_cdcicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdcicUploadProtocol :: Lens' CustomerDevicesChromeosIssueCommand (Maybe Text)
cdcicUploadProtocol
  = lens _cdcicUploadProtocol
      (\ s a -> s{_cdcicUploadProtocol = a})

-- | OAuth access token.
cdcicAccessToken :: Lens' CustomerDevicesChromeosIssueCommand (Maybe Text)
cdcicAccessToken
  = lens _cdcicAccessToken
      (\ s a -> s{_cdcicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdcicUploadType :: Lens' CustomerDevicesChromeosIssueCommand (Maybe Text)
cdcicUploadType
  = lens _cdcicUploadType
      (\ s a -> s{_cdcicUploadType = a})

-- | Multipart request metadata.
cdcicPayload :: Lens' CustomerDevicesChromeosIssueCommand DirectoryChromeosDevicesIssueCommandRequest
cdcicPayload
  = lens _cdcicPayload (\ s a -> s{_cdcicPayload = a})

-- | Immutable. Immutable ID of the Google Workspace account.
cdcicCustomerId :: Lens' CustomerDevicesChromeosIssueCommand Text
cdcicCustomerId
  = lens _cdcicCustomerId
      (\ s a -> s{_cdcicCustomerId = a})

-- | Immutable. Immutable ID of Chrome OS Device.
cdcicDeviceId :: Lens' CustomerDevicesChromeosIssueCommand Text
cdcicDeviceId
  = lens _cdcicDeviceId
      (\ s a -> s{_cdcicDeviceId = a})

-- | JSONP
cdcicCallback :: Lens' CustomerDevicesChromeosIssueCommand (Maybe Text)
cdcicCallback
  = lens _cdcicCallback
      (\ s a -> s{_cdcicCallback = a})

instance GoogleRequest
           CustomerDevicesChromeosIssueCommand
         where
        type Rs CustomerDevicesChromeosIssueCommand =
             DirectoryChromeosDevicesIssueCommandResponse
        type Scopes CustomerDevicesChromeosIssueCommand =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient
          CustomerDevicesChromeosIssueCommand'{..}
          = go _cdcicCustomerId _cdcicDeviceId _cdcicXgafv
              _cdcicUploadProtocol
              _cdcicAccessToken
              _cdcicUploadType
              _cdcicCallback
              (Just AltJSON)
              _cdcicPayload
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomerDevicesChromeosIssueCommandResource)
                      mempty
