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
-- Module      : Network.Google.Resource.Datastore.Projects.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a copy of all or a subset of entities from Google Cloud
-- Datastore to another storage system, such as Google Cloud Storage.
-- Recent updates to entities may not be reflected in the export. The
-- export occurs in the background and its progress can be monitored and
-- managed via the Operation resource that is created. The output of an
-- export may only be used once the associated operation is done. If an
-- export operation is cancelled before completion it may leave partial
-- data behind in Google Cloud Storage.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.export@.
module Network.Google.Resource.Datastore.Projects.Export
    (
    -- * REST Resource
      ProjectsExportResource

    -- * Creating a Request
    , projectsExport
    , ProjectsExport

    -- * Request Lenses
    , peXgafv
    , peUploadProtocol
    , peAccessToken
    , peUploadType
    , pePayload
    , peProjectId
    , peCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.export@ method which the
-- 'ProjectsExport' request conforms to.
type ProjectsExportResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "export" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleDatastoreAdminV1ExportEntitiesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Exports a copy of all or a subset of entities from Google Cloud
-- Datastore to another storage system, such as Google Cloud Storage.
-- Recent updates to entities may not be reflected in the export. The
-- export occurs in the background and its progress can be monitored and
-- managed via the Operation resource that is created. The output of an
-- export may only be used once the associated operation is done. If an
-- export operation is cancelled before completion it may leave partial
-- data behind in Google Cloud Storage.
--
-- /See:/ 'projectsExport' smart constructor.
data ProjectsExport =
  ProjectsExport'
    { _peXgafv          :: !(Maybe Xgafv)
    , _peUploadProtocol :: !(Maybe Text)
    , _peAccessToken    :: !(Maybe Text)
    , _peUploadType     :: !(Maybe Text)
    , _pePayload        :: !GoogleDatastoreAdminV1ExportEntitiesRequest
    , _peProjectId      :: !Text
    , _peCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peXgafv'
--
-- * 'peUploadProtocol'
--
-- * 'peAccessToken'
--
-- * 'peUploadType'
--
-- * 'pePayload'
--
-- * 'peProjectId'
--
-- * 'peCallback'
projectsExport
    :: GoogleDatastoreAdminV1ExportEntitiesRequest -- ^ 'pePayload'
    -> Text -- ^ 'peProjectId'
    -> ProjectsExport
projectsExport pPePayload_ pPeProjectId_ =
  ProjectsExport'
    { _peXgafv = Nothing
    , _peUploadProtocol = Nothing
    , _peAccessToken = Nothing
    , _peUploadType = Nothing
    , _pePayload = pPePayload_
    , _peProjectId = pPeProjectId_
    , _peCallback = Nothing
    }

-- | V1 error format.
peXgafv :: Lens' ProjectsExport (Maybe Xgafv)
peXgafv = lens _peXgafv (\ s a -> s{_peXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
peUploadProtocol :: Lens' ProjectsExport (Maybe Text)
peUploadProtocol
  = lens _peUploadProtocol
      (\ s a -> s{_peUploadProtocol = a})

-- | OAuth access token.
peAccessToken :: Lens' ProjectsExport (Maybe Text)
peAccessToken
  = lens _peAccessToken
      (\ s a -> s{_peAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
peUploadType :: Lens' ProjectsExport (Maybe Text)
peUploadType
  = lens _peUploadType (\ s a -> s{_peUploadType = a})

-- | Multipart request metadata.
pePayload :: Lens' ProjectsExport GoogleDatastoreAdminV1ExportEntitiesRequest
pePayload
  = lens _pePayload (\ s a -> s{_pePayload = a})

-- | Project ID against which to make the request.
peProjectId :: Lens' ProjectsExport Text
peProjectId
  = lens _peProjectId (\ s a -> s{_peProjectId = a})

-- | JSONP
peCallback :: Lens' ProjectsExport (Maybe Text)
peCallback
  = lens _peCallback (\ s a -> s{_peCallback = a})

instance GoogleRequest ProjectsExport where
        type Rs ProjectsExport = GoogleLongrunningOperation
        type Scopes ProjectsExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsExport'{..}
          = go _peProjectId _peXgafv _peUploadProtocol
              _peAccessToken
              _peUploadType
              _peCallback
              (Just AltJSON)
              _pePayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy ProjectsExportResource)
                      mempty
