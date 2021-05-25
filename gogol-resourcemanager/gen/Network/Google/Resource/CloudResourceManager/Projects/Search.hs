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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for projects that the caller has both
-- \`resourcemanager.projects.get\` permission on, and also satisfy the
-- specified query. This method returns projects in an unspecified order.
-- This method is eventually consistent with project mutations; this means
-- that a newly created project may not appear in the results or recent
-- updates to an existing project may not be reflected in the results. To
-- retrieve the latest state of a project, use the GetProject method.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.search@.
module Network.Google.Resource.CloudResourceManager.Projects.Search
    (
    -- * REST Resource
      ProjectsSearchResource

    -- * Creating a Request
    , projectsSearch
    , ProjectsSearch

    -- * Request Lenses
    , psXgafv
    , psUploadProtocol
    , psAccessToken
    , psUploadType
    , psQuery
    , psPageToken
    , psPageSize
    , psCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.search@ method which the
-- 'ProjectsSearch' request conforms to.
type ProjectsSearchResource =
     "v3" :>
       "projects:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchProjectsResponse

-- | Search for projects that the caller has both
-- \`resourcemanager.projects.get\` permission on, and also satisfy the
-- specified query. This method returns projects in an unspecified order.
-- This method is eventually consistent with project mutations; this means
-- that a newly created project may not appear in the results or recent
-- updates to an existing project may not be reflected in the results. To
-- retrieve the latest state of a project, use the GetProject method.
--
-- /See:/ 'projectsSearch' smart constructor.
data ProjectsSearch =
  ProjectsSearch'
    { _psXgafv :: !(Maybe Xgafv)
    , _psUploadProtocol :: !(Maybe Text)
    , _psAccessToken :: !(Maybe Text)
    , _psUploadType :: !(Maybe Text)
    , _psQuery :: !(Maybe Text)
    , _psPageToken :: !(Maybe Text)
    , _psPageSize :: !(Maybe (Textual Int32))
    , _psCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psXgafv'
--
-- * 'psUploadProtocol'
--
-- * 'psAccessToken'
--
-- * 'psUploadType'
--
-- * 'psQuery'
--
-- * 'psPageToken'
--
-- * 'psPageSize'
--
-- * 'psCallback'
projectsSearch
    :: ProjectsSearch
projectsSearch =
  ProjectsSearch'
    { _psXgafv = Nothing
    , _psUploadProtocol = Nothing
    , _psAccessToken = Nothing
    , _psUploadType = Nothing
    , _psQuery = Nothing
    , _psPageToken = Nothing
    , _psPageSize = Nothing
    , _psCallback = Nothing
    }


-- | V1 error format.
psXgafv :: Lens' ProjectsSearch (Maybe Xgafv)
psXgafv = lens _psXgafv (\ s a -> s{_psXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psUploadProtocol :: Lens' ProjectsSearch (Maybe Text)
psUploadProtocol
  = lens _psUploadProtocol
      (\ s a -> s{_psUploadProtocol = a})

-- | OAuth access token.
psAccessToken :: Lens' ProjectsSearch (Maybe Text)
psAccessToken
  = lens _psAccessToken
      (\ s a -> s{_psAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psUploadType :: Lens' ProjectsSearch (Maybe Text)
psUploadType
  = lens _psUploadType (\ s a -> s{_psUploadType = a})

-- | Optional. A query string for searching for projects that the caller has
-- \`resourcemanager.projects.get\` permission to. If multiple fields are
-- included in the query, the it will return results that match any of the
-- fields. Some eligible fields are: | Field | Description |
-- |-------------------------|----------------------------------------------|
-- | displayName, name | Filters by displayName. | | parent | Project\'s
-- parent (for example: folders\/123, organizations\/*). Prefer parent
-- field over parent.type and parent.id.| | parent.type | Parent\'s type:
-- \`folder\` or \`organization\`. | | parent.id | Parent\'s id number (for
-- example: 123) | | id, projectId | Filters by projectId. | | state,
-- lifecycleState | Filters by state. | | labels | Filters by label name or
-- value. | | labels.\\ (where *key* is the name of a label) | Filters by
-- label name.| Search expressions are case insensitive. Some examples
-- queries: | Query | Description |
-- |------------------|-----------------------------------------------------|
-- | name:how* | The project\'s name starts with \"how\". | | name:Howl |
-- The project\'s name is \`Howl\` or \`howl\`. | | name:HOWL | Equivalent
-- to above. | | NAME:howl | Equivalent to above. | | labels.color:* | The
-- project has the label \`color\`. | | labels.color:red | The project\'s
-- label \`color\` has the value \`red\`. | | labels.color:red
-- labels.size:big | The project\'s label \`color\` has the value \`red\`
-- and its label \`size\` has the value \`big\`.| If no query is specified,
-- the call will return projects for which the user has the
-- \`resourcemanager.projects.get\` permission.
psQuery :: Lens' ProjectsSearch (Maybe Text)
psQuery = lens _psQuery (\ s a -> s{_psQuery = a})

-- | Optional. A pagination token returned from a previous call to
-- ListProjects that indicates from where listing should continue.
psPageToken :: Lens' ProjectsSearch (Maybe Text)
psPageToken
  = lens _psPageToken (\ s a -> s{_psPageToken = a})

-- | Optional. The maximum number of projects to return in the response. The
-- server can return fewer projects than requested. If unspecified, server
-- picks an appropriate default.
psPageSize :: Lens' ProjectsSearch (Maybe Int32)
psPageSize
  = lens _psPageSize (\ s a -> s{_psPageSize = a}) .
      mapping _Coerce

-- | JSONP
psCallback :: Lens' ProjectsSearch (Maybe Text)
psCallback
  = lens _psCallback (\ s a -> s{_psCallback = a})

instance GoogleRequest ProjectsSearch where
        type Rs ProjectsSearch = SearchProjectsResponse
        type Scopes ProjectsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSearch'{..}
          = go _psXgafv _psUploadProtocol _psAccessToken
              _psUploadType
              _psQuery
              _psPageToken
              _psPageSize
              _psCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsSearchResource)
                      mempty
