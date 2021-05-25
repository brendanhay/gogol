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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.List
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.operations.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.List
    (
    -- * REST Resource
      ProjectsInstancesBackupsOperationsListResource

    -- * Creating a Request
    , projectsInstancesBackupsOperationsList
    , ProjectsInstancesBackupsOperationsList

    -- * Request Lenses
    , pibolXgafv
    , pibolUploadProtocol
    , pibolAccessToken
    , pibolUploadType
    , pibolName
    , pibolFilter
    , pibolPageToken
    , pibolPageSize
    , pibolCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.operations.list@ method which the
-- 'ProjectsInstancesBackupsOperationsList' request conforms to.
type ProjectsInstancesBackupsOperationsListResource =
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
-- /See:/ 'projectsInstancesBackupsOperationsList' smart constructor.
data ProjectsInstancesBackupsOperationsList =
  ProjectsInstancesBackupsOperationsList'
    { _pibolXgafv :: !(Maybe Xgafv)
    , _pibolUploadProtocol :: !(Maybe Text)
    , _pibolAccessToken :: !(Maybe Text)
    , _pibolUploadType :: !(Maybe Text)
    , _pibolName :: !Text
    , _pibolFilter :: !(Maybe Text)
    , _pibolPageToken :: !(Maybe Text)
    , _pibolPageSize :: !(Maybe (Textual Int32))
    , _pibolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibolXgafv'
--
-- * 'pibolUploadProtocol'
--
-- * 'pibolAccessToken'
--
-- * 'pibolUploadType'
--
-- * 'pibolName'
--
-- * 'pibolFilter'
--
-- * 'pibolPageToken'
--
-- * 'pibolPageSize'
--
-- * 'pibolCallback'
projectsInstancesBackupsOperationsList
    :: Text -- ^ 'pibolName'
    -> ProjectsInstancesBackupsOperationsList
projectsInstancesBackupsOperationsList pPibolName_ =
  ProjectsInstancesBackupsOperationsList'
    { _pibolXgafv = Nothing
    , _pibolUploadProtocol = Nothing
    , _pibolAccessToken = Nothing
    , _pibolUploadType = Nothing
    , _pibolName = pPibolName_
    , _pibolFilter = Nothing
    , _pibolPageToken = Nothing
    , _pibolPageSize = Nothing
    , _pibolCallback = Nothing
    }


-- | V1 error format.
pibolXgafv :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Xgafv)
pibolXgafv
  = lens _pibolXgafv (\ s a -> s{_pibolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibolUploadProtocol :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolUploadProtocol
  = lens _pibolUploadProtocol
      (\ s a -> s{_pibolUploadProtocol = a})

-- | OAuth access token.
pibolAccessToken :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolAccessToken
  = lens _pibolAccessToken
      (\ s a -> s{_pibolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibolUploadType :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolUploadType
  = lens _pibolUploadType
      (\ s a -> s{_pibolUploadType = a})

-- | The name of the operation\'s parent resource.
pibolName :: Lens' ProjectsInstancesBackupsOperationsList Text
pibolName
  = lens _pibolName (\ s a -> s{_pibolName = a})

-- | The standard list filter.
pibolFilter :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolFilter
  = lens _pibolFilter (\ s a -> s{_pibolFilter = a})

-- | The standard list page token.
pibolPageToken :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolPageToken
  = lens _pibolPageToken
      (\ s a -> s{_pibolPageToken = a})

-- | The standard list page size.
pibolPageSize :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Int32)
pibolPageSize
  = lens _pibolPageSize
      (\ s a -> s{_pibolPageSize = a})
      . mapping _Coerce

-- | JSONP
pibolCallback :: Lens' ProjectsInstancesBackupsOperationsList (Maybe Text)
pibolCallback
  = lens _pibolCallback
      (\ s a -> s{_pibolCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsOperationsList
         where
        type Rs ProjectsInstancesBackupsOperationsList =
             ListOperationsResponse
        type Scopes ProjectsInstancesBackupsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsOperationsList'{..}
          = go _pibolName _pibolXgafv _pibolUploadProtocol
              _pibolAccessToken
              _pibolUploadType
              _pibolFilter
              _pibolPageToken
              _pibolPageSize
              _pibolCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsOperationsListResource)
                      mempty
