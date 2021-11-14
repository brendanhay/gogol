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
-- Module      : Network.Google.Resource.Storage.Projects.HmacKeys.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an HMAC key\'s metadata
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.get@.
module Network.Google.Resource.Storage.Projects.HmacKeys.Get
    (
    -- * REST Resource
      ProjectsHmacKeysGetResource

    -- * Creating a Request
    , projectsHmacKeysGet
    , ProjectsHmacKeysGet

    -- * Request Lenses
    , phkgUserProject
    , phkgProjectId
    , phkgAccessId
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.get@ method which the
-- 'ProjectsHmacKeysGet' request conforms to.
type ProjectsHmacKeysGetResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "hmacKeys" :>
               Capture "accessId" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] HmacKeyMetadata

-- | Retrieves an HMAC key\'s metadata
--
-- /See:/ 'projectsHmacKeysGet' smart constructor.
data ProjectsHmacKeysGet =
  ProjectsHmacKeysGet'
    { _phkgUserProject :: !(Maybe Text)
    , _phkgProjectId :: !Text
    , _phkgAccessId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHmacKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phkgUserProject'
--
-- * 'phkgProjectId'
--
-- * 'phkgAccessId'
projectsHmacKeysGet
    :: Text -- ^ 'phkgProjectId'
    -> Text -- ^ 'phkgAccessId'
    -> ProjectsHmacKeysGet
projectsHmacKeysGet pPhkgProjectId_ pPhkgAccessId_ =
  ProjectsHmacKeysGet'
    { _phkgUserProject = Nothing
    , _phkgProjectId = pPhkgProjectId_
    , _phkgAccessId = pPhkgAccessId_
    }


-- | The project to be billed for this request.
phkgUserProject :: Lens' ProjectsHmacKeysGet (Maybe Text)
phkgUserProject
  = lens _phkgUserProject
      (\ s a -> s{_phkgUserProject = a})

-- | Project ID owning the service account of the requested key.
phkgProjectId :: Lens' ProjectsHmacKeysGet Text
phkgProjectId
  = lens _phkgProjectId
      (\ s a -> s{_phkgProjectId = a})

-- | Name of the HMAC key.
phkgAccessId :: Lens' ProjectsHmacKeysGet Text
phkgAccessId
  = lens _phkgAccessId (\ s a -> s{_phkgAccessId = a})

instance GoogleRequest ProjectsHmacKeysGet where
        type Rs ProjectsHmacKeysGet = HmacKeyMetadata
        type Scopes ProjectsHmacKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only"]
        requestClient ProjectsHmacKeysGet'{..}
          = go _phkgProjectId _phkgAccessId _phkgUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHmacKeysGetResource)
                      mempty
