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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a repo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.delete@.
module Network.Google.Resource.SourceRepo.Projects.Repos.Delete
    (
    -- * REST Resource
      ProjectsReposDeleteResource

    -- * Creating a Request
    , projectsReposDelete
    , ProjectsReposDelete

    -- * Request Lenses
    , prdXgafv
    , prdUploadProtocol
    , prdAccessToken
    , prdUploadType
    , prdName
    , prdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.delete@ method which the
-- 'ProjectsReposDelete' request conforms to.
type ProjectsReposDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a repo.
--
-- /See:/ 'projectsReposDelete' smart constructor.
data ProjectsReposDelete = ProjectsReposDelete'
    { _prdXgafv          :: !(Maybe Xgafv)
    , _prdUploadProtocol :: !(Maybe Text)
    , _prdAccessToken    :: !(Maybe Text)
    , _prdUploadType     :: !(Maybe Text)
    , _prdName           :: !Text
    , _prdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsReposDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdXgafv'
--
-- * 'prdUploadProtocol'
--
-- * 'prdAccessToken'
--
-- * 'prdUploadType'
--
-- * 'prdName'
--
-- * 'prdCallback'
projectsReposDelete
    :: Text -- ^ 'prdName'
    -> ProjectsReposDelete
projectsReposDelete pPrdName_ =
    ProjectsReposDelete'
    { _prdXgafv = Nothing
    , _prdUploadProtocol = Nothing
    , _prdAccessToken = Nothing
    , _prdUploadType = Nothing
    , _prdName = pPrdName_
    , _prdCallback = Nothing
    }

-- | V1 error format.
prdXgafv :: Lens' ProjectsReposDelete (Maybe Xgafv)
prdXgafv = lens _prdXgafv (\ s a -> s{_prdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prdUploadProtocol :: Lens' ProjectsReposDelete (Maybe Text)
prdUploadProtocol
  = lens _prdUploadProtocol
      (\ s a -> s{_prdUploadProtocol = a})

-- | OAuth access token.
prdAccessToken :: Lens' ProjectsReposDelete (Maybe Text)
prdAccessToken
  = lens _prdAccessToken
      (\ s a -> s{_prdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prdUploadType :: Lens' ProjectsReposDelete (Maybe Text)
prdUploadType
  = lens _prdUploadType
      (\ s a -> s{_prdUploadType = a})

-- | The name of the repo to delete. Values are of the form
-- \`projects\/\/repos\/\`.
prdName :: Lens' ProjectsReposDelete Text
prdName = lens _prdName (\ s a -> s{_prdName = a})

-- | JSONP
prdCallback :: Lens' ProjectsReposDelete (Maybe Text)
prdCallback
  = lens _prdCallback (\ s a -> s{_prdCallback = a})

instance GoogleRequest ProjectsReposDelete where
        type Rs ProjectsReposDelete = Empty
        type Scopes ProjectsReposDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control"]
        requestClient ProjectsReposDelete'{..}
          = go _prdName _prdXgafv _prdUploadProtocol
              _prdAccessToken
              _prdUploadType
              _prdCallback
              (Just AltJSON)
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposDeleteResource)
                      mempty
