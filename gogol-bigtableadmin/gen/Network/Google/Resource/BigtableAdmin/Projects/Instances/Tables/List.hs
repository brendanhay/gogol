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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tables served from a specified instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.list@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.List
    (
    -- * REST Resource
      ProjectsInstancesTablesListResource

    -- * Creating a Request
    , projectsInstancesTablesList
    , ProjectsInstancesTablesList

    -- * Request Lenses
    , pitlParent
    , pitlXgafv
    , pitlUploadProtocol
    , pitlAccessToken
    , pitlUploadType
    , pitlView
    , pitlPageToken
    , pitlPageSize
    , pitlCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.list@ method which the
-- 'ProjectsInstancesTablesList' request conforms to.
type ProjectsInstancesTablesListResource =
     "v2" :>
       Capture "parent" Text :>
         "tables" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTablesResponse

-- | Lists all tables served from a specified instance.
--
-- /See:/ 'projectsInstancesTablesList' smart constructor.
data ProjectsInstancesTablesList =
  ProjectsInstancesTablesList'
    { _pitlParent         :: !Text
    , _pitlXgafv          :: !(Maybe Xgafv)
    , _pitlUploadProtocol :: !(Maybe Text)
    , _pitlAccessToken    :: !(Maybe Text)
    , _pitlUploadType     :: !(Maybe Text)
    , _pitlView           :: !(Maybe Text)
    , _pitlPageToken      :: !(Maybe Text)
    , _pitlPageSize       :: !(Maybe (Textual Int32))
    , _pitlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitlParent'
--
-- * 'pitlXgafv'
--
-- * 'pitlUploadProtocol'
--
-- * 'pitlAccessToken'
--
-- * 'pitlUploadType'
--
-- * 'pitlView'
--
-- * 'pitlPageToken'
--
-- * 'pitlPageSize'
--
-- * 'pitlCallback'
projectsInstancesTablesList
    :: Text -- ^ 'pitlParent'
    -> ProjectsInstancesTablesList
projectsInstancesTablesList pPitlParent_ =
  ProjectsInstancesTablesList'
    { _pitlParent = pPitlParent_
    , _pitlXgafv = Nothing
    , _pitlUploadProtocol = Nothing
    , _pitlAccessToken = Nothing
    , _pitlUploadType = Nothing
    , _pitlView = Nothing
    , _pitlPageToken = Nothing
    , _pitlPageSize = Nothing
    , _pitlCallback = Nothing
    }


-- | The unique name of the instance for which tables should be listed.
-- Values are of the form \`projects\/\/instances\/\`.
pitlParent :: Lens' ProjectsInstancesTablesList Text
pitlParent
  = lens _pitlParent (\ s a -> s{_pitlParent = a})

-- | V1 error format.
pitlXgafv :: Lens' ProjectsInstancesTablesList (Maybe Xgafv)
pitlXgafv
  = lens _pitlXgafv (\ s a -> s{_pitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitlUploadProtocol :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlUploadProtocol
  = lens _pitlUploadProtocol
      (\ s a -> s{_pitlUploadProtocol = a})

-- | OAuth access token.
pitlAccessToken :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlAccessToken
  = lens _pitlAccessToken
      (\ s a -> s{_pitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitlUploadType :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlUploadType
  = lens _pitlUploadType
      (\ s a -> s{_pitlUploadType = a})

-- | The view to be applied to the returned tables\' fields. Defaults to
-- \`NAME_ONLY\` if unspecified; no others are currently supported.
pitlView :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlView = lens _pitlView (\ s a -> s{_pitlView = a})

-- | The value of \`next_page_token\` returned by a previous call.
pitlPageToken :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlPageToken
  = lens _pitlPageToken
      (\ s a -> s{_pitlPageToken = a})

-- | Maximum number of results per page. A page_size of zero lets the server
-- choose the number of items to return. A page_size which is strictly
-- positive will return at most that many items. A negative page_size will
-- cause an error. Following the first request, subsequent paginated calls
-- are not required to pass a page_size. If a page_size is set in
-- subsequent calls, it must match the page_size given in the first
-- request.
pitlPageSize :: Lens' ProjectsInstancesTablesList (Maybe Int32)
pitlPageSize
  = lens _pitlPageSize (\ s a -> s{_pitlPageSize = a})
      . mapping _Coerce

-- | JSONP
pitlCallback :: Lens' ProjectsInstancesTablesList (Maybe Text)
pitlCallback
  = lens _pitlCallback (\ s a -> s{_pitlCallback = a})

instance GoogleRequest ProjectsInstancesTablesList
         where
        type Rs ProjectsInstancesTablesList =
             ListTablesResponse
        type Scopes ProjectsInstancesTablesList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesTablesList'{..}
          = go _pitlParent _pitlXgafv _pitlUploadProtocol
              _pitlAccessToken
              _pitlUploadType
              _pitlView
              _pitlPageToken
              _pitlPageSize
              _pitlCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesTablesListResource)
                      mempty
