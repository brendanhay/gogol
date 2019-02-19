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
-- Module      : Network.Google.Resource.Datastore.Projects.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports entities into Google Cloud Datastore. Existing entities with the
-- same key are overwritten. The import occurs in the background and its
-- progress can be monitored and managed via the Operation resource that is
-- created. If an ImportEntities operation is cancelled, it is possible
-- that a subset of the data has already been imported to Cloud Datastore.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.import@.
module Network.Google.Resource.Datastore.Projects.Import
    (
    -- * REST Resource
      ProjectsImportResource

    -- * Creating a Request
    , projectsImport
    , ProjectsImport

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pProjectId
    , pCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.import@ method which the
-- 'ProjectsImport' request conforms to.
type ProjectsImportResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "import" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleDatastoreAdminV1ImportEntitiesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Imports entities into Google Cloud Datastore. Existing entities with the
-- same key are overwritten. The import occurs in the background and its
-- progress can be monitored and managed via the Operation resource that is
-- created. If an ImportEntities operation is cancelled, it is possible
-- that a subset of the data has already been imported to Cloud Datastore.
--
-- /See:/ 'projectsImport' smart constructor.
data ProjectsImport =
  ProjectsImport'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !GoogleDatastoreAdminV1ImportEntitiesRequest
    , _pProjectId      :: !Text
    , _pCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsImport
    :: GoogleDatastoreAdminV1ImportEntitiesRequest -- ^ 'pPayload'
    -> Text -- ^ 'pProjectId'
    -> ProjectsImport
projectsImport pPPayload_ pPProjectId_ =
  ProjectsImport'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsImport (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsImport (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsImport (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsImport (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsImport GoogleDatastoreAdminV1ImportEntitiesRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Project ID against which to make the request.
pProjectId :: Lens' ProjectsImport Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsImport (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsImport where
        type Rs ProjectsImport = GoogleLongrunningOperation
        type Scopes ProjectsImport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsImport'{..}
          = go _pProjectId _pXgafv _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy ProjectsImportResource)
                      mempty
