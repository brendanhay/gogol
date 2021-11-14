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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a repo in the given project with the given name. If the named
-- repository already exists, \`CreateRepo\` returns \`ALREADY_EXISTS\`.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.create@.
module Network.Google.Resource.SourceRepo.Projects.Repos.Create
    (
    -- * REST Resource
      ProjectsReposCreateResource

    -- * Creating a Request
    , projectsReposCreate
    , ProjectsReposCreate

    -- * Request Lenses
    , prcParent
    , prcXgafv
    , prcUploadProtocol
    , prcAccessToken
    , prcUploadType
    , prcPayload
    , prcCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.create@ method which the
-- 'ProjectsReposCreate' request conforms to.
type ProjectsReposCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "repos" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Repo :> Post '[JSON] Repo

-- | Creates a repo in the given project with the given name. If the named
-- repository already exists, \`CreateRepo\` returns \`ALREADY_EXISTS\`.
--
-- /See:/ 'projectsReposCreate' smart constructor.
data ProjectsReposCreate =
  ProjectsReposCreate'
    { _prcParent :: !Text
    , _prcXgafv :: !(Maybe Xgafv)
    , _prcUploadProtocol :: !(Maybe Text)
    , _prcAccessToken :: !(Maybe Text)
    , _prcUploadType :: !(Maybe Text)
    , _prcPayload :: !Repo
    , _prcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcParent'
--
-- * 'prcXgafv'
--
-- * 'prcUploadProtocol'
--
-- * 'prcAccessToken'
--
-- * 'prcUploadType'
--
-- * 'prcPayload'
--
-- * 'prcCallback'
projectsReposCreate
    :: Text -- ^ 'prcParent'
    -> Repo -- ^ 'prcPayload'
    -> ProjectsReposCreate
projectsReposCreate pPrcParent_ pPrcPayload_ =
  ProjectsReposCreate'
    { _prcParent = pPrcParent_
    , _prcXgafv = Nothing
    , _prcUploadProtocol = Nothing
    , _prcAccessToken = Nothing
    , _prcUploadType = Nothing
    , _prcPayload = pPrcPayload_
    , _prcCallback = Nothing
    }


-- | The project in which to create the repo. Values are of the form
-- \`projects\/\`.
prcParent :: Lens' ProjectsReposCreate Text
prcParent
  = lens _prcParent (\ s a -> s{_prcParent = a})

-- | V1 error format.
prcXgafv :: Lens' ProjectsReposCreate (Maybe Xgafv)
prcXgafv = lens _prcXgafv (\ s a -> s{_prcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcUploadProtocol :: Lens' ProjectsReposCreate (Maybe Text)
prcUploadProtocol
  = lens _prcUploadProtocol
      (\ s a -> s{_prcUploadProtocol = a})

-- | OAuth access token.
prcAccessToken :: Lens' ProjectsReposCreate (Maybe Text)
prcAccessToken
  = lens _prcAccessToken
      (\ s a -> s{_prcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcUploadType :: Lens' ProjectsReposCreate (Maybe Text)
prcUploadType
  = lens _prcUploadType
      (\ s a -> s{_prcUploadType = a})

-- | Multipart request metadata.
prcPayload :: Lens' ProjectsReposCreate Repo
prcPayload
  = lens _prcPayload (\ s a -> s{_prcPayload = a})

-- | JSONP
prcCallback :: Lens' ProjectsReposCreate (Maybe Text)
prcCallback
  = lens _prcCallback (\ s a -> s{_prcCallback = a})

instance GoogleRequest ProjectsReposCreate where
        type Rs ProjectsReposCreate = Repo
        type Scopes ProjectsReposCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control"]
        requestClient ProjectsReposCreate'{..}
          = go _prcParent _prcXgafv _prcUploadProtocol
              _prcAccessToken
              _prcUploadType
              _prcCallback
              (Just AltJSON)
              _prcPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposCreateResource)
                      mempty
