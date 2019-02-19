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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.operations.cancel@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Cancel
    (
    -- * REST Resource
      ProjectsInstancesDatabasesOperationsCancelResource

    -- * Creating a Request
    , projectsInstancesDatabasesOperationsCancel
    , ProjectsInstancesDatabasesOperationsCancel

    -- * Request Lenses
    , pidocXgafv
    , pidocUploadProtocol
    , pidocAccessToken
    , pidocUploadType
    , pidocName
    , pidocCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.operations.cancel@ method which the
-- 'ProjectsInstancesDatabasesOperationsCancel' request conforms to.
type ProjectsInstancesDatabasesOperationsCancelResource
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
-- /See:/ 'projectsInstancesDatabasesOperationsCancel' smart constructor.
data ProjectsInstancesDatabasesOperationsCancel =
  ProjectsInstancesDatabasesOperationsCancel'
    { _pidocXgafv          :: !(Maybe Xgafv)
    , _pidocUploadProtocol :: !(Maybe Text)
    , _pidocAccessToken    :: !(Maybe Text)
    , _pidocUploadType     :: !(Maybe Text)
    , _pidocName           :: !Text
    , _pidocCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidocXgafv'
--
-- * 'pidocUploadProtocol'
--
-- * 'pidocAccessToken'
--
-- * 'pidocUploadType'
--
-- * 'pidocName'
--
-- * 'pidocCallback'
projectsInstancesDatabasesOperationsCancel
    :: Text -- ^ 'pidocName'
    -> ProjectsInstancesDatabasesOperationsCancel
projectsInstancesDatabasesOperationsCancel pPidocName_ =
  ProjectsInstancesDatabasesOperationsCancel'
    { _pidocXgafv = Nothing
    , _pidocUploadProtocol = Nothing
    , _pidocAccessToken = Nothing
    , _pidocUploadType = Nothing
    , _pidocName = pPidocName_
    , _pidocCallback = Nothing
    }

-- | V1 error format.
pidocXgafv :: Lens' ProjectsInstancesDatabasesOperationsCancel (Maybe Xgafv)
pidocXgafv
  = lens _pidocXgafv (\ s a -> s{_pidocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidocUploadProtocol :: Lens' ProjectsInstancesDatabasesOperationsCancel (Maybe Text)
pidocUploadProtocol
  = lens _pidocUploadProtocol
      (\ s a -> s{_pidocUploadProtocol = a})

-- | OAuth access token.
pidocAccessToken :: Lens' ProjectsInstancesDatabasesOperationsCancel (Maybe Text)
pidocAccessToken
  = lens _pidocAccessToken
      (\ s a -> s{_pidocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidocUploadType :: Lens' ProjectsInstancesDatabasesOperationsCancel (Maybe Text)
pidocUploadType
  = lens _pidocUploadType
      (\ s a -> s{_pidocUploadType = a})

-- | The name of the operation resource to be cancelled.
pidocName :: Lens' ProjectsInstancesDatabasesOperationsCancel Text
pidocName
  = lens _pidocName (\ s a -> s{_pidocName = a})

-- | JSONP
pidocCallback :: Lens' ProjectsInstancesDatabasesOperationsCancel (Maybe Text)
pidocCallback
  = lens _pidocCallback
      (\ s a -> s{_pidocCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesOperationsCancel
         where
        type Rs ProjectsInstancesDatabasesOperationsCancel =
             Empty
        type Scopes
               ProjectsInstancesDatabasesOperationsCancel
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesOperationsCancel'{..}
          = go _pidocName _pidocXgafv _pidocUploadProtocol
              _pidocAccessToken
              _pidocUploadType
              _pidocCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesOperationsCancelResource)
                      mempty
