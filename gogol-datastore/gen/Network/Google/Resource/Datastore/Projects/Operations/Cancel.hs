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
-- Module      : Network.Google.Resource.Datastore.Projects.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.operations.cancel@.
module Network.Google.Resource.Datastore.Projects.Operations.Cancel
    (
    -- * REST Resource
      ProjectsOperationsCancelResource

    -- * Creating a Request
    , projectsOperationsCancel
    , ProjectsOperationsCancel

    -- * Request Lenses
    , pocXgafv
    , pocUploadProtocol
    , pocAccessToken
    , pocUploadType
    , pocName
    , pocCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.operations.cancel@ method which the
-- 'ProjectsOperationsCancel' request conforms to.
type ProjectsOperationsCancelResource =
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
-- /See:/ 'projectsOperationsCancel' smart constructor.
data ProjectsOperationsCancel =
  ProjectsOperationsCancel'
    { _pocXgafv :: !(Maybe Xgafv)
    , _pocUploadProtocol :: !(Maybe Text)
    , _pocAccessToken :: !(Maybe Text)
    , _pocUploadType :: !(Maybe Text)
    , _pocName :: !Text
    , _pocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pocXgafv'
--
-- * 'pocUploadProtocol'
--
-- * 'pocAccessToken'
--
-- * 'pocUploadType'
--
-- * 'pocName'
--
-- * 'pocCallback'
projectsOperationsCancel
    :: Text -- ^ 'pocName'
    -> ProjectsOperationsCancel
projectsOperationsCancel pPocName_ =
  ProjectsOperationsCancel'
    { _pocXgafv = Nothing
    , _pocUploadProtocol = Nothing
    , _pocAccessToken = Nothing
    , _pocUploadType = Nothing
    , _pocName = pPocName_
    , _pocCallback = Nothing
    }


-- | V1 error format.
pocXgafv :: Lens' ProjectsOperationsCancel (Maybe Xgafv)
pocXgafv = lens _pocXgafv (\ s a -> s{_pocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pocUploadProtocol :: Lens' ProjectsOperationsCancel (Maybe Text)
pocUploadProtocol
  = lens _pocUploadProtocol
      (\ s a -> s{_pocUploadProtocol = a})

-- | OAuth access token.
pocAccessToken :: Lens' ProjectsOperationsCancel (Maybe Text)
pocAccessToken
  = lens _pocAccessToken
      (\ s a -> s{_pocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pocUploadType :: Lens' ProjectsOperationsCancel (Maybe Text)
pocUploadType
  = lens _pocUploadType
      (\ s a -> s{_pocUploadType = a})

-- | The name of the operation resource to be cancelled.
pocName :: Lens' ProjectsOperationsCancel Text
pocName = lens _pocName (\ s a -> s{_pocName = a})

-- | JSONP
pocCallback :: Lens' ProjectsOperationsCancel (Maybe Text)
pocCallback
  = lens _pocCallback (\ s a -> s{_pocCallback = a})

instance GoogleRequest ProjectsOperationsCancel where
        type Rs ProjectsOperationsCancel = Empty
        type Scopes ProjectsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsOperationsCancel'{..}
          = go _pocName _pocXgafv _pocUploadProtocol
              _pocAccessToken
              _pocUploadType
              _pocCallback
              (Just AltJSON)
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOperationsCancelResource)
                      mempty
