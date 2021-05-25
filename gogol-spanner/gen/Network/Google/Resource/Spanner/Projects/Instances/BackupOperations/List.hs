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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.BackupOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the backup long-running operations in the given instance. A backup
-- operation has a name of the form
-- \`projects\/\/instances\/\/backups\/\/operations\/\`. The long-running
-- operation metadata field type \`metadata.type_url\` describes the type
-- of the metadata. Operations returned include those that have
-- completed\/failed\/canceled within the last 7 days, and pending
-- operations. Operations returned are ordered by
-- \`operation.metadata.value.progress.start_time\` in descending order
-- starting from the most recently started operation.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backupOperations.list@.
module Network.Google.Resource.Spanner.Projects.Instances.BackupOperations.List
    (
    -- * REST Resource
      ProjectsInstancesBackupOperationsListResource

    -- * Creating a Request
    , projectsInstancesBackupOperationsList
    , ProjectsInstancesBackupOperationsList

    -- * Request Lenses
    , piboliParent
    , piboliXgafv
    , piboliUploadProtocol
    , piboliAccessToken
    , piboliUploadType
    , piboliFilter
    , piboliPageToken
    , piboliPageSize
    , piboliCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backupOperations.list@ method which the
-- 'ProjectsInstancesBackupOperationsList' request conforms to.
type ProjectsInstancesBackupOperationsListResource =
     "v1" :>
       Capture "parent" Text :>
         "backupOperations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBackupOperationsResponse

-- | Lists the backup long-running operations in the given instance. A backup
-- operation has a name of the form
-- \`projects\/\/instances\/\/backups\/\/operations\/\`. The long-running
-- operation metadata field type \`metadata.type_url\` describes the type
-- of the metadata. Operations returned include those that have
-- completed\/failed\/canceled within the last 7 days, and pending
-- operations. Operations returned are ordered by
-- \`operation.metadata.value.progress.start_time\` in descending order
-- starting from the most recently started operation.
--
-- /See:/ 'projectsInstancesBackupOperationsList' smart constructor.
data ProjectsInstancesBackupOperationsList =
  ProjectsInstancesBackupOperationsList'
    { _piboliParent :: !Text
    , _piboliXgafv :: !(Maybe Xgafv)
    , _piboliUploadProtocol :: !(Maybe Text)
    , _piboliAccessToken :: !(Maybe Text)
    , _piboliUploadType :: !(Maybe Text)
    , _piboliFilter :: !(Maybe Text)
    , _piboliPageToken :: !(Maybe Text)
    , _piboliPageSize :: !(Maybe (Textual Int32))
    , _piboliCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piboliParent'
--
-- * 'piboliXgafv'
--
-- * 'piboliUploadProtocol'
--
-- * 'piboliAccessToken'
--
-- * 'piboliUploadType'
--
-- * 'piboliFilter'
--
-- * 'piboliPageToken'
--
-- * 'piboliPageSize'
--
-- * 'piboliCallback'
projectsInstancesBackupOperationsList
    :: Text -- ^ 'piboliParent'
    -> ProjectsInstancesBackupOperationsList
projectsInstancesBackupOperationsList pPiboliParent_ =
  ProjectsInstancesBackupOperationsList'
    { _piboliParent = pPiboliParent_
    , _piboliXgafv = Nothing
    , _piboliUploadProtocol = Nothing
    , _piboliAccessToken = Nothing
    , _piboliUploadType = Nothing
    , _piboliFilter = Nothing
    , _piboliPageToken = Nothing
    , _piboliPageSize = Nothing
    , _piboliCallback = Nothing
    }


-- | Required. The instance of the backup operations. Values are of the form
-- \`projects\/\/instances\/\`.
piboliParent :: Lens' ProjectsInstancesBackupOperationsList Text
piboliParent
  = lens _piboliParent (\ s a -> s{_piboliParent = a})

-- | V1 error format.
piboliXgafv :: Lens' ProjectsInstancesBackupOperationsList (Maybe Xgafv)
piboliXgafv
  = lens _piboliXgafv (\ s a -> s{_piboliXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piboliUploadProtocol :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliUploadProtocol
  = lens _piboliUploadProtocol
      (\ s a -> s{_piboliUploadProtocol = a})

-- | OAuth access token.
piboliAccessToken :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliAccessToken
  = lens _piboliAccessToken
      (\ s a -> s{_piboliAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piboliUploadType :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliUploadType
  = lens _piboliUploadType
      (\ s a -> s{_piboliUploadType = a})

-- | An expression that filters the list of returned backup operations. A
-- filter expression consists of a field name, a comparison operator, and a
-- value for filtering. The value must be a string, a number, or a boolean.
-- The comparison operator must be one of: \`\<\`, \`>\`, \`\<=\`, \`>=\`,
-- \`!=\`, \`=\`, or \`:\`. Colon \`:\` is the contains operator. Filter
-- rules are not case sensitive. The following fields in the operation are
-- eligible for filtering: * \`name\` - The name of the long-running
-- operation * \`done\` - False if the operation is in progress, else true.
-- * \`metadata.\'type\` - the type of metadata. For example, the type
-- string for CreateBackupMetadata is
-- \`type.googleapis.com\/google.spanner.admin.database.v1.CreateBackupMetadata\`.
-- * \`metadata.\` - any field in metadata.value. * \`error\` - Error
-- associated with the long-running operation. * \`response.\'type\` - the
-- type of response. * \`response.\` - any field in response.value. You can
-- combine multiple expressions by enclosing each expression in
-- parentheses. By default, expressions are combined with AND logic, but
-- you can specify AND, OR, and NOT logic explicitly. Here are a few
-- examples: * \`done:true\` - The operation is complete. *
-- \`metadata.database:prod\` - The database the backup was taken from has
-- a name containing the string \"prod\". *
-- \`(metadata.\'type=type.googleapis.com\/google.spanner.admin.database.v1.CreateBackupMetadata)
-- AND\` \\ \`(metadata.name:howl) AND\` \\ \`(metadata.progress.start_time
-- \< \\\"2018-03-28T14:50:00Z\\\") AND\` \\ \`(error:*)\` - Returns
-- operations where: * The operation\'s metadata type is
-- CreateBackupMetadata. * The backup name contains the string \"howl\". *
-- The operation started before 2018-03-28T14:50:00Z. * The operation
-- resulted in an error.
piboliFilter :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliFilter
  = lens _piboliFilter (\ s a -> s{_piboliFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListBackupOperationsResponse to the same \`parent\` and with
-- the same \`filter\`.
piboliPageToken :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliPageToken
  = lens _piboliPageToken
      (\ s a -> s{_piboliPageToken = a})

-- | Number of operations to be returned in the response. If 0 or less,
-- defaults to the server\'s maximum allowed page size.
piboliPageSize :: Lens' ProjectsInstancesBackupOperationsList (Maybe Int32)
piboliPageSize
  = lens _piboliPageSize
      (\ s a -> s{_piboliPageSize = a})
      . mapping _Coerce

-- | JSONP
piboliCallback :: Lens' ProjectsInstancesBackupOperationsList (Maybe Text)
piboliCallback
  = lens _piboliCallback
      (\ s a -> s{_piboliCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupOperationsList
         where
        type Rs ProjectsInstancesBackupOperationsList =
             ListBackupOperationsResponse
        type Scopes ProjectsInstancesBackupOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupOperationsList'{..}
          = go _piboliParent _piboliXgafv _piboliUploadProtocol
              _piboliAccessToken
              _piboliUploadType
              _piboliFilter
              _piboliPageToken
              _piboliPageSize
              _piboliCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupOperationsListResource)
                      mempty
