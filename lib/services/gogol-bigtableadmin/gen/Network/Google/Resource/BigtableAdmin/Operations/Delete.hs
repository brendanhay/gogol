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
-- Module      : Network.Google.Resource.BigtableAdmin.Operations.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.operations.delete@.
module Network.Google.Resource.BigtableAdmin.Operations.Delete
    (
    -- * REST Resource
      OperationsDeleteResource

    -- * Creating a Request
    , operationsDelete
    , OperationsDelete

    -- * Request Lenses
    , odXgafv
    , odUploadProtocol
    , odAccessToken
    , odUploadType
    , odName
    , odCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.operations.delete@ method which the
-- 'OperationsDelete' request conforms to.
type OperationsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'operationsDelete' smart constructor.
data OperationsDelete =
  OperationsDelete'
    { _odXgafv :: !(Maybe Xgafv)
    , _odUploadProtocol :: !(Maybe Text)
    , _odAccessToken :: !(Maybe Text)
    , _odUploadType :: !(Maybe Text)
    , _odName :: !Text
    , _odCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odXgafv'
--
-- * 'odUploadProtocol'
--
-- * 'odAccessToken'
--
-- * 'odUploadType'
--
-- * 'odName'
--
-- * 'odCallback'
operationsDelete
    :: Text -- ^ 'odName'
    -> OperationsDelete
operationsDelete pOdName_ =
  OperationsDelete'
    { _odXgafv = Nothing
    , _odUploadProtocol = Nothing
    , _odAccessToken = Nothing
    , _odUploadType = Nothing
    , _odName = pOdName_
    , _odCallback = Nothing
    }


-- | V1 error format.
odXgafv :: Lens' OperationsDelete (Maybe Xgafv)
odXgafv = lens _odXgafv (\ s a -> s{_odXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odUploadProtocol :: Lens' OperationsDelete (Maybe Text)
odUploadProtocol
  = lens _odUploadProtocol
      (\ s a -> s{_odUploadProtocol = a})

-- | OAuth access token.
odAccessToken :: Lens' OperationsDelete (Maybe Text)
odAccessToken
  = lens _odAccessToken
      (\ s a -> s{_odAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odUploadType :: Lens' OperationsDelete (Maybe Text)
odUploadType
  = lens _odUploadType (\ s a -> s{_odUploadType = a})

-- | The name of the operation resource to be deleted.
odName :: Lens' OperationsDelete Text
odName = lens _odName (\ s a -> s{_odName = a})

-- | JSONP
odCallback :: Lens' OperationsDelete (Maybe Text)
odCallback
  = lens _odCallback (\ s a -> s{_odCallback = a})

instance GoogleRequest OperationsDelete where
        type Rs OperationsDelete = Empty
        type Scopes OperationsDelete =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient OperationsDelete'{..}
          = go _odName _odXgafv _odUploadProtocol
              _odAccessToken
              _odUploadType
              _odCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsDeleteResource)
                      mempty
