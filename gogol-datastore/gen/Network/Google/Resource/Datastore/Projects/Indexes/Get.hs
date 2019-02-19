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
-- Module      : Network.Google.Resource.Datastore.Projects.Indexes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an index.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.get@.
module Network.Google.Resource.Datastore.Projects.Indexes.Get
    (
    -- * REST Resource
      ProjectsIndexesGetResource

    -- * Creating a Request
    , projectsIndexesGet
    , ProjectsIndexesGet

    -- * Request Lenses
    , pigXgafv
    , pigUploadProtocol
    , pigAccessToken
    , pigUploadType
    , pigProjectId
    , pigIndexId
    , pigCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.indexes.get@ method which the
-- 'ProjectsIndexesGet' request conforms to.
type ProjectsIndexesGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "indexes" :>
             Capture "indexId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] GoogleDatastoreAdminV1Index

-- | Gets an index.
--
-- /See:/ 'projectsIndexesGet' smart constructor.
data ProjectsIndexesGet =
  ProjectsIndexesGet'
    { _pigXgafv          :: !(Maybe Xgafv)
    , _pigUploadProtocol :: !(Maybe Text)
    , _pigAccessToken    :: !(Maybe Text)
    , _pigUploadType     :: !(Maybe Text)
    , _pigProjectId      :: !Text
    , _pigIndexId        :: !Text
    , _pigCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIndexesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigXgafv'
--
-- * 'pigUploadProtocol'
--
-- * 'pigAccessToken'
--
-- * 'pigUploadType'
--
-- * 'pigProjectId'
--
-- * 'pigIndexId'
--
-- * 'pigCallback'
projectsIndexesGet
    :: Text -- ^ 'pigProjectId'
    -> Text -- ^ 'pigIndexId'
    -> ProjectsIndexesGet
projectsIndexesGet pPigProjectId_ pPigIndexId_ =
  ProjectsIndexesGet'
    { _pigXgafv = Nothing
    , _pigUploadProtocol = Nothing
    , _pigAccessToken = Nothing
    , _pigUploadType = Nothing
    , _pigProjectId = pPigProjectId_
    , _pigIndexId = pPigIndexId_
    , _pigCallback = Nothing
    }

-- | V1 error format.
pigXgafv :: Lens' ProjectsIndexesGet (Maybe Xgafv)
pigXgafv = lens _pigXgafv (\ s a -> s{_pigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pigUploadProtocol :: Lens' ProjectsIndexesGet (Maybe Text)
pigUploadProtocol
  = lens _pigUploadProtocol
      (\ s a -> s{_pigUploadProtocol = a})

-- | OAuth access token.
pigAccessToken :: Lens' ProjectsIndexesGet (Maybe Text)
pigAccessToken
  = lens _pigAccessToken
      (\ s a -> s{_pigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pigUploadType :: Lens' ProjectsIndexesGet (Maybe Text)
pigUploadType
  = lens _pigUploadType
      (\ s a -> s{_pigUploadType = a})

-- | Project ID against which to make the request.
pigProjectId :: Lens' ProjectsIndexesGet Text
pigProjectId
  = lens _pigProjectId (\ s a -> s{_pigProjectId = a})

-- | The resource ID of the index to get.
pigIndexId :: Lens' ProjectsIndexesGet Text
pigIndexId
  = lens _pigIndexId (\ s a -> s{_pigIndexId = a})

-- | JSONP
pigCallback :: Lens' ProjectsIndexesGet (Maybe Text)
pigCallback
  = lens _pigCallback (\ s a -> s{_pigCallback = a})

instance GoogleRequest ProjectsIndexesGet where
        type Rs ProjectsIndexesGet =
             GoogleDatastoreAdminV1Index
        type Scopes ProjectsIndexesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsIndexesGet'{..}
          = go _pigProjectId _pigIndexId _pigXgafv
              _pigUploadProtocol
              _pigAccessToken
              _pigUploadType
              _pigCallback
              (Just AltJSON)
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIndexesGetResource)
                      mempty
