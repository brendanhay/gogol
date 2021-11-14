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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.Sync
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synchronize a connected repo. The response contains SyncRepoMetadata in
-- the metadata field.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.sync@.
module Network.Google.Resource.SourceRepo.Projects.Repos.Sync
    (
    -- * REST Resource
      ProjectsReposSyncResource

    -- * Creating a Request
    , projectsReposSync
    , ProjectsReposSync

    -- * Request Lenses
    , prsXgafv
    , prsUploadProtocol
    , prsAccessToken
    , prsUploadType
    , prsPayload
    , prsName
    , prsCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.sync@ method which the
-- 'ProjectsReposSync' request conforms to.
type ProjectsReposSyncResource =
     "v1" :>
       CaptureMode "name" "sync" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SyncRepoRequest :>
                       Post '[JSON] Operation

-- | Synchronize a connected repo. The response contains SyncRepoMetadata in
-- the metadata field.
--
-- /See:/ 'projectsReposSync' smart constructor.
data ProjectsReposSync =
  ProjectsReposSync'
    { _prsXgafv :: !(Maybe Xgafv)
    , _prsUploadProtocol :: !(Maybe Text)
    , _prsAccessToken :: !(Maybe Text)
    , _prsUploadType :: !(Maybe Text)
    , _prsPayload :: !SyncRepoRequest
    , _prsName :: !Text
    , _prsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prsXgafv'
--
-- * 'prsUploadProtocol'
--
-- * 'prsAccessToken'
--
-- * 'prsUploadType'
--
-- * 'prsPayload'
--
-- * 'prsName'
--
-- * 'prsCallback'
projectsReposSync
    :: SyncRepoRequest -- ^ 'prsPayload'
    -> Text -- ^ 'prsName'
    -> ProjectsReposSync
projectsReposSync pPrsPayload_ pPrsName_ =
  ProjectsReposSync'
    { _prsXgafv = Nothing
    , _prsUploadProtocol = Nothing
    , _prsAccessToken = Nothing
    , _prsUploadType = Nothing
    , _prsPayload = pPrsPayload_
    , _prsName = pPrsName_
    , _prsCallback = Nothing
    }


-- | V1 error format.
prsXgafv :: Lens' ProjectsReposSync (Maybe Xgafv)
prsXgafv = lens _prsXgafv (\ s a -> s{_prsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prsUploadProtocol :: Lens' ProjectsReposSync (Maybe Text)
prsUploadProtocol
  = lens _prsUploadProtocol
      (\ s a -> s{_prsUploadProtocol = a})

-- | OAuth access token.
prsAccessToken :: Lens' ProjectsReposSync (Maybe Text)
prsAccessToken
  = lens _prsAccessToken
      (\ s a -> s{_prsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prsUploadType :: Lens' ProjectsReposSync (Maybe Text)
prsUploadType
  = lens _prsUploadType
      (\ s a -> s{_prsUploadType = a})

-- | Multipart request metadata.
prsPayload :: Lens' ProjectsReposSync SyncRepoRequest
prsPayload
  = lens _prsPayload (\ s a -> s{_prsPayload = a})

-- | The name of the repo to synchronize. Values are of the form
-- \`projects\/\/repos\/\`.
prsName :: Lens' ProjectsReposSync Text
prsName = lens _prsName (\ s a -> s{_prsName = a})

-- | JSONP
prsCallback :: Lens' ProjectsReposSync (Maybe Text)
prsCallback
  = lens _prsCallback (\ s a -> s{_prsCallback = a})

instance GoogleRequest ProjectsReposSync where
        type Rs ProjectsReposSync = Operation
        type Scopes ProjectsReposSync =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsReposSync'{..}
          = go _prsName _prsXgafv _prsUploadProtocol
              _prsAccessToken
              _prsUploadType
              _prsCallback
              (Just AltJSON)
              _prsPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposSyncResource)
                      mempty
