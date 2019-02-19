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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all sessions in a given database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.List
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsListResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsList
    , ProjectsInstancesDatabasesSessionsList

    -- * Request Lenses
    , pidslXgafv
    , pidslUploadProtocol
    , pidslDatabase
    , pidslAccessToken
    , pidslUploadType
    , pidslFilter
    , pidslPageToken
    , pidslPageSize
    , pidslCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.list@ method which the
-- 'ProjectsInstancesDatabasesSessionsList' request conforms to.
type ProjectsInstancesDatabasesSessionsListResource =
     "v1" :>
       Capture "database" Text :>
         "sessions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSessionsResponse

-- | Lists all sessions in a given database.
--
-- /See:/ 'projectsInstancesDatabasesSessionsList' smart constructor.
data ProjectsInstancesDatabasesSessionsList =
  ProjectsInstancesDatabasesSessionsList'
    { _pidslXgafv          :: !(Maybe Xgafv)
    , _pidslUploadProtocol :: !(Maybe Text)
    , _pidslDatabase       :: !Text
    , _pidslAccessToken    :: !(Maybe Text)
    , _pidslUploadType     :: !(Maybe Text)
    , _pidslFilter         :: !(Maybe Text)
    , _pidslPageToken      :: !(Maybe Text)
    , _pidslPageSize       :: !(Maybe (Textual Int32))
    , _pidslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidslXgafv'
--
-- * 'pidslUploadProtocol'
--
-- * 'pidslDatabase'
--
-- * 'pidslAccessToken'
--
-- * 'pidslUploadType'
--
-- * 'pidslFilter'
--
-- * 'pidslPageToken'
--
-- * 'pidslPageSize'
--
-- * 'pidslCallback'
projectsInstancesDatabasesSessionsList
    :: Text -- ^ 'pidslDatabase'
    -> ProjectsInstancesDatabasesSessionsList
projectsInstancesDatabasesSessionsList pPidslDatabase_ =
  ProjectsInstancesDatabasesSessionsList'
    { _pidslXgafv = Nothing
    , _pidslUploadProtocol = Nothing
    , _pidslDatabase = pPidslDatabase_
    , _pidslAccessToken = Nothing
    , _pidslUploadType = Nothing
    , _pidslFilter = Nothing
    , _pidslPageToken = Nothing
    , _pidslPageSize = Nothing
    , _pidslCallback = Nothing
    }


-- | V1 error format.
pidslXgafv :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Xgafv)
pidslXgafv
  = lens _pidslXgafv (\ s a -> s{_pidslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidslUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslUploadProtocol
  = lens _pidslUploadProtocol
      (\ s a -> s{_pidslUploadProtocol = a})

-- | Required. The database in which to list sessions.
pidslDatabase :: Lens' ProjectsInstancesDatabasesSessionsList Text
pidslDatabase
  = lens _pidslDatabase
      (\ s a -> s{_pidslDatabase = a})

-- | OAuth access token.
pidslAccessToken :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslAccessToken
  = lens _pidslAccessToken
      (\ s a -> s{_pidslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidslUploadType :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslUploadType
  = lens _pidslUploadType
      (\ s a -> s{_pidslUploadType = a})

-- | An expression for filtering the results of the request. Filter rules are
-- case insensitive. The fields eligible for filtering are: *
-- \`labels.key\` where key is the name of a label Some examples of using
-- filters are: * \`labels.env:*\` --> The session has the label \"env\". *
-- \`labels.env:dev\` --> The session has the label \"env\" and the value
-- of the label contains the string \"dev\".
pidslFilter :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslFilter
  = lens _pidslFilter (\ s a -> s{_pidslFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListSessionsResponse.
pidslPageToken :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslPageToken
  = lens _pidslPageToken
      (\ s a -> s{_pidslPageToken = a})

-- | Number of sessions to be returned in the response. If 0 or less,
-- defaults to the server\'s maximum allowed page size.
pidslPageSize :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Int32)
pidslPageSize
  = lens _pidslPageSize
      (\ s a -> s{_pidslPageSize = a})
      . mapping _Coerce

-- | JSONP
pidslCallback :: Lens' ProjectsInstancesDatabasesSessionsList (Maybe Text)
pidslCallback
  = lens _pidslCallback
      (\ s a -> s{_pidslCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsList
         where
        type Rs ProjectsInstancesDatabasesSessionsList =
             ListSessionsResponse
        type Scopes ProjectsInstancesDatabasesSessionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsList'{..}
          = go _pidslDatabase _pidslXgafv _pidslUploadProtocol
              _pidslAccessToken
              _pidslUploadType
              _pidslFilter
              _pidslPageToken
              _pidslPageSize
              _pidslCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesSessionsListResource)
                      mempty
