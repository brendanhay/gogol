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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all repos belonging to a project. The sizes of the repos are not
-- set by ListRepos. To get the size of a repo, use GetRepo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.list@.
module Network.Google.Resource.SourceRepo.Projects.Repos.List
    (
    -- * REST Resource
      ProjectsReposListResource

    -- * Creating a Request
    , projectsReposList
    , ProjectsReposList

    -- * Request Lenses
    , prlXgafv
    , prlUploadProtocol
    , prlAccessToken
    , prlUploadType
    , prlName
    , prlPageToken
    , prlPageSize
    , prlCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.list@ method which the
-- 'ProjectsReposList' request conforms to.
type ProjectsReposListResource =
     "v1" :>
       Capture "name" Text :>
         "repos" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListReposResponse

-- | Returns all repos belonging to a project. The sizes of the repos are not
-- set by ListRepos. To get the size of a repo, use GetRepo.
--
-- /See:/ 'projectsReposList' smart constructor.
data ProjectsReposList =
  ProjectsReposList'
    { _prlXgafv :: !(Maybe Xgafv)
    , _prlUploadProtocol :: !(Maybe Text)
    , _prlAccessToken :: !(Maybe Text)
    , _prlUploadType :: !(Maybe Text)
    , _prlName :: !Text
    , _prlPageToken :: !(Maybe Text)
    , _prlPageSize :: !(Maybe (Textual Int32))
    , _prlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlXgafv'
--
-- * 'prlUploadProtocol'
--
-- * 'prlAccessToken'
--
-- * 'prlUploadType'
--
-- * 'prlName'
--
-- * 'prlPageToken'
--
-- * 'prlPageSize'
--
-- * 'prlCallback'
projectsReposList
    :: Text -- ^ 'prlName'
    -> ProjectsReposList
projectsReposList pPrlName_ =
  ProjectsReposList'
    { _prlXgafv = Nothing
    , _prlUploadProtocol = Nothing
    , _prlAccessToken = Nothing
    , _prlUploadType = Nothing
    , _prlName = pPrlName_
    , _prlPageToken = Nothing
    , _prlPageSize = Nothing
    , _prlCallback = Nothing
    }


-- | V1 error format.
prlXgafv :: Lens' ProjectsReposList (Maybe Xgafv)
prlXgafv = lens _prlXgafv (\ s a -> s{_prlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prlUploadProtocol :: Lens' ProjectsReposList (Maybe Text)
prlUploadProtocol
  = lens _prlUploadProtocol
      (\ s a -> s{_prlUploadProtocol = a})

-- | OAuth access token.
prlAccessToken :: Lens' ProjectsReposList (Maybe Text)
prlAccessToken
  = lens _prlAccessToken
      (\ s a -> s{_prlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prlUploadType :: Lens' ProjectsReposList (Maybe Text)
prlUploadType
  = lens _prlUploadType
      (\ s a -> s{_prlUploadType = a})

-- | The project ID whose repos should be listed. Values are of the form
-- \`projects\/\`.
prlName :: Lens' ProjectsReposList Text
prlName = lens _prlName (\ s a -> s{_prlName = a})

-- | Resume listing repositories where a prior ListReposResponse left off.
-- This is an opaque token that must be obtained from a recent, prior
-- ListReposResponse\'s next_page_token field.
prlPageToken :: Lens' ProjectsReposList (Maybe Text)
prlPageToken
  = lens _prlPageToken (\ s a -> s{_prlPageToken = a})

-- | Maximum number of repositories to return; between 1 and 500. If not set
-- or zero, defaults to 100 at the server.
prlPageSize :: Lens' ProjectsReposList (Maybe Int32)
prlPageSize
  = lens _prlPageSize (\ s a -> s{_prlPageSize = a}) .
      mapping _Coerce

-- | JSONP
prlCallback :: Lens' ProjectsReposList (Maybe Text)
prlCallback
  = lens _prlCallback (\ s a -> s{_prlCallback = a})

instance GoogleRequest ProjectsReposList where
        type Rs ProjectsReposList = ListReposResponse
        type Scopes ProjectsReposList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control",
               "https://www.googleapis.com/auth/source.read_only",
               "https://www.googleapis.com/auth/source.read_write"]
        requestClient ProjectsReposList'{..}
          = go _prlName _prlXgafv _prlUploadProtocol
              _prlAccessToken
              _prlUploadType
              _prlPageToken
              _prlPageSize
              _prlCallback
              (Just AltJSON)
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposListResource)
                      mempty
