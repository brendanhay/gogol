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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.cancel@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Cancel
    (
    -- * REST Resource
      ProjectsRegionsOperationsCancelResource

    -- * Creating a Request
    , projectsRegionsOperationsCancel
    , ProjectsRegionsOperationsCancel

    -- * Request Lenses
    , procXgafv
    , procUploadProtocol
    , procPp
    , procAccessToken
    , procUploadType
    , procBearerToken
    , procName
    , procCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.cancel@ method which the
-- 'ProjectsRegionsOperationsCancel' request conforms to.
type ProjectsRegionsOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
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
-- /See:/ 'projectsRegionsOperationsCancel' smart constructor.
data ProjectsRegionsOperationsCancel = ProjectsRegionsOperationsCancel'
    { _procXgafv          :: !(Maybe Text)
    , _procUploadProtocol :: !(Maybe Text)
    , _procPp             :: !Bool
    , _procAccessToken    :: !(Maybe Text)
    , _procUploadType     :: !(Maybe Text)
    , _procBearerToken    :: !(Maybe Text)
    , _procName           :: !Text
    , _procCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'procXgafv'
--
-- * 'procUploadProtocol'
--
-- * 'procPp'
--
-- * 'procAccessToken'
--
-- * 'procUploadType'
--
-- * 'procBearerToken'
--
-- * 'procName'
--
-- * 'procCallback'
projectsRegionsOperationsCancel
    :: Text -- ^ 'procName'
    -> ProjectsRegionsOperationsCancel
projectsRegionsOperationsCancel pProcName_ =
    ProjectsRegionsOperationsCancel'
    { _procXgafv = Nothing
    , _procUploadProtocol = Nothing
    , _procPp = True
    , _procAccessToken = Nothing
    , _procUploadType = Nothing
    , _procBearerToken = Nothing
    , _procName = pProcName_
    , _procCallback = Nothing
    }

-- | V1 error format.
procXgafv :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procXgafv
  = lens _procXgafv (\ s a -> s{_procXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
procUploadProtocol :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procUploadProtocol
  = lens _procUploadProtocol
      (\ s a -> s{_procUploadProtocol = a})

-- | Pretty-print response.
procPp :: Lens' ProjectsRegionsOperationsCancel Bool
procPp = lens _procPp (\ s a -> s{_procPp = a})

-- | OAuth access token.
procAccessToken :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procAccessToken
  = lens _procAccessToken
      (\ s a -> s{_procAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
procUploadType :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procUploadType
  = lens _procUploadType
      (\ s a -> s{_procUploadType = a})

-- | OAuth bearer token.
procBearerToken :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procBearerToken
  = lens _procBearerToken
      (\ s a -> s{_procBearerToken = a})

-- | The name of the operation resource to be cancelled.
procName :: Lens' ProjectsRegionsOperationsCancel Text
procName = lens _procName (\ s a -> s{_procName = a})

-- | JSONP
procCallback :: Lens' ProjectsRegionsOperationsCancel (Maybe Text)
procCallback
  = lens _procCallback (\ s a -> s{_procCallback = a})

instance GoogleRequest
         ProjectsRegionsOperationsCancel where
        type Rs ProjectsRegionsOperationsCancel = Empty
        type Scopes ProjectsRegionsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsOperationsCancel'{..}
          = go _procName _procXgafv _procUploadProtocol
              (Just _procPp)
              _procAccessToken
              _procUploadType
              _procBearerToken
              _procCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsOperationsCancelResource)
                      mempty
