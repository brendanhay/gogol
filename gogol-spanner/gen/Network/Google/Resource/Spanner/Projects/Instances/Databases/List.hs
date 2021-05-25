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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Cloud Spanner databases.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.List
    (
    -- * REST Resource
      ProjectsInstancesDatabasesListResource

    -- * Creating a Request
    , projectsInstancesDatabasesList
    , ProjectsInstancesDatabasesList

    -- * Request Lenses
    , pidlParent
    , pidlXgafv
    , pidlUploadProtocol
    , pidlAccessToken
    , pidlUploadType
    , pidlPageToken
    , pidlPageSize
    , pidlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.list@ method which the
-- 'ProjectsInstancesDatabasesList' request conforms to.
type ProjectsInstancesDatabasesListResource =
     "v1" :>
       Capture "parent" Text :>
         "databases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDatabasesResponse

-- | Lists Cloud Spanner databases.
--
-- /See:/ 'projectsInstancesDatabasesList' smart constructor.
data ProjectsInstancesDatabasesList =
  ProjectsInstancesDatabasesList'
    { _pidlParent :: !Text
    , _pidlXgafv :: !(Maybe Xgafv)
    , _pidlUploadProtocol :: !(Maybe Text)
    , _pidlAccessToken :: !(Maybe Text)
    , _pidlUploadType :: !(Maybe Text)
    , _pidlPageToken :: !(Maybe Text)
    , _pidlPageSize :: !(Maybe (Textual Int32))
    , _pidlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidlParent'
--
-- * 'pidlXgafv'
--
-- * 'pidlUploadProtocol'
--
-- * 'pidlAccessToken'
--
-- * 'pidlUploadType'
--
-- * 'pidlPageToken'
--
-- * 'pidlPageSize'
--
-- * 'pidlCallback'
projectsInstancesDatabasesList
    :: Text -- ^ 'pidlParent'
    -> ProjectsInstancesDatabasesList
projectsInstancesDatabasesList pPidlParent_ =
  ProjectsInstancesDatabasesList'
    { _pidlParent = pPidlParent_
    , _pidlXgafv = Nothing
    , _pidlUploadProtocol = Nothing
    , _pidlAccessToken = Nothing
    , _pidlUploadType = Nothing
    , _pidlPageToken = Nothing
    , _pidlPageSize = Nothing
    , _pidlCallback = Nothing
    }


-- | Required. The instance whose databases should be listed. Values are of
-- the form \`projects\/\/instances\/\`.
pidlParent :: Lens' ProjectsInstancesDatabasesList Text
pidlParent
  = lens _pidlParent (\ s a -> s{_pidlParent = a})

-- | V1 error format.
pidlXgafv :: Lens' ProjectsInstancesDatabasesList (Maybe Xgafv)
pidlXgafv
  = lens _pidlXgafv (\ s a -> s{_pidlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidlUploadProtocol :: Lens' ProjectsInstancesDatabasesList (Maybe Text)
pidlUploadProtocol
  = lens _pidlUploadProtocol
      (\ s a -> s{_pidlUploadProtocol = a})

-- | OAuth access token.
pidlAccessToken :: Lens' ProjectsInstancesDatabasesList (Maybe Text)
pidlAccessToken
  = lens _pidlAccessToken
      (\ s a -> s{_pidlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidlUploadType :: Lens' ProjectsInstancesDatabasesList (Maybe Text)
pidlUploadType
  = lens _pidlUploadType
      (\ s a -> s{_pidlUploadType = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListDatabasesResponse.
pidlPageToken :: Lens' ProjectsInstancesDatabasesList (Maybe Text)
pidlPageToken
  = lens _pidlPageToken
      (\ s a -> s{_pidlPageToken = a})

-- | Number of databases to be returned in the response. If 0 or less,
-- defaults to the server\'s maximum allowed page size.
pidlPageSize :: Lens' ProjectsInstancesDatabasesList (Maybe Int32)
pidlPageSize
  = lens _pidlPageSize (\ s a -> s{_pidlPageSize = a})
      . mapping _Coerce

-- | JSONP
pidlCallback :: Lens' ProjectsInstancesDatabasesList (Maybe Text)
pidlCallback
  = lens _pidlCallback (\ s a -> s{_pidlCallback = a})

instance GoogleRequest ProjectsInstancesDatabasesList
         where
        type Rs ProjectsInstancesDatabasesList =
             ListDatabasesResponse
        type Scopes ProjectsInstancesDatabasesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDatabasesList'{..}
          = go _pidlParent _pidlXgafv _pidlUploadProtocol
              _pidlAccessToken
              _pidlUploadType
              _pidlPageToken
              _pidlPageSize
              _pidlCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesListResource)
                      mempty
