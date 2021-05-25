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
-- Module      : Network.Google.Resource.Datastore.Projects.AllocateIds
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allocates IDs for the given keys, which is useful for referencing an
-- entity before it is inserted.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.allocateIds@.
module Network.Google.Resource.Datastore.Projects.AllocateIds
    (
    -- * REST Resource
      ProjectsAllocateIdsResource

    -- * Creating a Request
    , projectsAllocateIds
    , ProjectsAllocateIds

    -- * Request Lenses
    , paiXgafv
    , paiUploadProtocol
    , paiAccessToken
    , paiUploadType
    , paiPayload
    , paiProjectId
    , paiCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.allocateIds@ method which the
-- 'ProjectsAllocateIds' request conforms to.
type ProjectsAllocateIdsResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "allocateIds" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AllocateIdsRequest :>
                         Post '[JSON] AllocateIdsResponse

-- | Allocates IDs for the given keys, which is useful for referencing an
-- entity before it is inserted.
--
-- /See:/ 'projectsAllocateIds' smart constructor.
data ProjectsAllocateIds =
  ProjectsAllocateIds'
    { _paiXgafv :: !(Maybe Xgafv)
    , _paiUploadProtocol :: !(Maybe Text)
    , _paiAccessToken :: !(Maybe Text)
    , _paiUploadType :: !(Maybe Text)
    , _paiPayload :: !AllocateIdsRequest
    , _paiProjectId :: !Text
    , _paiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAllocateIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paiXgafv'
--
-- * 'paiUploadProtocol'
--
-- * 'paiAccessToken'
--
-- * 'paiUploadType'
--
-- * 'paiPayload'
--
-- * 'paiProjectId'
--
-- * 'paiCallback'
projectsAllocateIds
    :: AllocateIdsRequest -- ^ 'paiPayload'
    -> Text -- ^ 'paiProjectId'
    -> ProjectsAllocateIds
projectsAllocateIds pPaiPayload_ pPaiProjectId_ =
  ProjectsAllocateIds'
    { _paiXgafv = Nothing
    , _paiUploadProtocol = Nothing
    , _paiAccessToken = Nothing
    , _paiUploadType = Nothing
    , _paiPayload = pPaiPayload_
    , _paiProjectId = pPaiProjectId_
    , _paiCallback = Nothing
    }


-- | V1 error format.
paiXgafv :: Lens' ProjectsAllocateIds (Maybe Xgafv)
paiXgafv = lens _paiXgafv (\ s a -> s{_paiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paiUploadProtocol :: Lens' ProjectsAllocateIds (Maybe Text)
paiUploadProtocol
  = lens _paiUploadProtocol
      (\ s a -> s{_paiUploadProtocol = a})

-- | OAuth access token.
paiAccessToken :: Lens' ProjectsAllocateIds (Maybe Text)
paiAccessToken
  = lens _paiAccessToken
      (\ s a -> s{_paiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paiUploadType :: Lens' ProjectsAllocateIds (Maybe Text)
paiUploadType
  = lens _paiUploadType
      (\ s a -> s{_paiUploadType = a})

-- | Multipart request metadata.
paiPayload :: Lens' ProjectsAllocateIds AllocateIdsRequest
paiPayload
  = lens _paiPayload (\ s a -> s{_paiPayload = a})

-- | Required. The ID of the project against which to make the request.
paiProjectId :: Lens' ProjectsAllocateIds Text
paiProjectId
  = lens _paiProjectId (\ s a -> s{_paiProjectId = a})

-- | JSONP
paiCallback :: Lens' ProjectsAllocateIds (Maybe Text)
paiCallback
  = lens _paiCallback (\ s a -> s{_paiCallback = a})

instance GoogleRequest ProjectsAllocateIds where
        type Rs ProjectsAllocateIds = AllocateIdsResponse
        type Scopes ProjectsAllocateIds =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsAllocateIds'{..}
          = go _paiProjectId _paiXgafv _paiUploadProtocol
              _paiAccessToken
              _paiUploadType
              _paiCallback
              (Just AltJSON)
              _paiPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAllocateIdsResource)
                      mempty
