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
-- Module      : Network.Google.Resource.Datastore.Projects.Indexes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the specified index. A newly created index\'s initial state is
-- \`CREATING\`. On completion of the returned
-- google.longrunning.Operation, the state will be \`READY\`. If the index
-- already exists, the call will return an \`ALREADY_EXISTS\` status.
-- During index creation, the process could result in an error, in which
-- case the index will move to the \`ERROR\` state. The process can be
-- recovered by fixing the data that caused the error, removing the index
-- with delete, then re-creating the index with create. Indexes with a
-- single property cannot be created.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.create@.
module Network.Google.Resource.Datastore.Projects.Indexes.Create
    (
    -- * REST Resource
      ProjectsIndexesCreateResource

    -- * Creating a Request
    , projectsIndexesCreate
    , ProjectsIndexesCreate

    -- * Request Lenses
    , picXgafv
    , picUploadProtocol
    , picAccessToken
    , picUploadType
    , picPayload
    , picProjectId
    , picCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.indexes.create@ method which the
-- 'ProjectsIndexesCreate' request conforms to.
type ProjectsIndexesCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "indexes" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleDatastoreAdminV1Index :>
                           Post '[JSON] GoogleLongrunningOperation

-- | Creates the specified index. A newly created index\'s initial state is
-- \`CREATING\`. On completion of the returned
-- google.longrunning.Operation, the state will be \`READY\`. If the index
-- already exists, the call will return an \`ALREADY_EXISTS\` status.
-- During index creation, the process could result in an error, in which
-- case the index will move to the \`ERROR\` state. The process can be
-- recovered by fixing the data that caused the error, removing the index
-- with delete, then re-creating the index with create. Indexes with a
-- single property cannot be created.
--
-- /See:/ 'projectsIndexesCreate' smart constructor.
data ProjectsIndexesCreate =
  ProjectsIndexesCreate'
    { _picXgafv :: !(Maybe Xgafv)
    , _picUploadProtocol :: !(Maybe Text)
    , _picAccessToken :: !(Maybe Text)
    , _picUploadType :: !(Maybe Text)
    , _picPayload :: !GoogleDatastoreAdminV1Index
    , _picProjectId :: !Text
    , _picCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsIndexesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picXgafv'
--
-- * 'picUploadProtocol'
--
-- * 'picAccessToken'
--
-- * 'picUploadType'
--
-- * 'picPayload'
--
-- * 'picProjectId'
--
-- * 'picCallback'
projectsIndexesCreate
    :: GoogleDatastoreAdminV1Index -- ^ 'picPayload'
    -> Text -- ^ 'picProjectId'
    -> ProjectsIndexesCreate
projectsIndexesCreate pPicPayload_ pPicProjectId_ =
  ProjectsIndexesCreate'
    { _picXgafv = Nothing
    , _picUploadProtocol = Nothing
    , _picAccessToken = Nothing
    , _picUploadType = Nothing
    , _picPayload = pPicPayload_
    , _picProjectId = pPicProjectId_
    , _picCallback = Nothing
    }


-- | V1 error format.
picXgafv :: Lens' ProjectsIndexesCreate (Maybe Xgafv)
picXgafv = lens _picXgafv (\ s a -> s{_picXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picUploadProtocol :: Lens' ProjectsIndexesCreate (Maybe Text)
picUploadProtocol
  = lens _picUploadProtocol
      (\ s a -> s{_picUploadProtocol = a})

-- | OAuth access token.
picAccessToken :: Lens' ProjectsIndexesCreate (Maybe Text)
picAccessToken
  = lens _picAccessToken
      (\ s a -> s{_picAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picUploadType :: Lens' ProjectsIndexesCreate (Maybe Text)
picUploadType
  = lens _picUploadType
      (\ s a -> s{_picUploadType = a})

-- | Multipart request metadata.
picPayload :: Lens' ProjectsIndexesCreate GoogleDatastoreAdminV1Index
picPayload
  = lens _picPayload (\ s a -> s{_picPayload = a})

-- | Project ID against which to make the request.
picProjectId :: Lens' ProjectsIndexesCreate Text
picProjectId
  = lens _picProjectId (\ s a -> s{_picProjectId = a})

-- | JSONP
picCallback :: Lens' ProjectsIndexesCreate (Maybe Text)
picCallback
  = lens _picCallback (\ s a -> s{_picCallback = a})

instance GoogleRequest ProjectsIndexesCreate where
        type Rs ProjectsIndexesCreate =
             GoogleLongrunningOperation
        type Scopes ProjectsIndexesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsIndexesCreate'{..}
          = go _picProjectId _picXgafv _picUploadProtocol
              _picAccessToken
              _picUploadType
              _picCallback
              (Just AltJSON)
              _picPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIndexesCreateResource)
                      mempty
