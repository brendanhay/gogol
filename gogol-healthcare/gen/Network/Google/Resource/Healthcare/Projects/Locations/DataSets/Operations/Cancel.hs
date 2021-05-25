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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.operations.cancel@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Cancel
    (
    -- * REST Resource
      ProjectsLocationsDataSetsOperationsCancelResource

    -- * Creating a Request
    , projectsLocationsDataSetsOperationsCancel
    , ProjectsLocationsDataSetsOperationsCancel

    -- * Request Lenses
    , pldsocXgafv
    , pldsocUploadProtocol
    , pldsocAccessToken
    , pldsocUploadType
    , pldsocPayload
    , pldsocName
    , pldsocCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.operations.cancel@ method which the
-- 'ProjectsLocationsDataSetsOperationsCancel' request conforms to.
type ProjectsLocationsDataSetsOperationsCancelResource
     =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CancelOperationRequest :>
                       Post '[JSON] Empty

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
-- /See:/ 'projectsLocationsDataSetsOperationsCancel' smart constructor.
data ProjectsLocationsDataSetsOperationsCancel =
  ProjectsLocationsDataSetsOperationsCancel'
    { _pldsocXgafv :: !(Maybe Xgafv)
    , _pldsocUploadProtocol :: !(Maybe Text)
    , _pldsocAccessToken :: !(Maybe Text)
    , _pldsocUploadType :: !(Maybe Text)
    , _pldsocPayload :: !CancelOperationRequest
    , _pldsocName :: !Text
    , _pldsocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsocXgafv'
--
-- * 'pldsocUploadProtocol'
--
-- * 'pldsocAccessToken'
--
-- * 'pldsocUploadType'
--
-- * 'pldsocPayload'
--
-- * 'pldsocName'
--
-- * 'pldsocCallback'
projectsLocationsDataSetsOperationsCancel
    :: CancelOperationRequest -- ^ 'pldsocPayload'
    -> Text -- ^ 'pldsocName'
    -> ProjectsLocationsDataSetsOperationsCancel
projectsLocationsDataSetsOperationsCancel pPldsocPayload_ pPldsocName_ =
  ProjectsLocationsDataSetsOperationsCancel'
    { _pldsocXgafv = Nothing
    , _pldsocUploadProtocol = Nothing
    , _pldsocAccessToken = Nothing
    , _pldsocUploadType = Nothing
    , _pldsocPayload = pPldsocPayload_
    , _pldsocName = pPldsocName_
    , _pldsocCallback = Nothing
    }


-- | V1 error format.
pldsocXgafv :: Lens' ProjectsLocationsDataSetsOperationsCancel (Maybe Xgafv)
pldsocXgafv
  = lens _pldsocXgafv (\ s a -> s{_pldsocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsocUploadProtocol :: Lens' ProjectsLocationsDataSetsOperationsCancel (Maybe Text)
pldsocUploadProtocol
  = lens _pldsocUploadProtocol
      (\ s a -> s{_pldsocUploadProtocol = a})

-- | OAuth access token.
pldsocAccessToken :: Lens' ProjectsLocationsDataSetsOperationsCancel (Maybe Text)
pldsocAccessToken
  = lens _pldsocAccessToken
      (\ s a -> s{_pldsocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsocUploadType :: Lens' ProjectsLocationsDataSetsOperationsCancel (Maybe Text)
pldsocUploadType
  = lens _pldsocUploadType
      (\ s a -> s{_pldsocUploadType = a})

-- | Multipart request metadata.
pldsocPayload :: Lens' ProjectsLocationsDataSetsOperationsCancel CancelOperationRequest
pldsocPayload
  = lens _pldsocPayload
      (\ s a -> s{_pldsocPayload = a})

-- | The name of the operation resource to be cancelled.
pldsocName :: Lens' ProjectsLocationsDataSetsOperationsCancel Text
pldsocName
  = lens _pldsocName (\ s a -> s{_pldsocName = a})

-- | JSONP
pldsocCallback :: Lens' ProjectsLocationsDataSetsOperationsCancel (Maybe Text)
pldsocCallback
  = lens _pldsocCallback
      (\ s a -> s{_pldsocCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsOperationsCancel
         where
        type Rs ProjectsLocationsDataSetsOperationsCancel =
             Empty
        type Scopes ProjectsLocationsDataSetsOperationsCancel
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsOperationsCancel'{..}
          = go _pldsocName _pldsocXgafv _pldsocUploadProtocol
              _pldsocAccessToken
              _pldsocUploadType
              _pldsocCallback
              (Just AltJSON)
              _pldsocPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsOperationsCancelResource)
                      mempty
