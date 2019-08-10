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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export resources from the FHIR store to the specified destination. This
-- method returns an Operation that can be used to track the status of the
-- export by calling GetOperation. Immediate fatal errors appear in the
-- error field. Otherwise, when the operation finishes, a detailed response
-- of type ExportResourcesResponse is returned in the response field. The
-- metadata field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.export@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresExportResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresExport
    , ProjectsLocationsDataSetsFhirStoresExport

    -- * Request Lenses
    , pldsfseXgafv
    , pldsfseUploadProtocol
    , pldsfseAccessToken
    , pldsfseUploadType
    , pldsfsePayload
    , pldsfseName
    , pldsfseCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.export@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresExport' request conforms to.
type ProjectsLocationsDataSetsFhirStoresExportResource
     =
     "v1beta1" :>
       CaptureMode "name" "export" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExportResourcesRequest :>
                       Post '[JSON] Operation

-- | Export resources from the FHIR store to the specified destination. This
-- method returns an Operation that can be used to track the status of the
-- export by calling GetOperation. Immediate fatal errors appear in the
-- error field. Otherwise, when the operation finishes, a detailed response
-- of type ExportResourcesResponse is returned in the response field. The
-- metadata field type for this operation is OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresExport' smart constructor.
data ProjectsLocationsDataSetsFhirStoresExport =
  ProjectsLocationsDataSetsFhirStoresExport'
    { _pldsfseXgafv          :: !(Maybe Xgafv)
    , _pldsfseUploadProtocol :: !(Maybe Text)
    , _pldsfseAccessToken    :: !(Maybe Text)
    , _pldsfseUploadType     :: !(Maybe Text)
    , _pldsfsePayload        :: !ExportResourcesRequest
    , _pldsfseName           :: !Text
    , _pldsfseCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfseXgafv'
--
-- * 'pldsfseUploadProtocol'
--
-- * 'pldsfseAccessToken'
--
-- * 'pldsfseUploadType'
--
-- * 'pldsfsePayload'
--
-- * 'pldsfseName'
--
-- * 'pldsfseCallback'
projectsLocationsDataSetsFhirStoresExport
    :: ExportResourcesRequest -- ^ 'pldsfsePayload'
    -> Text -- ^ 'pldsfseName'
    -> ProjectsLocationsDataSetsFhirStoresExport
projectsLocationsDataSetsFhirStoresExport pPldsfsePayload_ pPldsfseName_ =
  ProjectsLocationsDataSetsFhirStoresExport'
    { _pldsfseXgafv = Nothing
    , _pldsfseUploadProtocol = Nothing
    , _pldsfseAccessToken = Nothing
    , _pldsfseUploadType = Nothing
    , _pldsfsePayload = pPldsfsePayload_
    , _pldsfseName = pPldsfseName_
    , _pldsfseCallback = Nothing
    }


-- | V1 error format.
pldsfseXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresExport (Maybe Xgafv)
pldsfseXgafv
  = lens _pldsfseXgafv (\ s a -> s{_pldsfseXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfseUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresExport (Maybe Text)
pldsfseUploadProtocol
  = lens _pldsfseUploadProtocol
      (\ s a -> s{_pldsfseUploadProtocol = a})

-- | OAuth access token.
pldsfseAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresExport (Maybe Text)
pldsfseAccessToken
  = lens _pldsfseAccessToken
      (\ s a -> s{_pldsfseAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfseUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresExport (Maybe Text)
pldsfseUploadType
  = lens _pldsfseUploadType
      (\ s a -> s{_pldsfseUploadType = a})

-- | Multipart request metadata.
pldsfsePayload :: Lens' ProjectsLocationsDataSetsFhirStoresExport ExportResourcesRequest
pldsfsePayload
  = lens _pldsfsePayload
      (\ s a -> s{_pldsfsePayload = a})

-- | The name of the FHIR store to export resource from. The name should be
-- in the format of
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
pldsfseName :: Lens' ProjectsLocationsDataSetsFhirStoresExport Text
pldsfseName
  = lens _pldsfseName (\ s a -> s{_pldsfseName = a})

-- | JSONP
pldsfseCallback :: Lens' ProjectsLocationsDataSetsFhirStoresExport (Maybe Text)
pldsfseCallback
  = lens _pldsfseCallback
      (\ s a -> s{_pldsfseCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresExport
         where
        type Rs ProjectsLocationsDataSetsFhirStoresExport =
             Operation
        type Scopes ProjectsLocationsDataSetsFhirStoresExport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresExport'{..}
          = go _pldsfseName _pldsfseXgafv
              _pldsfseUploadProtocol
              _pldsfseAccessToken
              _pldsfseUploadType
              _pldsfseCallback
              (Just AltJSON)
              _pldsfsePayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresExportResource)
                      mempty
