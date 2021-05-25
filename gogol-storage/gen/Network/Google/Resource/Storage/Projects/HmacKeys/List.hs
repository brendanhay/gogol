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
-- Module      : Network.Google.Resource.Storage.Projects.HmacKeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of HMAC keys matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.list@.
module Network.Google.Resource.Storage.Projects.HmacKeys.List
    (
    -- * REST Resource
      ProjectsHmacKeysListResource

    -- * Creating a Request
    , projectsHmacKeysList
    , ProjectsHmacKeysList

    -- * Request Lenses
    , phklShowDeletedKeys
    , phklUserProject
    , phklServiceAccountEmail
    , phklPageToken
    , phklProjectId
    , phklMaxResults
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.list@ method which the
-- 'ProjectsHmacKeysList' request conforms to.
type ProjectsHmacKeysListResource =
     "storage" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "hmacKeys" :>
               QueryParam "showDeletedKeys" Bool :>
                 QueryParam "userProject" Text :>
                   QueryParam "serviceAccountEmail" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HmacKeysMetadata

-- | Retrieves a list of HMAC keys matching the criteria.
--
-- /See:/ 'projectsHmacKeysList' smart constructor.
data ProjectsHmacKeysList =
  ProjectsHmacKeysList'
    { _phklShowDeletedKeys :: !(Maybe Bool)
    , _phklUserProject :: !(Maybe Text)
    , _phklServiceAccountEmail :: !(Maybe Text)
    , _phklPageToken :: !(Maybe Text)
    , _phklProjectId :: !Text
    , _phklMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHmacKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phklShowDeletedKeys'
--
-- * 'phklUserProject'
--
-- * 'phklServiceAccountEmail'
--
-- * 'phklPageToken'
--
-- * 'phklProjectId'
--
-- * 'phklMaxResults'
projectsHmacKeysList
    :: Text -- ^ 'phklProjectId'
    -> ProjectsHmacKeysList
projectsHmacKeysList pPhklProjectId_ =
  ProjectsHmacKeysList'
    { _phklShowDeletedKeys = Nothing
    , _phklUserProject = Nothing
    , _phklServiceAccountEmail = Nothing
    , _phklPageToken = Nothing
    , _phklProjectId = pPhklProjectId_
    , _phklMaxResults = 250
    }


-- | Whether or not to show keys in the DELETED state.
phklShowDeletedKeys :: Lens' ProjectsHmacKeysList (Maybe Bool)
phklShowDeletedKeys
  = lens _phklShowDeletedKeys
      (\ s a -> s{_phklShowDeletedKeys = a})

-- | The project to be billed for this request.
phklUserProject :: Lens' ProjectsHmacKeysList (Maybe Text)
phklUserProject
  = lens _phklUserProject
      (\ s a -> s{_phklUserProject = a})

-- | If present, only keys for the given service account are returned.
phklServiceAccountEmail :: Lens' ProjectsHmacKeysList (Maybe Text)
phklServiceAccountEmail
  = lens _phklServiceAccountEmail
      (\ s a -> s{_phklServiceAccountEmail = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
phklPageToken :: Lens' ProjectsHmacKeysList (Maybe Text)
phklPageToken
  = lens _phklPageToken
      (\ s a -> s{_phklPageToken = a})

-- | Name of the project in which to look for HMAC keys.
phklProjectId :: Lens' ProjectsHmacKeysList Text
phklProjectId
  = lens _phklProjectId
      (\ s a -> s{_phklProjectId = a})

-- | Maximum number of items to return in a single page of responses. The
-- service uses this parameter or 250 items, whichever is smaller. The max
-- number of items per page will also be limited by the number of distinct
-- service accounts in the response. If the number of service accounts in a
-- single response is too high, the page will truncated and a next page
-- token will be returned.
phklMaxResults :: Lens' ProjectsHmacKeysList Word32
phklMaxResults
  = lens _phklMaxResults
      (\ s a -> s{_phklMaxResults = a})
      . _Coerce

instance GoogleRequest ProjectsHmacKeysList where
        type Rs ProjectsHmacKeysList = HmacKeysMetadata
        type Scopes ProjectsHmacKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only"]
        requestClient ProjectsHmacKeysList'{..}
          = go _phklProjectId _phklShowDeletedKeys
              _phklUserProject
              _phklServiceAccountEmail
              _phklPageToken
              (Just _phklMaxResults)
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHmacKeysListResource)
                      mempty
