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
-- Module      : Network.Google.Resource.BigtableAdmin.Operations.Cancel
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.operations.cancel@.
module Network.Google.Resource.BigtableAdmin.Operations.Cancel
    (
    -- * REST Resource
      OperationsCancelResource

    -- * Creating a Request
    , operationsCancel
    , OperationsCancel

    -- * Request Lenses
    , ocXgafv
    , ocUploadProtocol
    , ocAccessToken
    , ocUploadType
    , ocName
    , ocCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.operations.cancel@ method which the
-- 'OperationsCancel' request conforms to.
type OperationsCancelResource =
     "v2" :>
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
-- /See:/ 'operationsCancel' smart constructor.
data OperationsCancel =
  OperationsCancel'
    { _ocXgafv :: !(Maybe Xgafv)
    , _ocUploadProtocol :: !(Maybe Text)
    , _ocAccessToken :: !(Maybe Text)
    , _ocUploadType :: !(Maybe Text)
    , _ocName :: !Text
    , _ocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocXgafv'
--
-- * 'ocUploadProtocol'
--
-- * 'ocAccessToken'
--
-- * 'ocUploadType'
--
-- * 'ocName'
--
-- * 'ocCallback'
operationsCancel
    :: Text -- ^ 'ocName'
    -> OperationsCancel
operationsCancel pOcName_ =
  OperationsCancel'
    { _ocXgafv = Nothing
    , _ocUploadProtocol = Nothing
    , _ocAccessToken = Nothing
    , _ocUploadType = Nothing
    , _ocName = pOcName_
    , _ocCallback = Nothing
    }


-- | V1 error format.
ocXgafv :: Lens' OperationsCancel (Maybe Xgafv)
ocXgafv = lens _ocXgafv (\ s a -> s{_ocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocUploadProtocol :: Lens' OperationsCancel (Maybe Text)
ocUploadProtocol
  = lens _ocUploadProtocol
      (\ s a -> s{_ocUploadProtocol = a})

-- | OAuth access token.
ocAccessToken :: Lens' OperationsCancel (Maybe Text)
ocAccessToken
  = lens _ocAccessToken
      (\ s a -> s{_ocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocUploadType :: Lens' OperationsCancel (Maybe Text)
ocUploadType
  = lens _ocUploadType (\ s a -> s{_ocUploadType = a})

-- | The name of the operation resource to be cancelled.
ocName :: Lens' OperationsCancel Text
ocName = lens _ocName (\ s a -> s{_ocName = a})

-- | JSONP
ocCallback :: Lens' OperationsCancel (Maybe Text)
ocCallback
  = lens _ocCallback (\ s a -> s{_ocCallback = a})

instance GoogleRequest OperationsCancel where
        type Rs OperationsCancel = Empty
        type Scopes OperationsCancel =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient OperationsCancel'{..}
          = go _ocName _ocXgafv _ocUploadProtocol
              _ocAccessToken
              _ocUploadType
              _ocCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsCancelResource)
                      mempty
