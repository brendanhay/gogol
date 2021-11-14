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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Operations.Cancel
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.operations.cancel@.
module Network.Google.Resource.Logging.Folders.Locations.Operations.Cancel
    (
    -- * REST Resource
      FoldersLocationsOperationsCancelResource

    -- * Creating a Request
    , foldersLocationsOperationsCancel
    , FoldersLocationsOperationsCancel

    -- * Request Lenses
    , flocXgafv
    , flocUploadProtocol
    , flocAccessToken
    , flocUploadType
    , flocPayload
    , flocName
    , flocCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.operations.cancel@ method which the
-- 'FoldersLocationsOperationsCancel' request conforms to.
type FoldersLocationsOperationsCancelResource =
     "v2" :>
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
-- google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation
-- or other methods to check whether the cancellation succeeded or whether
-- the operation completed despite cancellation. On successful
-- cancellation, the operation is not deleted; instead, it becomes an
-- operation with an Operation.error value with a google.rpc.Status.code of
-- 1, corresponding to Code.CANCELLED.
--
-- /See:/ 'foldersLocationsOperationsCancel' smart constructor.
data FoldersLocationsOperationsCancel =
  FoldersLocationsOperationsCancel'
    { _flocXgafv :: !(Maybe Xgafv)
    , _flocUploadProtocol :: !(Maybe Text)
    , _flocAccessToken :: !(Maybe Text)
    , _flocUploadType :: !(Maybe Text)
    , _flocPayload :: !CancelOperationRequest
    , _flocName :: !Text
    , _flocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flocXgafv'
--
-- * 'flocUploadProtocol'
--
-- * 'flocAccessToken'
--
-- * 'flocUploadType'
--
-- * 'flocPayload'
--
-- * 'flocName'
--
-- * 'flocCallback'
foldersLocationsOperationsCancel
    :: CancelOperationRequest -- ^ 'flocPayload'
    -> Text -- ^ 'flocName'
    -> FoldersLocationsOperationsCancel
foldersLocationsOperationsCancel pFlocPayload_ pFlocName_ =
  FoldersLocationsOperationsCancel'
    { _flocXgafv = Nothing
    , _flocUploadProtocol = Nothing
    , _flocAccessToken = Nothing
    , _flocUploadType = Nothing
    , _flocPayload = pFlocPayload_
    , _flocName = pFlocName_
    , _flocCallback = Nothing
    }


-- | V1 error format.
flocXgafv :: Lens' FoldersLocationsOperationsCancel (Maybe Xgafv)
flocXgafv
  = lens _flocXgafv (\ s a -> s{_flocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flocUploadProtocol :: Lens' FoldersLocationsOperationsCancel (Maybe Text)
flocUploadProtocol
  = lens _flocUploadProtocol
      (\ s a -> s{_flocUploadProtocol = a})

-- | OAuth access token.
flocAccessToken :: Lens' FoldersLocationsOperationsCancel (Maybe Text)
flocAccessToken
  = lens _flocAccessToken
      (\ s a -> s{_flocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flocUploadType :: Lens' FoldersLocationsOperationsCancel (Maybe Text)
flocUploadType
  = lens _flocUploadType
      (\ s a -> s{_flocUploadType = a})

-- | Multipart request metadata.
flocPayload :: Lens' FoldersLocationsOperationsCancel CancelOperationRequest
flocPayload
  = lens _flocPayload (\ s a -> s{_flocPayload = a})

-- | The name of the operation resource to be cancelled.
flocName :: Lens' FoldersLocationsOperationsCancel Text
flocName = lens _flocName (\ s a -> s{_flocName = a})

-- | JSONP
flocCallback :: Lens' FoldersLocationsOperationsCancel (Maybe Text)
flocCallback
  = lens _flocCallback (\ s a -> s{_flocCallback = a})

instance GoogleRequest
           FoldersLocationsOperationsCancel
         where
        type Rs FoldersLocationsOperationsCancel = Empty
        type Scopes FoldersLocationsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsOperationsCancel'{..}
          = go _flocName _flocXgafv _flocUploadProtocol
              _flocAccessToken
              _flocUploadType
              _flocCallback
              (Just AltJSON)
              _flocPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsOperationsCancelResource)
                      mempty
