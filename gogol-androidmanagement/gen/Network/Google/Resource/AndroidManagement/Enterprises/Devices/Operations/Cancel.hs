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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation
-- or other methods to check whether the cancellation succeeded or whether
-- the operation completed despite cancellation. On successful
-- cancellation, the operation is not deleted; instead, it becomes an
-- operation with an Operation.error value with a google.rpc.Status.code of
-- 1, corresponding to Code.CANCELLED.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.operations.cancel@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Cancel
    (
    -- * REST Resource
      EnterprisesDevicesOperationsCancelResource

    -- * Creating a Request
    , enterprisesDevicesOperationsCancel
    , EnterprisesDevicesOperationsCancel

    -- * Request Lenses
    , edocXgafv
    , edocUploadProtocol
    , edocAccessToken
    , edocUploadType
    , edocName
    , edocCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.operations.cancel@ method which the
-- 'EnterprisesDevicesOperationsCancel' request conforms to.
type EnterprisesDevicesOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation
-- or other methods to check whether the cancellation succeeded or whether
-- the operation completed despite cancellation. On successful
-- cancellation, the operation is not deleted; instead, it becomes an
-- operation with an Operation.error value with a google.rpc.Status.code of
-- 1, corresponding to Code.CANCELLED.
--
-- /See:/ 'enterprisesDevicesOperationsCancel' smart constructor.
data EnterprisesDevicesOperationsCancel =
  EnterprisesDevicesOperationsCancel'
    { _edocXgafv :: !(Maybe Xgafv)
    , _edocUploadProtocol :: !(Maybe Text)
    , _edocAccessToken :: !(Maybe Text)
    , _edocUploadType :: !(Maybe Text)
    , _edocName :: !Text
    , _edocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edocXgafv'
--
-- * 'edocUploadProtocol'
--
-- * 'edocAccessToken'
--
-- * 'edocUploadType'
--
-- * 'edocName'
--
-- * 'edocCallback'
enterprisesDevicesOperationsCancel
    :: Text -- ^ 'edocName'
    -> EnterprisesDevicesOperationsCancel
enterprisesDevicesOperationsCancel pEdocName_ =
  EnterprisesDevicesOperationsCancel'
    { _edocXgafv = Nothing
    , _edocUploadProtocol = Nothing
    , _edocAccessToken = Nothing
    , _edocUploadType = Nothing
    , _edocName = pEdocName_
    , _edocCallback = Nothing
    }


-- | V1 error format.
edocXgafv :: Lens' EnterprisesDevicesOperationsCancel (Maybe Xgafv)
edocXgafv
  = lens _edocXgafv (\ s a -> s{_edocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edocUploadProtocol :: Lens' EnterprisesDevicesOperationsCancel (Maybe Text)
edocUploadProtocol
  = lens _edocUploadProtocol
      (\ s a -> s{_edocUploadProtocol = a})

-- | OAuth access token.
edocAccessToken :: Lens' EnterprisesDevicesOperationsCancel (Maybe Text)
edocAccessToken
  = lens _edocAccessToken
      (\ s a -> s{_edocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edocUploadType :: Lens' EnterprisesDevicesOperationsCancel (Maybe Text)
edocUploadType
  = lens _edocUploadType
      (\ s a -> s{_edocUploadType = a})

-- | The name of the operation resource to be cancelled.
edocName :: Lens' EnterprisesDevicesOperationsCancel Text
edocName = lens _edocName (\ s a -> s{_edocName = a})

-- | JSONP
edocCallback :: Lens' EnterprisesDevicesOperationsCancel (Maybe Text)
edocCallback
  = lens _edocCallback (\ s a -> s{_edocCallback = a})

instance GoogleRequest
           EnterprisesDevicesOperationsCancel
         where
        type Rs EnterprisesDevicesOperationsCancel = Empty
        type Scopes EnterprisesDevicesOperationsCancel =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesOperationsCancel'{..}
          = go _edocName _edocXgafv _edocUploadProtocol
              _edocAccessToken
              _edocUploadType
              _edocCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesDevicesOperationsCancelResource)
                      mempty
