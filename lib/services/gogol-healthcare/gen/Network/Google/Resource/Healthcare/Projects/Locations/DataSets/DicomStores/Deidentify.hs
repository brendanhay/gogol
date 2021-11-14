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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Deidentify
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies data from the source store and writes it to the
-- destination store. The metadata field type is OperationMetadata. If the
-- request is successful, the response field type is
-- DeidentifyDicomStoreSummary. If errors occur, error is set. The LRO
-- result may still be successful if de-identification fails for some DICOM
-- instances. The output DICOM store will not contain these failed
-- resources. Failed resource totals are tracked in Operation.metadata.
-- Error details are also logged to Cloud Logging (see [Viewing error logs
-- in Cloud Logging](\/healthcare\/docs\/how-tos\/logging)).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.deidentify@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Deidentify
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresDeidentifyResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresDeidentify
    , ProjectsLocationsDataSetsDicomStoresDeidentify

    -- * Request Lenses
    , pldsdsdXgafv
    , pldsdsdUploadProtocol
    , pldsdsdAccessToken
    , pldsdsdUploadType
    , pldsdsdPayload
    , pldsdsdSourceStore
    , pldsdsdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.deidentify@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresDeidentify' request conforms to.
type ProjectsLocationsDataSetsDicomStoresDeidentifyResource
     =
     "v1" :>
       CaptureMode "sourceStore" "deidentify" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeidentifyDicomStoreRequest :>
                       Post '[JSON] Operation

-- | De-identifies data from the source store and writes it to the
-- destination store. The metadata field type is OperationMetadata. If the
-- request is successful, the response field type is
-- DeidentifyDicomStoreSummary. If errors occur, error is set. The LRO
-- result may still be successful if de-identification fails for some DICOM
-- instances. The output DICOM store will not contain these failed
-- resources. Failed resource totals are tracked in Operation.metadata.
-- Error details are also logged to Cloud Logging (see [Viewing error logs
-- in Cloud Logging](\/healthcare\/docs\/how-tos\/logging)).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresDeidentify' smart constructor.
data ProjectsLocationsDataSetsDicomStoresDeidentify =
  ProjectsLocationsDataSetsDicomStoresDeidentify'
    { _pldsdsdXgafv :: !(Maybe Xgafv)
    , _pldsdsdUploadProtocol :: !(Maybe Text)
    , _pldsdsdAccessToken :: !(Maybe Text)
    , _pldsdsdUploadType :: !(Maybe Text)
    , _pldsdsdPayload :: !DeidentifyDicomStoreRequest
    , _pldsdsdSourceStore :: !Text
    , _pldsdsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresDeidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsdXgafv'
--
-- * 'pldsdsdUploadProtocol'
--
-- * 'pldsdsdAccessToken'
--
-- * 'pldsdsdUploadType'
--
-- * 'pldsdsdPayload'
--
-- * 'pldsdsdSourceStore'
--
-- * 'pldsdsdCallback'
projectsLocationsDataSetsDicomStoresDeidentify
    :: DeidentifyDicomStoreRequest -- ^ 'pldsdsdPayload'
    -> Text -- ^ 'pldsdsdSourceStore'
    -> ProjectsLocationsDataSetsDicomStoresDeidentify
projectsLocationsDataSetsDicomStoresDeidentify pPldsdsdPayload_ pPldsdsdSourceStore_ =
  ProjectsLocationsDataSetsDicomStoresDeidentify'
    { _pldsdsdXgafv = Nothing
    , _pldsdsdUploadProtocol = Nothing
    , _pldsdsdAccessToken = Nothing
    , _pldsdsdUploadType = Nothing
    , _pldsdsdPayload = pPldsdsdPayload_
    , _pldsdsdSourceStore = pPldsdsdSourceStore_
    , _pldsdsdCallback = Nothing
    }


-- | V1 error format.
pldsdsdXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify (Maybe Xgafv)
pldsdsdXgafv
  = lens _pldsdsdXgafv (\ s a -> s{_pldsdsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsdUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify (Maybe Text)
pldsdsdUploadProtocol
  = lens _pldsdsdUploadProtocol
      (\ s a -> s{_pldsdsdUploadProtocol = a})

-- | OAuth access token.
pldsdsdAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify (Maybe Text)
pldsdsdAccessToken
  = lens _pldsdsdAccessToken
      (\ s a -> s{_pldsdsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsdUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify (Maybe Text)
pldsdsdUploadType
  = lens _pldsdsdUploadType
      (\ s a -> s{_pldsdsdUploadType = a})

-- | Multipart request metadata.
pldsdsdPayload :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify DeidentifyDicomStoreRequest
pldsdsdPayload
  = lens _pldsdsdPayload
      (\ s a -> s{_pldsdsdPayload = a})

-- | Source DICOM store resource name. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsdSourceStore :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify Text
pldsdsdSourceStore
  = lens _pldsdsdSourceStore
      (\ s a -> s{_pldsdsdSourceStore = a})

-- | JSONP
pldsdsdCallback :: Lens' ProjectsLocationsDataSetsDicomStoresDeidentify (Maybe Text)
pldsdsdCallback
  = lens _pldsdsdCallback
      (\ s a -> s{_pldsdsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresDeidentify
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresDeidentify
             = Operation
        type Scopes
               ProjectsLocationsDataSetsDicomStoresDeidentify
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresDeidentify'{..}
          = go _pldsdsdSourceStore _pldsdsdXgafv
              _pldsdsdUploadProtocol
              _pldsdsdAccessToken
              _pldsdsdUploadType
              _pldsdsdCallback
              (Just AltJSON)
              _pldsdsdPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresDeidentifyResource)
                      mempty
