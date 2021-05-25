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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Cloud Bigtable backups. Returns both completed and pending
-- backups.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.list@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.List
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsListResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsList
    , ProjectsInstancesClustersBackupsList

    -- * Request Lenses
    , picblParent
    , picblXgafv
    , picblUploadProtocol
    , picblOrderBy
    , picblAccessToken
    , picblUploadType
    , picblFilter
    , picblPageToken
    , picblPageSize
    , picblCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.list@ method which the
-- 'ProjectsInstancesClustersBackupsList' request conforms to.
type ProjectsInstancesClustersBackupsListResource =
     "v2" :>
       Capture "parent" Text :>
         "backups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListBackupsResponse

-- | Lists Cloud Bigtable backups. Returns both completed and pending
-- backups.
--
-- /See:/ 'projectsInstancesClustersBackupsList' smart constructor.
data ProjectsInstancesClustersBackupsList =
  ProjectsInstancesClustersBackupsList'
    { _picblParent :: !Text
    , _picblXgafv :: !(Maybe Xgafv)
    , _picblUploadProtocol :: !(Maybe Text)
    , _picblOrderBy :: !(Maybe Text)
    , _picblAccessToken :: !(Maybe Text)
    , _picblUploadType :: !(Maybe Text)
    , _picblFilter :: !(Maybe Text)
    , _picblPageToken :: !(Maybe Text)
    , _picblPageSize :: !(Maybe (Textual Int32))
    , _picblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picblParent'
--
-- * 'picblXgafv'
--
-- * 'picblUploadProtocol'
--
-- * 'picblOrderBy'
--
-- * 'picblAccessToken'
--
-- * 'picblUploadType'
--
-- * 'picblFilter'
--
-- * 'picblPageToken'
--
-- * 'picblPageSize'
--
-- * 'picblCallback'
projectsInstancesClustersBackupsList
    :: Text -- ^ 'picblParent'
    -> ProjectsInstancesClustersBackupsList
projectsInstancesClustersBackupsList pPicblParent_ =
  ProjectsInstancesClustersBackupsList'
    { _picblParent = pPicblParent_
    , _picblXgafv = Nothing
    , _picblUploadProtocol = Nothing
    , _picblOrderBy = Nothing
    , _picblAccessToken = Nothing
    , _picblUploadType = Nothing
    , _picblFilter = Nothing
    , _picblPageToken = Nothing
    , _picblPageSize = Nothing
    , _picblCallback = Nothing
    }


-- | Required. The cluster to list backups from. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\`. Use
-- \`{cluster} = \'-\'\` to list backups for all clusters in an instance,
-- e.g., \`projects\/{project}\/instances\/{instance}\/clusters\/-\`.
picblParent :: Lens' ProjectsInstancesClustersBackupsList Text
picblParent
  = lens _picblParent (\ s a -> s{_picblParent = a})

-- | V1 error format.
picblXgafv :: Lens' ProjectsInstancesClustersBackupsList (Maybe Xgafv)
picblXgafv
  = lens _picblXgafv (\ s a -> s{_picblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picblUploadProtocol :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblUploadProtocol
  = lens _picblUploadProtocol
      (\ s a -> s{_picblUploadProtocol = a})

-- | An expression for specifying the sort order of the results of the
-- request. The string value should specify one or more fields in Backup.
-- The full syntax is described at https:\/\/aip.dev\/132#ordering. Fields
-- supported are: * name * source_table * expire_time * start_time *
-- end_time * size_bytes * state For example, \"start_time\". The default
-- sorting order is ascending. To specify descending order for the field, a
-- suffix \" desc\" should be appended to the field name. For example,
-- \"start_time desc\". Redundant space characters in the syntax are
-- insigificant. If order_by is empty, results will be sorted by
-- \`start_time\` in descending order starting from the most recently
-- created backup.
picblOrderBy :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblOrderBy
  = lens _picblOrderBy (\ s a -> s{_picblOrderBy = a})

-- | OAuth access token.
picblAccessToken :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblAccessToken
  = lens _picblAccessToken
      (\ s a -> s{_picblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picblUploadType :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblUploadType
  = lens _picblUploadType
      (\ s a -> s{_picblUploadType = a})

-- | A filter expression that filters backups listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be \<, >, \<=, >=,
-- !=, =, or :. Colon \':\' represents a HAS operator which is roughly
-- synonymous with equality. Filter rules are case insensitive. The fields
-- eligible for filtering are: * \`name\` * \`source_table\` * \`state\` *
-- \`start_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`end_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`expire_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`size_bytes\` To filter on multiple expressions, provide each separate
-- expression within parentheses. By default, each expression is an AND
-- expression. However, you can include AND, OR, and NOT expressions
-- explicitly. Some examples of using filters are: * \`name:\"exact\"\` -->
-- The backup\'s name is the string \"exact\". * \`name:howl\` --> The
-- backup\'s name contains the string \"howl\". * \`source_table:prod\` -->
-- The source_table\'s name contains the string \"prod\". *
-- \`state:CREATING\` --> The backup is pending creation. * \`state:READY\`
-- --> The backup is fully created and ready for use. * \`(name:howl) AND
-- (start_time \< \\\"2018-03-28T14:50:00Z\\\")\` --> The backup name
-- contains the string \"howl\" and start_time of the backup is before
-- 2018-03-28T14:50:00Z. * \`size_bytes > 10000000000\` --> The backup\'s
-- size is greater than 10GB
picblFilter :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblFilter
  = lens _picblFilter (\ s a -> s{_picblFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListBackupsResponse to the same \`parent\` and with the same
-- \`filter\`.
picblPageToken :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblPageToken
  = lens _picblPageToken
      (\ s a -> s{_picblPageToken = a})

-- | Number of backups to be returned in the response. If 0 or less, defaults
-- to the server\'s maximum allowed page size.
picblPageSize :: Lens' ProjectsInstancesClustersBackupsList (Maybe Int32)
picblPageSize
  = lens _picblPageSize
      (\ s a -> s{_picblPageSize = a})
      . mapping _Coerce

-- | JSONP
picblCallback :: Lens' ProjectsInstancesClustersBackupsList (Maybe Text)
picblCallback
  = lens _picblCallback
      (\ s a -> s{_picblCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsList
         where
        type Rs ProjectsInstancesClustersBackupsList =
             ListBackupsResponse
        type Scopes ProjectsInstancesClustersBackupsList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsList'{..}
          = go _picblParent _picblXgafv _picblUploadProtocol
              _picblOrderBy
              _picblAccessToken
              _picblUploadType
              _picblFilter
              _picblPageToken
              _picblPageSize
              _picblCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersBackupsListResource)
                      mempty
