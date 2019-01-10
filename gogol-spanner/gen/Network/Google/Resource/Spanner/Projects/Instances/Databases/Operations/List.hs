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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.List
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.operations.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.List
    (
    -- * REST Resource
      ProjectsInstancesDatabasesOperationsListResource

    -- * Creating a Request
    , projectsInstancesDatabasesOperationsList
    , ProjectsInstancesDatabasesOperationsList

    -- * Request Lenses
    , pidolXgafv
    , pidolUploadProtocol
    , pidolAccessToken
    , pidolUploadType
    , pidolName
    , pidolFilter
    , pidolPageToken
    , pidolPageSize
    , pidolCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.operations.list@ method which the
-- 'ProjectsInstancesDatabasesOperationsList' request conforms to.
type ProjectsInstancesDatabasesOperationsListResource
     =
     "v1" :>
       Capture "name" Text :>
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
-- /See:/ 'projectsInstancesDatabasesOperationsList' smart constructor.
data ProjectsInstancesDatabasesOperationsList = ProjectsInstancesDatabasesOperationsList'
    { _pidolXgafv          :: !(Maybe Xgafv)
    , _pidolUploadProtocol :: !(Maybe Text)
    , _pidolAccessToken    :: !(Maybe Text)
    , _pidolUploadType     :: !(Maybe Text)
    , _pidolName           :: !Text
    , _pidolFilter         :: !(Maybe Text)
    , _pidolPageToken      :: !(Maybe Text)
    , _pidolPageSize       :: !(Maybe (Textual Int32))
    , _pidolCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidolXgafv'
--
-- * 'pidolUploadProtocol'
--
-- * 'pidolAccessToken'
--
-- * 'pidolUploadType'
--
-- * 'pidolName'
--
-- * 'pidolFilter'
--
-- * 'pidolPageToken'
--
-- * 'pidolPageSize'
--
-- * 'pidolCallback'
projectsInstancesDatabasesOperationsList
    :: Text -- ^ 'pidolName'
    -> ProjectsInstancesDatabasesOperationsList
projectsInstancesDatabasesOperationsList pPidolName_ =
    ProjectsInstancesDatabasesOperationsList'
    { _pidolXgafv = Nothing
    , _pidolUploadProtocol = Nothing
    , _pidolAccessToken = Nothing
    , _pidolUploadType = Nothing
    , _pidolName = pPidolName_
    , _pidolFilter = Nothing
    , _pidolPageToken = Nothing
    , _pidolPageSize = Nothing
    , _pidolCallback = Nothing
    }

-- | V1 error format.
pidolXgafv :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Xgafv)
pidolXgafv
  = lens _pidolXgafv (\ s a -> s{_pidolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidolUploadProtocol :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolUploadProtocol
  = lens _pidolUploadProtocol
      (\ s a -> s{_pidolUploadProtocol = a})

-- | OAuth access token.
pidolAccessToken :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolAccessToken
  = lens _pidolAccessToken
      (\ s a -> s{_pidolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidolUploadType :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolUploadType
  = lens _pidolUploadType
      (\ s a -> s{_pidolUploadType = a})

-- | The name of the operation\'s parent resource.
pidolName :: Lens' ProjectsInstancesDatabasesOperationsList Text
pidolName
  = lens _pidolName (\ s a -> s{_pidolName = a})

-- | The standard list filter.
pidolFilter :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolFilter
  = lens _pidolFilter (\ s a -> s{_pidolFilter = a})

-- | The standard list page token.
pidolPageToken :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolPageToken
  = lens _pidolPageToken
      (\ s a -> s{_pidolPageToken = a})

-- | The standard list page size.
pidolPageSize :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Int32)
pidolPageSize
  = lens _pidolPageSize
      (\ s a -> s{_pidolPageSize = a})
      . mapping _Coerce

-- | JSONP
pidolCallback :: Lens' ProjectsInstancesDatabasesOperationsList (Maybe Text)
pidolCallback
  = lens _pidolCallback
      (\ s a -> s{_pidolCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesOperationsList where
        type Rs ProjectsInstancesDatabasesOperationsList =
             ListOperationsResponse
        type Scopes ProjectsInstancesDatabasesOperationsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesOperationsList'{..}
          = go _pidolName _pidolXgafv _pidolUploadProtocol
              _pidolAccessToken
              _pidolUploadType
              _pidolFilter
              _pidolPageToken
              _pidolPageSize
              _pidolCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesOperationsListResource)
                      mempty
