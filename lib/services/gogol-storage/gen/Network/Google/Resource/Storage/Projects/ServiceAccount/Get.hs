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
-- Module      : Network.Google.Resource.Storage.Projects.ServiceAccount.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the email address of this project\'s Google Cloud Storage service
-- account.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.serviceAccount.get@.
module Network.Google.Resource.Storage.Projects.ServiceAccount.Get
    (
    -- * REST Resource
      ProjectsServiceAccountGetResource

    -- * Creating a Request
    , projectsServiceAccountGet
    , ProjectsServiceAccountGet

    -- * Request Lenses
    , psagUserProject
    , psagProvisionalUserProject
    , psagProjectId
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.projects.serviceAccount.get@ method which the
-- 'ProjectsServiceAccountGet' request conforms to.
type ProjectsServiceAccountGetResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "serviceAccount" :>
               QueryParam "userProject" Text :>
                 QueryParam "provisionalUserProject" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ServiceAccount

-- | Get the email address of this project\'s Google Cloud Storage service
-- account.
--
-- /See:/ 'projectsServiceAccountGet' smart constructor.
data ProjectsServiceAccountGet =
  ProjectsServiceAccountGet'
    { _psagUserProject :: !(Maybe Text)
    , _psagProvisionalUserProject :: !(Maybe Text)
    , _psagProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagUserProject'
--
-- * 'psagProvisionalUserProject'
--
-- * 'psagProjectId'
projectsServiceAccountGet
    :: Text -- ^ 'psagProjectId'
    -> ProjectsServiceAccountGet
projectsServiceAccountGet pPsagProjectId_ =
  ProjectsServiceAccountGet'
    { _psagUserProject = Nothing
    , _psagProvisionalUserProject = Nothing
    , _psagProjectId = pPsagProjectId_
    }


-- | The project to be billed for this request.
psagUserProject :: Lens' ProjectsServiceAccountGet (Maybe Text)
psagUserProject
  = lens _psagUserProject
      (\ s a -> s{_psagUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
psagProvisionalUserProject :: Lens' ProjectsServiceAccountGet (Maybe Text)
psagProvisionalUserProject
  = lens _psagProvisionalUserProject
      (\ s a -> s{_psagProvisionalUserProject = a})

-- | Project ID
psagProjectId :: Lens' ProjectsServiceAccountGet Text
psagProjectId
  = lens _psagProjectId
      (\ s a -> s{_psagProjectId = a})

instance GoogleRequest ProjectsServiceAccountGet
         where
        type Rs ProjectsServiceAccountGet = ServiceAccount
        type Scopes ProjectsServiceAccountGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ProjectsServiceAccountGet'{..}
          = go _psagProjectId _psagUserProject
              _psagProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServiceAccountGetResource)
                      mempty
