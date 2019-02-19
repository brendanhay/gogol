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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.operations.cancel@.
module Network.Google.Resource.Spanner.Projects.Instances.Operations.Cancel
    (
    -- * REST Resource
      ProjectsInstancesOperationsCancelResource

    -- * Creating a Request
    , projectsInstancesOperationsCancel
    , ProjectsInstancesOperationsCancel

    -- * Request Lenses
    , piocXgafv
    , piocUploadProtocol
    , piocAccessToken
    , piocUploadType
    , piocName
    , piocCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.operations.cancel@ method which the
-- 'ProjectsInstancesOperationsCancel' request conforms to.
type ProjectsInstancesOperationsCancelResource =
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
-- /See:/ 'projectsInstancesOperationsCancel' smart constructor.
data ProjectsInstancesOperationsCancel =
  ProjectsInstancesOperationsCancel'
    { _piocXgafv          :: !(Maybe Xgafv)
    , _piocUploadProtocol :: !(Maybe Text)
    , _piocAccessToken    :: !(Maybe Text)
    , _piocUploadType     :: !(Maybe Text)
    , _piocName           :: !Text
    , _piocCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piocXgafv'
--
-- * 'piocUploadProtocol'
--
-- * 'piocAccessToken'
--
-- * 'piocUploadType'
--
-- * 'piocName'
--
-- * 'piocCallback'
projectsInstancesOperationsCancel
    :: Text -- ^ 'piocName'
    -> ProjectsInstancesOperationsCancel
projectsInstancesOperationsCancel pPiocName_ =
  ProjectsInstancesOperationsCancel'
    { _piocXgafv = Nothing
    , _piocUploadProtocol = Nothing
    , _piocAccessToken = Nothing
    , _piocUploadType = Nothing
    , _piocName = pPiocName_
    , _piocCallback = Nothing
    }


-- | V1 error format.
piocXgafv :: Lens' ProjectsInstancesOperationsCancel (Maybe Xgafv)
piocXgafv
  = lens _piocXgafv (\ s a -> s{_piocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piocUploadProtocol :: Lens' ProjectsInstancesOperationsCancel (Maybe Text)
piocUploadProtocol
  = lens _piocUploadProtocol
      (\ s a -> s{_piocUploadProtocol = a})

-- | OAuth access token.
piocAccessToken :: Lens' ProjectsInstancesOperationsCancel (Maybe Text)
piocAccessToken
  = lens _piocAccessToken
      (\ s a -> s{_piocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piocUploadType :: Lens' ProjectsInstancesOperationsCancel (Maybe Text)
piocUploadType
  = lens _piocUploadType
      (\ s a -> s{_piocUploadType = a})

-- | The name of the operation resource to be cancelled.
piocName :: Lens' ProjectsInstancesOperationsCancel Text
piocName = lens _piocName (\ s a -> s{_piocName = a})

-- | JSONP
piocCallback :: Lens' ProjectsInstancesOperationsCancel (Maybe Text)
piocCallback
  = lens _piocCallback (\ s a -> s{_piocCallback = a})

instance GoogleRequest
           ProjectsInstancesOperationsCancel
         where
        type Rs ProjectsInstancesOperationsCancel = Empty
        type Scopes ProjectsInstancesOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesOperationsCancel'{..}
          = go _piocName _piocXgafv _piocUploadProtocol
              _piocAccessToken
              _piocUploadType
              _piocCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesOperationsCancelResource)
                      mempty
