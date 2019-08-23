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
-- Module      : Network.Google.Resource.Storage.Projects.HmacKeys.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an HMAC key.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.delete@.
module Network.Google.Resource.Storage.Projects.HmacKeys.Delete
    (
    -- * REST Resource
      ProjectsHmacKeysDeleteResource

    -- * Creating a Request
    , projectsHmacKeysDelete
    , ProjectsHmacKeysDelete

    -- * Request Lenses
    , phkdProjectId
    , phkdAccessId
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.delete@ method which the
-- 'ProjectsHmacKeysDelete' request conforms to.
type ProjectsHmacKeysDeleteResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "hmacKeys" :>
               Capture "accessId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an HMAC key.
--
-- /See:/ 'projectsHmacKeysDelete' smart constructor.
data ProjectsHmacKeysDelete =
  ProjectsHmacKeysDelete'
    { _phkdProjectId :: !Text
    , _phkdAccessId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHmacKeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phkdProjectId'
--
-- * 'phkdAccessId'
projectsHmacKeysDelete
    :: Text -- ^ 'phkdProjectId'
    -> Text -- ^ 'phkdAccessId'
    -> ProjectsHmacKeysDelete
projectsHmacKeysDelete pPhkdProjectId_ pPhkdAccessId_ =
  ProjectsHmacKeysDelete'
    {_phkdProjectId = pPhkdProjectId_, _phkdAccessId = pPhkdAccessId_}


-- | Project ID owning the requested key
phkdProjectId :: Lens' ProjectsHmacKeysDelete Text
phkdProjectId
  = lens _phkdProjectId
      (\ s a -> s{_phkdProjectId = a})

-- | Name of the HMAC key to be deleted.
phkdAccessId :: Lens' ProjectsHmacKeysDelete Text
phkdAccessId
  = lens _phkdAccessId (\ s a -> s{_phkdAccessId = a})

instance GoogleRequest ProjectsHmacKeysDelete where
        type Rs ProjectsHmacKeysDelete = ()
        type Scopes ProjectsHmacKeysDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ProjectsHmacKeysDelete'{..}
          = go _phkdProjectId _phkdAccessId (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHmacKeysDeleteResource)
                      mempty
