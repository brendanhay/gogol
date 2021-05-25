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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about a repo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.patch@.
module Network.Google.Resource.SourceRepo.Projects.Repos.Patch
    (
    -- * REST Resource
      ProjectsReposPatchResource

    -- * Creating a Request
    , projectsReposPatch
    , ProjectsReposPatch

    -- * Request Lenses
    , prpXgafv
    , prpUploadProtocol
    , prpAccessToken
    , prpUploadType
    , prpPayload
    , prpName
    , prpCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.patch@ method which the
-- 'ProjectsReposPatch' request conforms to.
type ProjectsReposPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateRepoRequest :>
                       Patch '[JSON] Repo

-- | Updates information about a repo.
--
-- /See:/ 'projectsReposPatch' smart constructor.
data ProjectsReposPatch =
  ProjectsReposPatch'
    { _prpXgafv :: !(Maybe Xgafv)
    , _prpUploadProtocol :: !(Maybe Text)
    , _prpAccessToken :: !(Maybe Text)
    , _prpUploadType :: !(Maybe Text)
    , _prpPayload :: !UpdateRepoRequest
    , _prpName :: !Text
    , _prpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prpXgafv'
--
-- * 'prpUploadProtocol'
--
-- * 'prpAccessToken'
--
-- * 'prpUploadType'
--
-- * 'prpPayload'
--
-- * 'prpName'
--
-- * 'prpCallback'
projectsReposPatch
    :: UpdateRepoRequest -- ^ 'prpPayload'
    -> Text -- ^ 'prpName'
    -> ProjectsReposPatch
projectsReposPatch pPrpPayload_ pPrpName_ =
  ProjectsReposPatch'
    { _prpXgafv = Nothing
    , _prpUploadProtocol = Nothing
    , _prpAccessToken = Nothing
    , _prpUploadType = Nothing
    , _prpPayload = pPrpPayload_
    , _prpName = pPrpName_
    , _prpCallback = Nothing
    }


-- | V1 error format.
prpXgafv :: Lens' ProjectsReposPatch (Maybe Xgafv)
prpXgafv = lens _prpXgafv (\ s a -> s{_prpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prpUploadProtocol :: Lens' ProjectsReposPatch (Maybe Text)
prpUploadProtocol
  = lens _prpUploadProtocol
      (\ s a -> s{_prpUploadProtocol = a})

-- | OAuth access token.
prpAccessToken :: Lens' ProjectsReposPatch (Maybe Text)
prpAccessToken
  = lens _prpAccessToken
      (\ s a -> s{_prpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prpUploadType :: Lens' ProjectsReposPatch (Maybe Text)
prpUploadType
  = lens _prpUploadType
      (\ s a -> s{_prpUploadType = a})

-- | Multipart request metadata.
prpPayload :: Lens' ProjectsReposPatch UpdateRepoRequest
prpPayload
  = lens _prpPayload (\ s a -> s{_prpPayload = a})

-- | The name of the requested repository. Values are of the form
-- \`projects\/\/repos\/\`.
prpName :: Lens' ProjectsReposPatch Text
prpName = lens _prpName (\ s a -> s{_prpName = a})

-- | JSONP
prpCallback :: Lens' ProjectsReposPatch (Maybe Text)
prpCallback
  = lens _prpCallback (\ s a -> s{_prpCallback = a})

instance GoogleRequest ProjectsReposPatch where
        type Rs ProjectsReposPatch = Repo
        type Scopes ProjectsReposPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsReposPatch'{..}
          = go _prpName _prpXgafv _prpUploadProtocol
              _prpAccessToken
              _prpUploadType
              _prpCallback
              (Just AltJSON)
              _prpPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposPatchResource)
                      mempty
