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
-- Module      : Network.Google.Resource.Logging.Locations.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.operations.cancel@.
module Network.Google.Resource.Logging.Locations.Operations.Cancel
    (
    -- * REST Resource
      LocationsOperationsCancelResource

    -- * Creating a Request
    , locationsOperationsCancel
    , LocationsOperationsCancel

    -- * Request Lenses
    , locXgafv
    , locUploadProtocol
    , locAccessToken
    , locUploadType
    , locPayload
    , locName
    , locCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.operations.cancel@ method which the
-- 'LocationsOperationsCancel' request conforms to.
type LocationsOperationsCancelResource =
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
-- /See:/ 'locationsOperationsCancel' smart constructor.
data LocationsOperationsCancel =
  LocationsOperationsCancel'
    { _locXgafv :: !(Maybe Xgafv)
    , _locUploadProtocol :: !(Maybe Text)
    , _locAccessToken :: !(Maybe Text)
    , _locUploadType :: !(Maybe Text)
    , _locPayload :: !CancelOperationRequest
    , _locName :: !Text
    , _locCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locXgafv'
--
-- * 'locUploadProtocol'
--
-- * 'locAccessToken'
--
-- * 'locUploadType'
--
-- * 'locPayload'
--
-- * 'locName'
--
-- * 'locCallback'
locationsOperationsCancel
    :: CancelOperationRequest -- ^ 'locPayload'
    -> Text -- ^ 'locName'
    -> LocationsOperationsCancel
locationsOperationsCancel pLocPayload_ pLocName_ =
  LocationsOperationsCancel'
    { _locXgafv = Nothing
    , _locUploadProtocol = Nothing
    , _locAccessToken = Nothing
    , _locUploadType = Nothing
    , _locPayload = pLocPayload_
    , _locName = pLocName_
    , _locCallback = Nothing
    }


-- | V1 error format.
locXgafv :: Lens' LocationsOperationsCancel (Maybe Xgafv)
locXgafv = lens _locXgafv (\ s a -> s{_locXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
locUploadProtocol :: Lens' LocationsOperationsCancel (Maybe Text)
locUploadProtocol
  = lens _locUploadProtocol
      (\ s a -> s{_locUploadProtocol = a})

-- | OAuth access token.
locAccessToken :: Lens' LocationsOperationsCancel (Maybe Text)
locAccessToken
  = lens _locAccessToken
      (\ s a -> s{_locAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
locUploadType :: Lens' LocationsOperationsCancel (Maybe Text)
locUploadType
  = lens _locUploadType
      (\ s a -> s{_locUploadType = a})

-- | Multipart request metadata.
locPayload :: Lens' LocationsOperationsCancel CancelOperationRequest
locPayload
  = lens _locPayload (\ s a -> s{_locPayload = a})

-- | The name of the operation resource to be cancelled.
locName :: Lens' LocationsOperationsCancel Text
locName = lens _locName (\ s a -> s{_locName = a})

-- | JSONP
locCallback :: Lens' LocationsOperationsCancel (Maybe Text)
locCallback
  = lens _locCallback (\ s a -> s{_locCallback = a})

instance GoogleRequest LocationsOperationsCancel
         where
        type Rs LocationsOperationsCancel = Empty
        type Scopes LocationsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsOperationsCancel'{..}
          = go _locName _locXgafv _locUploadProtocol
              _locAccessToken
              _locUploadType
              _locCallback
              (Just AltJSON)
              _locPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsOperationsCancelResource)
                      mempty
