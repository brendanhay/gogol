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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Operations.Cancel
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.operations.cancel@.
module Network.Google.Resource.Logging.Organizations.Locations.Operations.Cancel
    (
    -- * REST Resource
      OrganizationsLocationsOperationsCancelResource

    -- * Creating a Request
    , organizationsLocationsOperationsCancel
    , OrganizationsLocationsOperationsCancel

    -- * Request Lenses
    , olocXgafv
    , olocUploadProtocol
    , olocAccessToken
    , olocUploadType
    , olocPayload
    , olocName
    , olocCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.operations.cancel@ method which the
-- 'OrganizationsLocationsOperationsCancel' request conforms to.
type OrganizationsLocationsOperationsCancelResource =
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
-- /See:/ 'organizationsLocationsOperationsCancel' smart constructor.
data OrganizationsLocationsOperationsCancel =
  OrganizationsLocationsOperationsCancel'
    { _olocXgafv :: !(Maybe Xgafv)
    , _olocUploadProtocol :: !(Maybe Text)
    , _olocAccessToken :: !(Maybe Text)
    , _olocUploadType :: !(Maybe Text)
    , _olocPayload :: !CancelOperationRequest
    , _olocName :: !Text
    , _olocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olocXgafv'
--
-- * 'olocUploadProtocol'
--
-- * 'olocAccessToken'
--
-- * 'olocUploadType'
--
-- * 'olocPayload'
--
-- * 'olocName'
--
-- * 'olocCallback'
organizationsLocationsOperationsCancel
    :: CancelOperationRequest -- ^ 'olocPayload'
    -> Text -- ^ 'olocName'
    -> OrganizationsLocationsOperationsCancel
organizationsLocationsOperationsCancel pOlocPayload_ pOlocName_ =
  OrganizationsLocationsOperationsCancel'
    { _olocXgafv = Nothing
    , _olocUploadProtocol = Nothing
    , _olocAccessToken = Nothing
    , _olocUploadType = Nothing
    , _olocPayload = pOlocPayload_
    , _olocName = pOlocName_
    , _olocCallback = Nothing
    }


-- | V1 error format.
olocXgafv :: Lens' OrganizationsLocationsOperationsCancel (Maybe Xgafv)
olocXgafv
  = lens _olocXgafv (\ s a -> s{_olocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olocUploadProtocol :: Lens' OrganizationsLocationsOperationsCancel (Maybe Text)
olocUploadProtocol
  = lens _olocUploadProtocol
      (\ s a -> s{_olocUploadProtocol = a})

-- | OAuth access token.
olocAccessToken :: Lens' OrganizationsLocationsOperationsCancel (Maybe Text)
olocAccessToken
  = lens _olocAccessToken
      (\ s a -> s{_olocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olocUploadType :: Lens' OrganizationsLocationsOperationsCancel (Maybe Text)
olocUploadType
  = lens _olocUploadType
      (\ s a -> s{_olocUploadType = a})

-- | Multipart request metadata.
olocPayload :: Lens' OrganizationsLocationsOperationsCancel CancelOperationRequest
olocPayload
  = lens _olocPayload (\ s a -> s{_olocPayload = a})

-- | The name of the operation resource to be cancelled.
olocName :: Lens' OrganizationsLocationsOperationsCancel Text
olocName = lens _olocName (\ s a -> s{_olocName = a})

-- | JSONP
olocCallback :: Lens' OrganizationsLocationsOperationsCancel (Maybe Text)
olocCallback
  = lens _olocCallback (\ s a -> s{_olocCallback = a})

instance GoogleRequest
           OrganizationsLocationsOperationsCancel
         where
        type Rs OrganizationsLocationsOperationsCancel =
             Empty
        type Scopes OrganizationsLocationsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsOperationsCancel'{..}
          = go _olocName _olocXgafv _olocUploadProtocol
              _olocAccessToken
              _olocUploadType
              _olocCallback
              (Just AltJSON)
              _olocPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsOperationsCancelResource)
                      mempty
