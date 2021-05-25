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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists projects that are direct children of the specified folder or
-- organization resource. \`list()\` provides a strongly consistent view of
-- the projects underneath the specified parent resource. \`list()\`
-- returns projects sorted based upon the (ascending) lexical ordering of
-- their \`display_name\`. The caller must have
-- \`resourcemanager.projects.list\` permission on the identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.list@.
module Network.Google.Resource.CloudResourceManager.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList
    , ProjectsList

    -- * Request Lenses
    , plParent
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plShowDeleted
    , plPageToken
    , plPageSize
    , plCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.list@ method which the
-- 'ProjectsList' request conforms to.
type ProjectsListResource =
     "v3" :>
       "projects" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListProjectsResponse

-- | Lists projects that are direct children of the specified folder or
-- organization resource. \`list()\` provides a strongly consistent view of
-- the projects underneath the specified parent resource. \`list()\`
-- returns projects sorted based upon the (ascending) lexical ordering of
-- their \`display_name\`. The caller must have
-- \`resourcemanager.projects.list\` permission on the identified parent.
--
-- /See:/ 'projectsList' smart constructor.
data ProjectsList =
  ProjectsList'
    { _plParent :: !(Maybe Text)
    , _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plShowDeleted :: !(Maybe Bool)
    , _plPageToken :: !(Maybe Text)
    , _plPageSize :: !(Maybe (Textual Int32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plParent'
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plShowDeleted'
--
-- * 'plPageToken'
--
-- * 'plPageSize'
--
-- * 'plCallback'
projectsList
    :: ProjectsList
projectsList =
  ProjectsList'
    { _plParent = Nothing
    , _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plShowDeleted = Nothing
    , _plPageToken = Nothing
    , _plPageSize = Nothing
    , _plCallback = Nothing
    }


-- | Required. The name of the parent resource to list projects under. For
-- example, setting this field to \'folders\/1234\' would list all projects
-- directly under that folder.
plParent :: Lens' ProjectsList (Maybe Text)
plParent = lens _plParent (\ s a -> s{_plParent = a})

-- | V1 error format.
plXgafv :: Lens' ProjectsList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProjectsList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' ProjectsList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProjectsList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Optional. Indicate that projects in the \`DELETE_REQUESTED\` state
-- should also be returned. Normally only \`ACTIVE\` projects are returned.
plShowDeleted :: Lens' ProjectsList (Maybe Bool)
plShowDeleted
  = lens _plShowDeleted
      (\ s a -> s{_plShowDeleted = a})

-- | Optional. A pagination token returned from a previous call to
-- ListProjects that indicates from where listing should continue.
plPageToken :: Lens' ProjectsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Optional. The maximum number of projects to return in the response. The
-- server can return fewer projects than requested. If unspecified, server
-- picks an appropriate default.
plPageSize :: Lens' ProjectsList (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a}) .
      mapping _Coerce

-- | JSONP
plCallback :: Lens' ProjectsList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest ProjectsList where
        type Rs ProjectsList = ListProjectsResponse
        type Scopes ProjectsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsList'{..}
          = go _plParent _plXgafv _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plShowDeleted
              _plPageToken
              _plPageSize
              _plCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsListResource)
                      mempty
