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
-- Module      : Network.Google.Resource.File.Projects.Locations.Backups.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all backups in a project for either a specified location or for
-- all locations.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.list@.
module Network.Google.Resource.File.Projects.Locations.Backups.List
    (
    -- * REST Resource
      ProjectsLocationsBackupsListResource

    -- * Creating a Request
    , projectsLocationsBackupsList
    , ProjectsLocationsBackupsList

    -- * Request Lenses
    , plblParent
    , plblXgafv
    , plblUploadProtocol
    , plblOrderBy
    , plblAccessToken
    , plblUploadType
    , plblFilter
    , plblPageToken
    , plblPageSize
    , plblCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.backups.list@ method which the
-- 'ProjectsLocationsBackupsList' request conforms to.
type ProjectsLocationsBackupsListResource =
     "v1" :>
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

-- | Lists all backups in a project for either a specified location or for
-- all locations.
--
-- /See:/ 'projectsLocationsBackupsList' smart constructor.
data ProjectsLocationsBackupsList =
  ProjectsLocationsBackupsList'
    { _plblParent :: !Text
    , _plblXgafv :: !(Maybe Xgafv)
    , _plblUploadProtocol :: !(Maybe Text)
    , _plblOrderBy :: !(Maybe Text)
    , _plblAccessToken :: !(Maybe Text)
    , _plblUploadType :: !(Maybe Text)
    , _plblFilter :: !(Maybe Text)
    , _plblPageToken :: !(Maybe Text)
    , _plblPageSize :: !(Maybe (Textual Int32))
    , _plblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBackupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plblParent'
--
-- * 'plblXgafv'
--
-- * 'plblUploadProtocol'
--
-- * 'plblOrderBy'
--
-- * 'plblAccessToken'
--
-- * 'plblUploadType'
--
-- * 'plblFilter'
--
-- * 'plblPageToken'
--
-- * 'plblPageSize'
--
-- * 'plblCallback'
projectsLocationsBackupsList
    :: Text -- ^ 'plblParent'
    -> ProjectsLocationsBackupsList
projectsLocationsBackupsList pPlblParent_ =
  ProjectsLocationsBackupsList'
    { _plblParent = pPlblParent_
    , _plblXgafv = Nothing
    , _plblUploadProtocol = Nothing
    , _plblOrderBy = Nothing
    , _plblAccessToken = Nothing
    , _plblUploadType = Nothing
    , _plblFilter = Nothing
    , _plblPageToken = Nothing
    , _plblPageSize = Nothing
    , _plblCallback = Nothing
    }


-- | Required. The project and location for which to retrieve backup
-- information, in the format
-- projects\/{project_number}\/locations\/{location}. In Cloud Filestore,
-- backup locations map to GCP regions, for example **us-west1**. To
-- retrieve backup information for all locations, use \"-\" for the
-- {location} value.
plblParent :: Lens' ProjectsLocationsBackupsList Text
plblParent
  = lens _plblParent (\ s a -> s{_plblParent = a})

-- | V1 error format.
plblXgafv :: Lens' ProjectsLocationsBackupsList (Maybe Xgafv)
plblXgafv
  = lens _plblXgafv (\ s a -> s{_plblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plblUploadProtocol :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblUploadProtocol
  = lens _plblUploadProtocol
      (\ s a -> s{_plblUploadProtocol = a})

-- | Sort results. Supported values are \"name\", \"name desc\" or \"\"
-- (unsorted).
plblOrderBy :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblOrderBy
  = lens _plblOrderBy (\ s a -> s{_plblOrderBy = a})

-- | OAuth access token.
plblAccessToken :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblAccessToken
  = lens _plblAccessToken
      (\ s a -> s{_plblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plblUploadType :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblUploadType
  = lens _plblUploadType
      (\ s a -> s{_plblUploadType = a})

-- | List filter.
plblFilter :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblFilter
  = lens _plblFilter (\ s a -> s{_plblFilter = a})

-- | The next_page_token value to use if there are additional results to
-- retrieve for this list request.
plblPageToken :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblPageToken
  = lens _plblPageToken
      (\ s a -> s{_plblPageToken = a})

-- | The maximum number of items to return.
plblPageSize :: Lens' ProjectsLocationsBackupsList (Maybe Int32)
plblPageSize
  = lens _plblPageSize (\ s a -> s{_plblPageSize = a})
      . mapping _Coerce

-- | JSONP
plblCallback :: Lens' ProjectsLocationsBackupsList (Maybe Text)
plblCallback
  = lens _plblCallback (\ s a -> s{_plblCallback = a})

instance GoogleRequest ProjectsLocationsBackupsList
         where
        type Rs ProjectsLocationsBackupsList =
             ListBackupsResponse
        type Scopes ProjectsLocationsBackupsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBackupsList'{..}
          = go _plblParent _plblXgafv _plblUploadProtocol
              _plblOrderBy
              _plblAccessToken
              _plblUploadType
              _plblFilter
              _plblPageToken
              _plblPageSize
              _plblCallback
              (Just AltJSON)
              fileService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBackupsListResource)
                      mempty
