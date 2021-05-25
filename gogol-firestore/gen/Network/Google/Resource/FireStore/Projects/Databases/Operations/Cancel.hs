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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.operations.cancel@.
module Network.Google.Resource.FireStore.Projects.Databases.Operations.Cancel
    (
    -- * REST Resource
      ProjectsDatabasesOperationsCancelResource

    -- * Creating a Request
    , projectsDatabasesOperationsCancel
    , ProjectsDatabasesOperationsCancel

    -- * Request Lenses
    , pdocXgafv
    , pdocUploadProtocol
    , pdocAccessToken
    , pdocUploadType
    , pdocPayload
    , pdocName
    , pdocCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.operations.cancel@ method which the
-- 'ProjectsDatabasesOperationsCancel' request conforms to.
type ProjectsDatabasesOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleLongrunningCancelOperationRequest
                       :> Post '[JSON] Empty

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
-- /See:/ 'projectsDatabasesOperationsCancel' smart constructor.
data ProjectsDatabasesOperationsCancel =
  ProjectsDatabasesOperationsCancel'
    { _pdocXgafv :: !(Maybe Xgafv)
    , _pdocUploadProtocol :: !(Maybe Text)
    , _pdocAccessToken :: !(Maybe Text)
    , _pdocUploadType :: !(Maybe Text)
    , _pdocPayload :: !GoogleLongrunningCancelOperationRequest
    , _pdocName :: !Text
    , _pdocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdocXgafv'
--
-- * 'pdocUploadProtocol'
--
-- * 'pdocAccessToken'
--
-- * 'pdocUploadType'
--
-- * 'pdocPayload'
--
-- * 'pdocName'
--
-- * 'pdocCallback'
projectsDatabasesOperationsCancel
    :: GoogleLongrunningCancelOperationRequest -- ^ 'pdocPayload'
    -> Text -- ^ 'pdocName'
    -> ProjectsDatabasesOperationsCancel
projectsDatabasesOperationsCancel pPdocPayload_ pPdocName_ =
  ProjectsDatabasesOperationsCancel'
    { _pdocXgafv = Nothing
    , _pdocUploadProtocol = Nothing
    , _pdocAccessToken = Nothing
    , _pdocUploadType = Nothing
    , _pdocPayload = pPdocPayload_
    , _pdocName = pPdocName_
    , _pdocCallback = Nothing
    }


-- | V1 error format.
pdocXgafv :: Lens' ProjectsDatabasesOperationsCancel (Maybe Xgafv)
pdocXgafv
  = lens _pdocXgafv (\ s a -> s{_pdocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdocUploadProtocol :: Lens' ProjectsDatabasesOperationsCancel (Maybe Text)
pdocUploadProtocol
  = lens _pdocUploadProtocol
      (\ s a -> s{_pdocUploadProtocol = a})

-- | OAuth access token.
pdocAccessToken :: Lens' ProjectsDatabasesOperationsCancel (Maybe Text)
pdocAccessToken
  = lens _pdocAccessToken
      (\ s a -> s{_pdocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdocUploadType :: Lens' ProjectsDatabasesOperationsCancel (Maybe Text)
pdocUploadType
  = lens _pdocUploadType
      (\ s a -> s{_pdocUploadType = a})

-- | Multipart request metadata.
pdocPayload :: Lens' ProjectsDatabasesOperationsCancel GoogleLongrunningCancelOperationRequest
pdocPayload
  = lens _pdocPayload (\ s a -> s{_pdocPayload = a})

-- | The name of the operation resource to be cancelled.
pdocName :: Lens' ProjectsDatabasesOperationsCancel Text
pdocName = lens _pdocName (\ s a -> s{_pdocName = a})

-- | JSONP
pdocCallback :: Lens' ProjectsDatabasesOperationsCancel (Maybe Text)
pdocCallback
  = lens _pdocCallback (\ s a -> s{_pdocCallback = a})

instance GoogleRequest
           ProjectsDatabasesOperationsCancel
         where
        type Rs ProjectsDatabasesOperationsCancel = Empty
        type Scopes ProjectsDatabasesOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesOperationsCancel'{..}
          = go _pdocName _pdocXgafv _pdocUploadProtocol
              _pdocAccessToken
              _pdocUploadType
              _pdocCallback
              (Just AltJSON)
              _pdocPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesOperationsCancelResource)
                      mempty
