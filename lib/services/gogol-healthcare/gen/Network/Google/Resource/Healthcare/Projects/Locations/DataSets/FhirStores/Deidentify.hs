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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Deidentify
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies data from the source store and writes it to the
-- destination store. The metadata field type is OperationMetadata. If the
-- request is successful, the response field type is
-- DeidentifyFhirStoreSummary. If errors occur, error is set. Error details
-- are also logged to Cloud Logging (see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.deidentify@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Deidentify
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresDeidentifyResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresDeidentify
    , ProjectsLocationsDataSetsFhirStoresDeidentify

    -- * Request Lenses
    , pldsfsdXgafv
    , pldsfsdUploadProtocol
    , pldsfsdAccessToken
    , pldsfsdUploadType
    , pldsfsdPayload
    , pldsfsdSourceStore
    , pldsfsdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.deidentify@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresDeidentify' request conforms to.
type ProjectsLocationsDataSetsFhirStoresDeidentifyResource
     =
     "v1" :>
       CaptureMode "sourceStore" "deidentify" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeidentifyFhirStoreRequest :>
                       Post '[JSON] Operation

-- | De-identifies data from the source store and writes it to the
-- destination store. The metadata field type is OperationMetadata. If the
-- request is successful, the response field type is
-- DeidentifyFhirStoreSummary. If errors occur, error is set. Error details
-- are also logged to Cloud Logging (see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresDeidentify' smart constructor.
data ProjectsLocationsDataSetsFhirStoresDeidentify =
  ProjectsLocationsDataSetsFhirStoresDeidentify'
    { _pldsfsdXgafv :: !(Maybe Xgafv)
    , _pldsfsdUploadProtocol :: !(Maybe Text)
    , _pldsfsdAccessToken :: !(Maybe Text)
    , _pldsfsdUploadType :: !(Maybe Text)
    , _pldsfsdPayload :: !DeidentifyFhirStoreRequest
    , _pldsfsdSourceStore :: !Text
    , _pldsfsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresDeidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsdXgafv'
--
-- * 'pldsfsdUploadProtocol'
--
-- * 'pldsfsdAccessToken'
--
-- * 'pldsfsdUploadType'
--
-- * 'pldsfsdPayload'
--
-- * 'pldsfsdSourceStore'
--
-- * 'pldsfsdCallback'
projectsLocationsDataSetsFhirStoresDeidentify
    :: DeidentifyFhirStoreRequest -- ^ 'pldsfsdPayload'
    -> Text -- ^ 'pldsfsdSourceStore'
    -> ProjectsLocationsDataSetsFhirStoresDeidentify
projectsLocationsDataSetsFhirStoresDeidentify pPldsfsdPayload_ pPldsfsdSourceStore_ =
  ProjectsLocationsDataSetsFhirStoresDeidentify'
    { _pldsfsdXgafv = Nothing
    , _pldsfsdUploadProtocol = Nothing
    , _pldsfsdAccessToken = Nothing
    , _pldsfsdUploadType = Nothing
    , _pldsfsdPayload = pPldsfsdPayload_
    , _pldsfsdSourceStore = pPldsfsdSourceStore_
    , _pldsfsdCallback = Nothing
    }


-- | V1 error format.
pldsfsdXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify (Maybe Xgafv)
pldsfsdXgafv
  = lens _pldsfsdXgafv (\ s a -> s{_pldsfsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsdUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify (Maybe Text)
pldsfsdUploadProtocol
  = lens _pldsfsdUploadProtocol
      (\ s a -> s{_pldsfsdUploadProtocol = a})

-- | OAuth access token.
pldsfsdAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify (Maybe Text)
pldsfsdAccessToken
  = lens _pldsfsdAccessToken
      (\ s a -> s{_pldsfsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsdUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify (Maybe Text)
pldsfsdUploadType
  = lens _pldsfsdUploadType
      (\ s a -> s{_pldsfsdUploadType = a})

-- | Multipart request metadata.
pldsfsdPayload :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify DeidentifyFhirStoreRequest
pldsfsdPayload
  = lens _pldsfsdPayload
      (\ s a -> s{_pldsfsdPayload = a})

-- | Source FHIR store resource name. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
pldsfsdSourceStore :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify Text
pldsfsdSourceStore
  = lens _pldsfsdSourceStore
      (\ s a -> s{_pldsfsdSourceStore = a})

-- | JSONP
pldsfsdCallback :: Lens' ProjectsLocationsDataSetsFhirStoresDeidentify (Maybe Text)
pldsfsdCallback
  = lens _pldsfsdCallback
      (\ s a -> s{_pldsfsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresDeidentify
         where
        type Rs ProjectsLocationsDataSetsFhirStoresDeidentify
             = Operation
        type Scopes
               ProjectsLocationsDataSetsFhirStoresDeidentify
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresDeidentify'{..}
          = go _pldsfsdSourceStore _pldsfsdXgafv
              _pldsfsdUploadProtocol
              _pldsfsdAccessToken
              _pldsfsdUploadType
              _pldsfsdCallback
              (Just AltJSON)
              _pldsfsdPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresDeidentifyResource)
                      mempty
