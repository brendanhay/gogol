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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.IssueCommand
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a command to a device. The Operation resource returned contains a
-- Command in its metadata field. Use the get operation method to get the
-- status of the command.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.issueCommand@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.IssueCommand
    (
    -- * REST Resource
      EnterprisesDevicesIssueCommandResource

    -- * Creating a Request
    , enterprisesDevicesIssueCommand
    , EnterprisesDevicesIssueCommand

    -- * Request Lenses
    , edicXgafv
    , edicUploadProtocol
    , edicAccessToken
    , edicUploadType
    , edicPayload
    , edicName
    , edicCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.issueCommand@ method which the
-- 'EnterprisesDevicesIssueCommand' request conforms to.
type EnterprisesDevicesIssueCommandResource =
     "v1" :>
       CaptureMode "name" "issueCommand" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Command :> Post '[JSON] Operation

-- | Issues a command to a device. The Operation resource returned contains a
-- Command in its metadata field. Use the get operation method to get the
-- status of the command.
--
-- /See:/ 'enterprisesDevicesIssueCommand' smart constructor.
data EnterprisesDevicesIssueCommand =
  EnterprisesDevicesIssueCommand'
    { _edicXgafv :: !(Maybe Xgafv)
    , _edicUploadProtocol :: !(Maybe Text)
    , _edicAccessToken :: !(Maybe Text)
    , _edicUploadType :: !(Maybe Text)
    , _edicPayload :: !Command
    , _edicName :: !Text
    , _edicCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesIssueCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edicXgafv'
--
-- * 'edicUploadProtocol'
--
-- * 'edicAccessToken'
--
-- * 'edicUploadType'
--
-- * 'edicPayload'
--
-- * 'edicName'
--
-- * 'edicCallback'
enterprisesDevicesIssueCommand
    :: Command -- ^ 'edicPayload'
    -> Text -- ^ 'edicName'
    -> EnterprisesDevicesIssueCommand
enterprisesDevicesIssueCommand pEdicPayload_ pEdicName_ =
  EnterprisesDevicesIssueCommand'
    { _edicXgafv = Nothing
    , _edicUploadProtocol = Nothing
    , _edicAccessToken = Nothing
    , _edicUploadType = Nothing
    , _edicPayload = pEdicPayload_
    , _edicName = pEdicName_
    , _edicCallback = Nothing
    }


-- | V1 error format.
edicXgafv :: Lens' EnterprisesDevicesIssueCommand (Maybe Xgafv)
edicXgafv
  = lens _edicXgafv (\ s a -> s{_edicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edicUploadProtocol :: Lens' EnterprisesDevicesIssueCommand (Maybe Text)
edicUploadProtocol
  = lens _edicUploadProtocol
      (\ s a -> s{_edicUploadProtocol = a})

-- | OAuth access token.
edicAccessToken :: Lens' EnterprisesDevicesIssueCommand (Maybe Text)
edicAccessToken
  = lens _edicAccessToken
      (\ s a -> s{_edicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edicUploadType :: Lens' EnterprisesDevicesIssueCommand (Maybe Text)
edicUploadType
  = lens _edicUploadType
      (\ s a -> s{_edicUploadType = a})

-- | Multipart request metadata.
edicPayload :: Lens' EnterprisesDevicesIssueCommand Command
edicPayload
  = lens _edicPayload (\ s a -> s{_edicPayload = a})

-- | The name of the device in the form
-- enterprises\/{enterpriseId}\/devices\/{deviceId}.
edicName :: Lens' EnterprisesDevicesIssueCommand Text
edicName = lens _edicName (\ s a -> s{_edicName = a})

-- | JSONP
edicCallback :: Lens' EnterprisesDevicesIssueCommand (Maybe Text)
edicCallback
  = lens _edicCallback (\ s a -> s{_edicCallback = a})

instance GoogleRequest EnterprisesDevicesIssueCommand
         where
        type Rs EnterprisesDevicesIssueCommand = Operation
        type Scopes EnterprisesDevicesIssueCommand =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesIssueCommand'{..}
          = go _edicName _edicXgafv _edicUploadProtocol
              _edicAccessToken
              _edicUploadType
              _edicCallback
              (Just AltJSON)
              _edicPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesDevicesIssueCommandResource)
                      mempty
