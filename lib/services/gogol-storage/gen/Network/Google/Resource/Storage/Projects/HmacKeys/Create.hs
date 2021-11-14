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
-- Module      : Network.Google.Resource.Storage.Projects.HmacKeys.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new HMAC key for the specified service account.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.create@.
module Network.Google.Resource.Storage.Projects.HmacKeys.Create
    (
    -- * REST Resource
      ProjectsHmacKeysCreateResource

    -- * Creating a Request
    , projectsHmacKeysCreate
    , ProjectsHmacKeysCreate

    -- * Request Lenses
    , phkcUserProject
    , phkcServiceAccountEmail
    , phkcProjectId
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.create@ method which the
-- 'ProjectsHmacKeysCreate' request conforms to.
type ProjectsHmacKeysCreateResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "hmacKeys" :>
               QueryParam "serviceAccountEmail" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] HmacKey

-- | Creates a new HMAC key for the specified service account.
--
-- /See:/ 'projectsHmacKeysCreate' smart constructor.
data ProjectsHmacKeysCreate =
  ProjectsHmacKeysCreate'
    { _phkcUserProject :: !(Maybe Text)
    , _phkcServiceAccountEmail :: !Text
    , _phkcProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHmacKeysCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phkcUserProject'
--
-- * 'phkcServiceAccountEmail'
--
-- * 'phkcProjectId'
projectsHmacKeysCreate
    :: Text -- ^ 'phkcServiceAccountEmail'
    -> Text -- ^ 'phkcProjectId'
    -> ProjectsHmacKeysCreate
projectsHmacKeysCreate pPhkcServiceAccountEmail_ pPhkcProjectId_ =
  ProjectsHmacKeysCreate'
    { _phkcUserProject = Nothing
    , _phkcServiceAccountEmail = pPhkcServiceAccountEmail_
    , _phkcProjectId = pPhkcProjectId_
    }


-- | The project to be billed for this request.
phkcUserProject :: Lens' ProjectsHmacKeysCreate (Maybe Text)
phkcUserProject
  = lens _phkcUserProject
      (\ s a -> s{_phkcUserProject = a})

-- | Email address of the service account.
phkcServiceAccountEmail :: Lens' ProjectsHmacKeysCreate Text
phkcServiceAccountEmail
  = lens _phkcServiceAccountEmail
      (\ s a -> s{_phkcServiceAccountEmail = a})

-- | Project ID owning the service account.
phkcProjectId :: Lens' ProjectsHmacKeysCreate Text
phkcProjectId
  = lens _phkcProjectId
      (\ s a -> s{_phkcProjectId = a})

instance GoogleRequest ProjectsHmacKeysCreate where
        type Rs ProjectsHmacKeysCreate = HmacKey
        type Scopes ProjectsHmacKeysCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ProjectsHmacKeysCreate'{..}
          = go _phkcProjectId (Just _phkcServiceAccountEmail)
              _phkcUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHmacKeysCreateResource)
                      mempty
