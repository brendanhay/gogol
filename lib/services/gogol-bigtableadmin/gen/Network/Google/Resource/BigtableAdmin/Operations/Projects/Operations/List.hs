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
-- Module      : Network.Google.Resource.BigtableAdmin.Operations.Projects.Operations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.operations.projects.operations.list@.
module Network.Google.Resource.BigtableAdmin.Operations.Projects.Operations.List
    (
    -- * REST Resource
      OperationsProjectsOperationsListResource

    -- * Creating a Request
    , operationsProjectsOperationsList
    , OperationsProjectsOperationsList

    -- * Request Lenses
    , opolXgafv
    , opolUploadProtocol
    , opolAccessToken
    , opolUploadType
    , opolName
    , opolFilter
    , opolPageToken
    , opolPageSize
    , opolCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.operations.projects.operations.list@ method which the
-- 'OperationsProjectsOperationsList' request conforms to.
type OperationsProjectsOperationsListResource =
     "v2" :>
       Capture "name" Text :>
         "operations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ 'operationsProjectsOperationsList' smart constructor.
data OperationsProjectsOperationsList =
  OperationsProjectsOperationsList'
    { _opolXgafv :: !(Maybe Xgafv)
    , _opolUploadProtocol :: !(Maybe Text)
    , _opolAccessToken :: !(Maybe Text)
    , _opolUploadType :: !(Maybe Text)
    , _opolName :: !Text
    , _opolFilter :: !(Maybe Text)
    , _opolPageToken :: !(Maybe Text)
    , _opolPageSize :: !(Maybe (Textual Int32))
    , _opolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsProjectsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opolXgafv'
--
-- * 'opolUploadProtocol'
--
-- * 'opolAccessToken'
--
-- * 'opolUploadType'
--
-- * 'opolName'
--
-- * 'opolFilter'
--
-- * 'opolPageToken'
--
-- * 'opolPageSize'
--
-- * 'opolCallback'
operationsProjectsOperationsList
    :: Text -- ^ 'opolName'
    -> OperationsProjectsOperationsList
operationsProjectsOperationsList pOpolName_ =
  OperationsProjectsOperationsList'
    { _opolXgafv = Nothing
    , _opolUploadProtocol = Nothing
    , _opolAccessToken = Nothing
    , _opolUploadType = Nothing
    , _opolName = pOpolName_
    , _opolFilter = Nothing
    , _opolPageToken = Nothing
    , _opolPageSize = Nothing
    , _opolCallback = Nothing
    }


-- | V1 error format.
opolXgafv :: Lens' OperationsProjectsOperationsList (Maybe Xgafv)
opolXgafv
  = lens _opolXgafv (\ s a -> s{_opolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
opolUploadProtocol :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolUploadProtocol
  = lens _opolUploadProtocol
      (\ s a -> s{_opolUploadProtocol = a})

-- | OAuth access token.
opolAccessToken :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolAccessToken
  = lens _opolAccessToken
      (\ s a -> s{_opolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
opolUploadType :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolUploadType
  = lens _opolUploadType
      (\ s a -> s{_opolUploadType = a})

-- | The name of the operation\'s parent resource.
opolName :: Lens' OperationsProjectsOperationsList Text
opolName = lens _opolName (\ s a -> s{_opolName = a})

-- | The standard list filter.
opolFilter :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolFilter
  = lens _opolFilter (\ s a -> s{_opolFilter = a})

-- | The standard list page token.
opolPageToken :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolPageToken
  = lens _opolPageToken
      (\ s a -> s{_opolPageToken = a})

-- | The standard list page size.
opolPageSize :: Lens' OperationsProjectsOperationsList (Maybe Int32)
opolPageSize
  = lens _opolPageSize (\ s a -> s{_opolPageSize = a})
      . mapping _Coerce

-- | JSONP
opolCallback :: Lens' OperationsProjectsOperationsList (Maybe Text)
opolCallback
  = lens _opolCallback (\ s a -> s{_opolCallback = a})

instance GoogleRequest
           OperationsProjectsOperationsList
         where
        type Rs OperationsProjectsOperationsList =
             ListOperationsResponse
        type Scopes OperationsProjectsOperationsList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OperationsProjectsOperationsList'{..}
          = go _opolName _opolXgafv _opolUploadProtocol
              _opolAccessToken
              _opolUploadType
              _opolFilter
              _opolPageToken
              _opolPageSize
              _opolCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OperationsProjectsOperationsListResource)
                      mempty
