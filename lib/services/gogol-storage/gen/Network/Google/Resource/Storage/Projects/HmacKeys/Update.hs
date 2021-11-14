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
-- Module      : Network.Google.Resource.Storage.Projects.HmacKeys.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of an HMAC key. See the HMAC Key resource descriptor
-- for valid states.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.update@.
module Network.Google.Resource.Storage.Projects.HmacKeys.Update
    (
    -- * REST Resource
      ProjectsHmacKeysUpdateResource

    -- * Creating a Request
    , projectsHmacKeysUpdate
    , ProjectsHmacKeysUpdate

    -- * Request Lenses
    , phkuPayload
    , phkuUserProject
    , phkuProjectId
    , phkuAccessId
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.update@ method which the
-- 'ProjectsHmacKeysUpdate' request conforms to.
type ProjectsHmacKeysUpdateResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "hmacKeys" :>
               Capture "accessId" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HmacKeyMetadata :>
                       Put '[JSON] HmacKeyMetadata

-- | Updates the state of an HMAC key. See the HMAC Key resource descriptor
-- for valid states.
--
-- /See:/ 'projectsHmacKeysUpdate' smart constructor.
data ProjectsHmacKeysUpdate =
  ProjectsHmacKeysUpdate'
    { _phkuPayload :: !HmacKeyMetadata
    , _phkuUserProject :: !(Maybe Text)
    , _phkuProjectId :: !Text
    , _phkuAccessId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHmacKeysUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phkuPayload'
--
-- * 'phkuUserProject'
--
-- * 'phkuProjectId'
--
-- * 'phkuAccessId'
projectsHmacKeysUpdate
    :: HmacKeyMetadata -- ^ 'phkuPayload'
    -> Text -- ^ 'phkuProjectId'
    -> Text -- ^ 'phkuAccessId'
    -> ProjectsHmacKeysUpdate
projectsHmacKeysUpdate pPhkuPayload_ pPhkuProjectId_ pPhkuAccessId_ =
  ProjectsHmacKeysUpdate'
    { _phkuPayload = pPhkuPayload_
    , _phkuUserProject = Nothing
    , _phkuProjectId = pPhkuProjectId_
    , _phkuAccessId = pPhkuAccessId_
    }


-- | Multipart request metadata.
phkuPayload :: Lens' ProjectsHmacKeysUpdate HmacKeyMetadata
phkuPayload
  = lens _phkuPayload (\ s a -> s{_phkuPayload = a})

-- | The project to be billed for this request.
phkuUserProject :: Lens' ProjectsHmacKeysUpdate (Maybe Text)
phkuUserProject
  = lens _phkuUserProject
      (\ s a -> s{_phkuUserProject = a})

-- | Project ID owning the service account of the updated key.
phkuProjectId :: Lens' ProjectsHmacKeysUpdate Text
phkuProjectId
  = lens _phkuProjectId
      (\ s a -> s{_phkuProjectId = a})

-- | Name of the HMAC key being updated.
phkuAccessId :: Lens' ProjectsHmacKeysUpdate Text
phkuAccessId
  = lens _phkuAccessId (\ s a -> s{_phkuAccessId = a})

instance GoogleRequest ProjectsHmacKeysUpdate where
        type Rs ProjectsHmacKeysUpdate = HmacKeyMetadata
        type Scopes ProjectsHmacKeysUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient ProjectsHmacKeysUpdate'{..}
          = go _phkuProjectId _phkuAccessId _phkuUserProject
              (Just AltJSON)
              _phkuPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHmacKeysUpdateResource)
                      mempty
