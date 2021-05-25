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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.operations.cancel@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Cancel
    (
    -- * REST Resource
      ProjectsInstancesBackupsOperationsCancelResource

    -- * Creating a Request
    , projectsInstancesBackupsOperationsCancel
    , ProjectsInstancesBackupsOperationsCancel

    -- * Request Lenses
    , pibocXgafv
    , pibocUploadProtocol
    , pibocAccessToken
    , pibocUploadType
    , pibocName
    , pibocCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.operations.cancel@ method which the
-- 'ProjectsInstancesBackupsOperationsCancel' request conforms to.
type ProjectsInstancesBackupsOperationsCancelResource
     =
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
-- \`google.rpc.Code.UNIMPLEMENTED\`. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
--
-- /See:/ 'projectsInstancesBackupsOperationsCancel' smart constructor.
data ProjectsInstancesBackupsOperationsCancel =
  ProjectsInstancesBackupsOperationsCancel'
    { _pibocXgafv :: !(Maybe Xgafv)
    , _pibocUploadProtocol :: !(Maybe Text)
    , _pibocAccessToken :: !(Maybe Text)
    , _pibocUploadType :: !(Maybe Text)
    , _pibocName :: !Text
    , _pibocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibocXgafv'
--
-- * 'pibocUploadProtocol'
--
-- * 'pibocAccessToken'
--
-- * 'pibocUploadType'
--
-- * 'pibocName'
--
-- * 'pibocCallback'
projectsInstancesBackupsOperationsCancel
    :: Text -- ^ 'pibocName'
    -> ProjectsInstancesBackupsOperationsCancel
projectsInstancesBackupsOperationsCancel pPibocName_ =
  ProjectsInstancesBackupsOperationsCancel'
    { _pibocXgafv = Nothing
    , _pibocUploadProtocol = Nothing
    , _pibocAccessToken = Nothing
    , _pibocUploadType = Nothing
    , _pibocName = pPibocName_
    , _pibocCallback = Nothing
    }


-- | V1 error format.
pibocXgafv :: Lens' ProjectsInstancesBackupsOperationsCancel (Maybe Xgafv)
pibocXgafv
  = lens _pibocXgafv (\ s a -> s{_pibocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibocUploadProtocol :: Lens' ProjectsInstancesBackupsOperationsCancel (Maybe Text)
pibocUploadProtocol
  = lens _pibocUploadProtocol
      (\ s a -> s{_pibocUploadProtocol = a})

-- | OAuth access token.
pibocAccessToken :: Lens' ProjectsInstancesBackupsOperationsCancel (Maybe Text)
pibocAccessToken
  = lens _pibocAccessToken
      (\ s a -> s{_pibocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibocUploadType :: Lens' ProjectsInstancesBackupsOperationsCancel (Maybe Text)
pibocUploadType
  = lens _pibocUploadType
      (\ s a -> s{_pibocUploadType = a})

-- | The name of the operation resource to be cancelled.
pibocName :: Lens' ProjectsInstancesBackupsOperationsCancel Text
pibocName
  = lens _pibocName (\ s a -> s{_pibocName = a})

-- | JSONP
pibocCallback :: Lens' ProjectsInstancesBackupsOperationsCancel (Maybe Text)
pibocCallback
  = lens _pibocCallback
      (\ s a -> s{_pibocCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsOperationsCancel
         where
        type Rs ProjectsInstancesBackupsOperationsCancel =
             Empty
        type Scopes ProjectsInstancesBackupsOperationsCancel
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsOperationsCancel'{..}
          = go _pibocName _pibocXgafv _pibocUploadProtocol
              _pibocAccessToken
              _pibocUploadType
              _pibocCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesBackupsOperationsCancelResource)
                      mempty
