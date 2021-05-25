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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a repo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.get@.
module Network.Google.Resource.SourceRepo.Projects.Repos.Get
    (
    -- * REST Resource
      ProjectsReposGetResource

    -- * Creating a Request
    , projectsReposGet
    , ProjectsReposGet

    -- * Request Lenses
    , prgXgafv
    , prgUploadProtocol
    , prgAccessToken
    , prgUploadType
    , prgName
    , prgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.get@ method which the
-- 'ProjectsReposGet' request conforms to.
type ProjectsReposGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Repo

-- | Returns information about a repo.
--
-- /See:/ 'projectsReposGet' smart constructor.
data ProjectsReposGet =
  ProjectsReposGet'
    { _prgXgafv :: !(Maybe Xgafv)
    , _prgUploadProtocol :: !(Maybe Text)
    , _prgAccessToken :: !(Maybe Text)
    , _prgUploadType :: !(Maybe Text)
    , _prgName :: !Text
    , _prgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prgXgafv'
--
-- * 'prgUploadProtocol'
--
-- * 'prgAccessToken'
--
-- * 'prgUploadType'
--
-- * 'prgName'
--
-- * 'prgCallback'
projectsReposGet
    :: Text -- ^ 'prgName'
    -> ProjectsReposGet
projectsReposGet pPrgName_ =
  ProjectsReposGet'
    { _prgXgafv = Nothing
    , _prgUploadProtocol = Nothing
    , _prgAccessToken = Nothing
    , _prgUploadType = Nothing
    , _prgName = pPrgName_
    , _prgCallback = Nothing
    }


-- | V1 error format.
prgXgafv :: Lens' ProjectsReposGet (Maybe Xgafv)
prgXgafv = lens _prgXgafv (\ s a -> s{_prgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prgUploadProtocol :: Lens' ProjectsReposGet (Maybe Text)
prgUploadProtocol
  = lens _prgUploadProtocol
      (\ s a -> s{_prgUploadProtocol = a})

-- | OAuth access token.
prgAccessToken :: Lens' ProjectsReposGet (Maybe Text)
prgAccessToken
  = lens _prgAccessToken
      (\ s a -> s{_prgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prgUploadType :: Lens' ProjectsReposGet (Maybe Text)
prgUploadType
  = lens _prgUploadType
      (\ s a -> s{_prgUploadType = a})

-- | The name of the requested repository. Values are of the form
-- \`projects\/\/repos\/\`.
prgName :: Lens' ProjectsReposGet Text
prgName = lens _prgName (\ s a -> s{_prgName = a})

-- | JSONP
prgCallback :: Lens' ProjectsReposGet (Maybe Text)
prgCallback
  = lens _prgCallback (\ s a -> s{_prgCallback = a})

instance GoogleRequest ProjectsReposGet where
        type Rs ProjectsReposGet = Repo
        type Scopes ProjectsReposGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control",
               "https://www.googleapis.com/auth/source.read_only",
               "https://www.googleapis.com/auth/source.read_write"]
        requestClient ProjectsReposGet'{..}
          = go _prgName _prgXgafv _prgUploadProtocol
              _prgAccessToken
              _prgUploadType
              _prgCallback
              (Just AltJSON)
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposGetResource)
                      mempty
