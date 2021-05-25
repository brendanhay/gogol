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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about app profiles in an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.list@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.List
    (
    -- * REST Resource
      ProjectsInstancesAppProFilesListResource

    -- * Creating a Request
    , projectsInstancesAppProFilesList
    , ProjectsInstancesAppProFilesList

    -- * Request Lenses
    , piapflParent
    , piapflXgafv
    , piapflUploadProtocol
    , piapflAccessToken
    , piapflUploadType
    , piapflPageToken
    , piapflPageSize
    , piapflCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.list@ method which the
-- 'ProjectsInstancesAppProFilesList' request conforms to.
type ProjectsInstancesAppProFilesListResource =
     "v2" :>
       Capture "parent" Text :>
         "appProfiles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAppProFilesResponse

-- | Lists information about app profiles in an instance.
--
-- /See:/ 'projectsInstancesAppProFilesList' smart constructor.
data ProjectsInstancesAppProFilesList =
  ProjectsInstancesAppProFilesList'
    { _piapflParent :: !Text
    , _piapflXgafv :: !(Maybe Xgafv)
    , _piapflUploadProtocol :: !(Maybe Text)
    , _piapflAccessToken :: !(Maybe Text)
    , _piapflUploadType :: !(Maybe Text)
    , _piapflPageToken :: !(Maybe Text)
    , _piapflPageSize :: !(Maybe (Textual Int32))
    , _piapflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesAppProFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piapflParent'
--
-- * 'piapflXgafv'
--
-- * 'piapflUploadProtocol'
--
-- * 'piapflAccessToken'
--
-- * 'piapflUploadType'
--
-- * 'piapflPageToken'
--
-- * 'piapflPageSize'
--
-- * 'piapflCallback'
projectsInstancesAppProFilesList
    :: Text -- ^ 'piapflParent'
    -> ProjectsInstancesAppProFilesList
projectsInstancesAppProFilesList pPiapflParent_ =
  ProjectsInstancesAppProFilesList'
    { _piapflParent = pPiapflParent_
    , _piapflXgafv = Nothing
    , _piapflUploadProtocol = Nothing
    , _piapflAccessToken = Nothing
    , _piapflUploadType = Nothing
    , _piapflPageToken = Nothing
    , _piapflPageSize = Nothing
    , _piapflCallback = Nothing
    }


-- | Required. The unique name of the instance for which a list of app
-- profiles is requested. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\`. Use \`{instance} =
-- \'-\'\` to list AppProfiles for all Instances in a project, e.g.,
-- \`projects\/myproject\/instances\/-\`.
piapflParent :: Lens' ProjectsInstancesAppProFilesList Text
piapflParent
  = lens _piapflParent (\ s a -> s{_piapflParent = a})

-- | V1 error format.
piapflXgafv :: Lens' ProjectsInstancesAppProFilesList (Maybe Xgafv)
piapflXgafv
  = lens _piapflXgafv (\ s a -> s{_piapflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piapflUploadProtocol :: Lens' ProjectsInstancesAppProFilesList (Maybe Text)
piapflUploadProtocol
  = lens _piapflUploadProtocol
      (\ s a -> s{_piapflUploadProtocol = a})

-- | OAuth access token.
piapflAccessToken :: Lens' ProjectsInstancesAppProFilesList (Maybe Text)
piapflAccessToken
  = lens _piapflAccessToken
      (\ s a -> s{_piapflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piapflUploadType :: Lens' ProjectsInstancesAppProFilesList (Maybe Text)
piapflUploadType
  = lens _piapflUploadType
      (\ s a -> s{_piapflUploadType = a})

-- | The value of \`next_page_token\` returned by a previous call.
piapflPageToken :: Lens' ProjectsInstancesAppProFilesList (Maybe Text)
piapflPageToken
  = lens _piapflPageToken
      (\ s a -> s{_piapflPageToken = a})

-- | Maximum number of results per page. A page_size of zero lets the server
-- choose the number of items to return. A page_size which is strictly
-- positive will return at most that many items. A negative page_size will
-- cause an error. Following the first request, subsequent paginated calls
-- are not required to pass a page_size. If a page_size is set in
-- subsequent calls, it must match the page_size given in the first
-- request.
piapflPageSize :: Lens' ProjectsInstancesAppProFilesList (Maybe Int32)
piapflPageSize
  = lens _piapflPageSize
      (\ s a -> s{_piapflPageSize = a})
      . mapping _Coerce

-- | JSONP
piapflCallback :: Lens' ProjectsInstancesAppProFilesList (Maybe Text)
piapflCallback
  = lens _piapflCallback
      (\ s a -> s{_piapflCallback = a})

instance GoogleRequest
           ProjectsInstancesAppProFilesList
         where
        type Rs ProjectsInstancesAppProFilesList =
             ListAppProFilesResponse
        type Scopes ProjectsInstancesAppProFilesList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesAppProFilesList'{..}
          = go _piapflParent _piapflXgafv _piapflUploadProtocol
              _piapflAccessToken
              _piapflUploadType
              _piapflPageToken
              _piapflPageSize
              _piapflCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesAppProFilesListResource)
                      mempty
