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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.operations.list@.
module Network.Google.Resource.FireStore.Projects.Databases.Operations.List
    (
    -- * REST Resource
      ProjectsDatabasesOperationsListResource

    -- * Creating a Request
    , projectsDatabasesOperationsList
    , ProjectsDatabasesOperationsList

    -- * Request Lenses
    , pdolXgafv
    , pdolUploadProtocol
    , pdolAccessToken
    , pdolUploadType
    , pdolName
    , pdolFilter
    , pdolPageToken
    , pdolPageSize
    , pdolCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.operations.list@ method which the
-- 'ProjectsDatabasesOperationsList' request conforms to.
type ProjectsDatabasesOperationsListResource =
     "v1" :>
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
                             Get '[JSON] GoogleLongrunningListOperationsResponse

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
-- /See:/ 'projectsDatabasesOperationsList' smart constructor.
data ProjectsDatabasesOperationsList =
  ProjectsDatabasesOperationsList'
    { _pdolXgafv :: !(Maybe Xgafv)
    , _pdolUploadProtocol :: !(Maybe Text)
    , _pdolAccessToken :: !(Maybe Text)
    , _pdolUploadType :: !(Maybe Text)
    , _pdolName :: !Text
    , _pdolFilter :: !(Maybe Text)
    , _pdolPageToken :: !(Maybe Text)
    , _pdolPageSize :: !(Maybe (Textual Int32))
    , _pdolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdolXgafv'
--
-- * 'pdolUploadProtocol'
--
-- * 'pdolAccessToken'
--
-- * 'pdolUploadType'
--
-- * 'pdolName'
--
-- * 'pdolFilter'
--
-- * 'pdolPageToken'
--
-- * 'pdolPageSize'
--
-- * 'pdolCallback'
projectsDatabasesOperationsList
    :: Text -- ^ 'pdolName'
    -> ProjectsDatabasesOperationsList
projectsDatabasesOperationsList pPdolName_ =
  ProjectsDatabasesOperationsList'
    { _pdolXgafv = Nothing
    , _pdolUploadProtocol = Nothing
    , _pdolAccessToken = Nothing
    , _pdolUploadType = Nothing
    , _pdolName = pPdolName_
    , _pdolFilter = Nothing
    , _pdolPageToken = Nothing
    , _pdolPageSize = Nothing
    , _pdolCallback = Nothing
    }


-- | V1 error format.
pdolXgafv :: Lens' ProjectsDatabasesOperationsList (Maybe Xgafv)
pdolXgafv
  = lens _pdolXgafv (\ s a -> s{_pdolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdolUploadProtocol :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolUploadProtocol
  = lens _pdolUploadProtocol
      (\ s a -> s{_pdolUploadProtocol = a})

-- | OAuth access token.
pdolAccessToken :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolAccessToken
  = lens _pdolAccessToken
      (\ s a -> s{_pdolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdolUploadType :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolUploadType
  = lens _pdolUploadType
      (\ s a -> s{_pdolUploadType = a})

-- | The name of the operation\'s parent resource.
pdolName :: Lens' ProjectsDatabasesOperationsList Text
pdolName = lens _pdolName (\ s a -> s{_pdolName = a})

-- | The standard list filter.
pdolFilter :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolFilter
  = lens _pdolFilter (\ s a -> s{_pdolFilter = a})

-- | The standard list page token.
pdolPageToken :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolPageToken
  = lens _pdolPageToken
      (\ s a -> s{_pdolPageToken = a})

-- | The standard list page size.
pdolPageSize :: Lens' ProjectsDatabasesOperationsList (Maybe Int32)
pdolPageSize
  = lens _pdolPageSize (\ s a -> s{_pdolPageSize = a})
      . mapping _Coerce

-- | JSONP
pdolCallback :: Lens' ProjectsDatabasesOperationsList (Maybe Text)
pdolCallback
  = lens _pdolCallback (\ s a -> s{_pdolCallback = a})

instance GoogleRequest
           ProjectsDatabasesOperationsList
         where
        type Rs ProjectsDatabasesOperationsList =
             GoogleLongrunningListOperationsResponse
        type Scopes ProjectsDatabasesOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesOperationsList'{..}
          = go _pdolName _pdolXgafv _pdolUploadProtocol
              _pdolAccessToken
              _pdolUploadType
              _pdolFilter
              _pdolPageToken
              _pdolPageSize
              _pdolCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesOperationsListResource)
                      mempty
