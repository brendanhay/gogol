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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.DatabaseOperations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists database longrunning-operations. A database operation has a name
-- of the form \`projects\/\/instances\/\/databases\/\/operations\/\`. The
-- long-running operation metadata field type \`metadata.type_url\`
-- describes the type of the metadata. Operations returned include those
-- that have completed\/failed\/canceled within the last 7 days, and
-- pending operations.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databaseOperations.list@.
module Network.Google.Resource.Spanner.Projects.Instances.DatabaseOperations.List
    (
    -- * REST Resource
      ProjectsInstancesDatabaseOperationsListResource

    -- * Creating a Request
    , projectsInstancesDatabaseOperationsList
    , ProjectsInstancesDatabaseOperationsList

    -- * Request Lenses
    , pParent
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pFilter
    , pPageToken
    , pPageSize
    , pCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databaseOperations.list@ method which the
-- 'ProjectsInstancesDatabaseOperationsList' request conforms to.
type ProjectsInstancesDatabaseOperationsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "databaseOperations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDatabaseOperationsResponse

-- | Lists database longrunning-operations. A database operation has a name
-- of the form \`projects\/\/instances\/\/databases\/\/operations\/\`. The
-- long-running operation metadata field type \`metadata.type_url\`
-- describes the type of the metadata. Operations returned include those
-- that have completed\/failed\/canceled within the last 7 days, and
-- pending operations.
--
-- /See:/ 'projectsInstancesDatabaseOperationsList' smart constructor.
data ProjectsInstancesDatabaseOperationsList =
  ProjectsInstancesDatabaseOperationsList'
    { _pParent :: !Text
    , _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pFilter :: !(Maybe Text)
    , _pPageToken :: !(Maybe Text)
    , _pPageSize :: !(Maybe (Textual Int32))
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabaseOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pFilter'
--
-- * 'pPageToken'
--
-- * 'pPageSize'
--
-- * 'pCallback'
projectsInstancesDatabaseOperationsList
    :: Text -- ^ 'pParent'
    -> ProjectsInstancesDatabaseOperationsList
projectsInstancesDatabaseOperationsList pPParent_ =
  ProjectsInstancesDatabaseOperationsList'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pFilter = Nothing
    , _pPageToken = Nothing
    , _pPageSize = Nothing
    , _pCallback = Nothing
    }


-- | Required. The instance of the database operations. Values are of the
-- form \`projects\/\/instances\/\`.
pParent :: Lens' ProjectsInstancesDatabaseOperationsList Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | An expression that filters the list of returned operations. A filter
-- expression consists of a field name, a comparison operator, and a value
-- for filtering. The value must be a string, a number, or a boolean. The
-- comparison operator must be one of: \`\<\`, \`>\`, \`\<=\`, \`>=\`,
-- \`!=\`, \`=\`, or \`:\`. Colon \`:\` is the contains operator. Filter
-- rules are not case sensitive. The following fields in the Operation are
-- eligible for filtering: * \`name\` - The name of the long-running
-- operation * \`done\` - False if the operation is in progress, else true.
-- * \`metadata.\'type\` - the type of metadata. For example, the type
-- string for RestoreDatabaseMetadata is
-- \`type.googleapis.com\/google.spanner.admin.database.v1.RestoreDatabaseMetadata\`.
-- * \`metadata.\` - any field in metadata.value. * \`error\` - Error
-- associated with the long-running operation. * \`response.\'type\` - the
-- type of response. * \`response.\` - any field in response.value. You can
-- combine multiple expressions by enclosing each expression in
-- parentheses. By default, expressions are combined with AND logic.
-- However, you can specify AND, OR, and NOT logic explicitly. Here are a
-- few examples: * \`done:true\` - The operation is complete. *
-- \`(metadata.\'type=type.googleapis.com\/google.spanner.admin.database.v1.RestoreDatabaseMetadata)
-- AND\` \\ \`(metadata.source_type:BACKUP) AND\` \\
-- \`(metadata.backup_info.backup:backup_howl) AND\` \\
-- \`(metadata.name:restored_howl) AND\` \\ \`(metadata.progress.start_time
-- \< \\\"2018-03-28T14:50:00Z\\\") AND\` \\ \`(error:*)\` - Return
-- operations where: * The operation\'s metadata type is
-- RestoreDatabaseMetadata. * The database is restored from a backup. * The
-- backup name contains \"backup_howl\". * The restored database\'s name
-- contains \"restored_howl\". * The operation started before
-- 2018-03-28T14:50:00Z. * The operation resulted in an error.
pFilter :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pFilter = lens _pFilter (\ s a -> s{_pFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListDatabaseOperationsResponse to the same \`parent\` and with
-- the same \`filter\`.
pPageToken :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pPageToken
  = lens _pPageToken (\ s a -> s{_pPageToken = a})

-- | Number of operations to be returned in the response. If 0 or less,
-- defaults to the server\'s maximum allowed page size.
pPageSize :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Int32)
pPageSize
  = lens _pPageSize (\ s a -> s{_pPageSize = a}) .
      mapping _Coerce

-- | JSONP
pCallback :: Lens' ProjectsInstancesDatabaseOperationsList (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabaseOperationsList
         where
        type Rs ProjectsInstancesDatabaseOperationsList =
             ListDatabaseOperationsResponse
        type Scopes ProjectsInstancesDatabaseOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabaseOperationsList'{..}
          = go _pParent _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pFilter
              _pPageToken
              _pPageSize
              _pCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabaseOperationsListResource)
                      mempty
