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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists completed and pending backups. Backups returned are ordered by
-- \`create_time\` in descending order, starting from the most recent
-- \`create_time\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.List
    (
    -- * REST Resource
      ProjectsInstancesBackupsListResource

    -- * Creating a Request
    , projectsInstancesBackupsList
    , ProjectsInstancesBackupsList

    -- * Request Lenses
    , piblParent
    , piblXgafv
    , piblUploadProtocol
    , piblAccessToken
    , piblUploadType
    , piblFilter
    , piblPageToken
    , piblPageSize
    , piblCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.list@ method which the
-- 'ProjectsInstancesBackupsList' request conforms to.
type ProjectsInstancesBackupsListResource =
     "v1" :>
       Capture "parent" Text :>
         "backups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBackupsResponse

-- | Lists completed and pending backups. Backups returned are ordered by
-- \`create_time\` in descending order, starting from the most recent
-- \`create_time\`.
--
-- /See:/ 'projectsInstancesBackupsList' smart constructor.
data ProjectsInstancesBackupsList =
  ProjectsInstancesBackupsList'
    { _piblParent :: !Text
    , _piblXgafv :: !(Maybe Xgafv)
    , _piblUploadProtocol :: !(Maybe Text)
    , _piblAccessToken :: !(Maybe Text)
    , _piblUploadType :: !(Maybe Text)
    , _piblFilter :: !(Maybe Text)
    , _piblPageToken :: !(Maybe Text)
    , _piblPageSize :: !(Maybe (Textual Int32))
    , _piblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piblParent'
--
-- * 'piblXgafv'
--
-- * 'piblUploadProtocol'
--
-- * 'piblAccessToken'
--
-- * 'piblUploadType'
--
-- * 'piblFilter'
--
-- * 'piblPageToken'
--
-- * 'piblPageSize'
--
-- * 'piblCallback'
projectsInstancesBackupsList
    :: Text -- ^ 'piblParent'
    -> ProjectsInstancesBackupsList
projectsInstancesBackupsList pPiblParent_ =
  ProjectsInstancesBackupsList'
    { _piblParent = pPiblParent_
    , _piblXgafv = Nothing
    , _piblUploadProtocol = Nothing
    , _piblAccessToken = Nothing
    , _piblUploadType = Nothing
    , _piblFilter = Nothing
    , _piblPageToken = Nothing
    , _piblPageSize = Nothing
    , _piblCallback = Nothing
    }


-- | Required. The instance to list backups from. Values are of the form
-- \`projects\/\/instances\/\`.
piblParent :: Lens' ProjectsInstancesBackupsList Text
piblParent
  = lens _piblParent (\ s a -> s{_piblParent = a})

-- | V1 error format.
piblXgafv :: Lens' ProjectsInstancesBackupsList (Maybe Xgafv)
piblXgafv
  = lens _piblXgafv (\ s a -> s{_piblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piblUploadProtocol :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblUploadProtocol
  = lens _piblUploadProtocol
      (\ s a -> s{_piblUploadProtocol = a})

-- | OAuth access token.
piblAccessToken :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblAccessToken
  = lens _piblAccessToken
      (\ s a -> s{_piblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piblUploadType :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblUploadType
  = lens _piblUploadType
      (\ s a -> s{_piblUploadType = a})

-- | An expression that filters the list of returned backups. A filter
-- expression consists of a field name, a comparison operator, and a value
-- for filtering. The value must be a string, a number, or a boolean. The
-- comparison operator must be one of: \`\<\`, \`>\`, \`\<=\`, \`>=\`,
-- \`!=\`, \`=\`, or \`:\`. Colon \`:\` is the contains operator. Filter
-- rules are not case sensitive. The following fields in the Backup are
-- eligible for filtering: * \`name\` * \`database\` * \`state\` *
-- \`create_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`expire_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`version_time\` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
-- \`size_bytes\` You can combine multiple expressions by enclosing each
-- expression in parentheses. By default, expressions are combined with AND
-- logic, but you can specify AND, OR, and NOT logic explicitly. Here are a
-- few examples: * \`name:Howl\` - The backup\'s name contains the string
-- \"howl\". * \`database:prod\` - The database\'s name contains the string
-- \"prod\". * \`state:CREATING\` - The backup is pending creation. *
-- \`state:READY\` - The backup is fully created and ready for use. *
-- \`(name:howl) AND (create_time \< \\\"2018-03-28T14:50:00Z\\\")\` - The
-- backup name contains the string \"howl\" and \`create_time\` of the
-- backup is before 2018-03-28T14:50:00Z. * \`expire_time \<
-- \\\"2018-03-28T14:50:00Z\\\"\` - The backup \`expire_time\` is before
-- 2018-03-28T14:50:00Z. * \`size_bytes > 10000000000\` - The backup\'s
-- size is greater than 10GB
piblFilter :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblFilter
  = lens _piblFilter (\ s a -> s{_piblFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListBackupsResponse to the same \`parent\` and with the same
-- \`filter\`.
piblPageToken :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblPageToken
  = lens _piblPageToken
      (\ s a -> s{_piblPageToken = a})

-- | Number of backups to be returned in the response. If 0 or less, defaults
-- to the server\'s maximum allowed page size.
piblPageSize :: Lens' ProjectsInstancesBackupsList (Maybe Int32)
piblPageSize
  = lens _piblPageSize (\ s a -> s{_piblPageSize = a})
      . mapping _Coerce

-- | JSONP
piblCallback :: Lens' ProjectsInstancesBackupsList (Maybe Text)
piblCallback
  = lens _piblCallback (\ s a -> s{_piblCallback = a})

instance GoogleRequest ProjectsInstancesBackupsList
         where
        type Rs ProjectsInstancesBackupsList =
             ListBackupsResponse
        type Scopes ProjectsInstancesBackupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesBackupsList'{..}
          = go _piblParent _piblXgafv _piblUploadProtocol
              _piblAccessToken
              _piblUploadType
              _piblFilter
              _piblPageToken
              _piblPageSize
              _piblCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesBackupsListResource)
                      mempty
