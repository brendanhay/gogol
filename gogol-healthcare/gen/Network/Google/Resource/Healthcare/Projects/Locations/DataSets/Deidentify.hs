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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new dataset containing de-identified data from the source
-- dataset. The metadata field type is OperationMetadata. If the request is
-- successful, the response field type is DeidentifySummary. If errors
-- occur, error is set. The LRO result may still be successful if
-- de-identification fails for some DICOM instances. The new de-identified
-- dataset will not contain these failed resources. Failed resource totals
-- are tracked in Operation.metadata. Error details are also logged to
-- Cloud Logging. For more information, see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.deidentify@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDeidentifyResource

    -- * Creating a Request
    , projectsLocationsDataSetsDeidentify
    , ProjectsLocationsDataSetsDeidentify

    -- * Request Lenses
    , pldsdXgafv
    , pldsdSourceDataSet
    , pldsdUploadProtocol
    , pldsdAccessToken
    , pldsdUploadType
    , pldsdPayload
    , pldsdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.deidentify@ method which the
-- 'ProjectsLocationsDataSetsDeidentify' request conforms to.
type ProjectsLocationsDataSetsDeidentifyResource =
     "v1" :>
       CaptureMode "sourceDataset" "deidentify" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeidentifyDataSetRequest :>
                       Post '[JSON] Operation

-- | Creates a new dataset containing de-identified data from the source
-- dataset. The metadata field type is OperationMetadata. If the request is
-- successful, the response field type is DeidentifySummary. If errors
-- occur, error is set. The LRO result may still be successful if
-- de-identification fails for some DICOM instances. The new de-identified
-- dataset will not contain these failed resources. Failed resource totals
-- are tracked in Operation.metadata. Error details are also logged to
-- Cloud Logging. For more information, see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging).
--
-- /See:/ 'projectsLocationsDataSetsDeidentify' smart constructor.
data ProjectsLocationsDataSetsDeidentify =
  ProjectsLocationsDataSetsDeidentify'
    { _pldsdXgafv :: !(Maybe Xgafv)
    , _pldsdSourceDataSet :: !Text
    , _pldsdUploadProtocol :: !(Maybe Text)
    , _pldsdAccessToken :: !(Maybe Text)
    , _pldsdUploadType :: !(Maybe Text)
    , _pldsdPayload :: !DeidentifyDataSetRequest
    , _pldsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDeidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdXgafv'
--
-- * 'pldsdSourceDataSet'
--
-- * 'pldsdUploadProtocol'
--
-- * 'pldsdAccessToken'
--
-- * 'pldsdUploadType'
--
-- * 'pldsdPayload'
--
-- * 'pldsdCallback'
projectsLocationsDataSetsDeidentify
    :: Text -- ^ 'pldsdSourceDataSet'
    -> DeidentifyDataSetRequest -- ^ 'pldsdPayload'
    -> ProjectsLocationsDataSetsDeidentify
projectsLocationsDataSetsDeidentify pPldsdSourceDataSet_ pPldsdPayload_ =
  ProjectsLocationsDataSetsDeidentify'
    { _pldsdXgafv = Nothing
    , _pldsdSourceDataSet = pPldsdSourceDataSet_
    , _pldsdUploadProtocol = Nothing
    , _pldsdAccessToken = Nothing
    , _pldsdUploadType = Nothing
    , _pldsdPayload = pPldsdPayload_
    , _pldsdCallback = Nothing
    }


-- | V1 error format.
pldsdXgafv :: Lens' ProjectsLocationsDataSetsDeidentify (Maybe Xgafv)
pldsdXgafv
  = lens _pldsdXgafv (\ s a -> s{_pldsdXgafv = a})

-- | Source dataset resource name. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`.
pldsdSourceDataSet :: Lens' ProjectsLocationsDataSetsDeidentify Text
pldsdSourceDataSet
  = lens _pldsdSourceDataSet
      (\ s a -> s{_pldsdSourceDataSet = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdUploadProtocol :: Lens' ProjectsLocationsDataSetsDeidentify (Maybe Text)
pldsdUploadProtocol
  = lens _pldsdUploadProtocol
      (\ s a -> s{_pldsdUploadProtocol = a})

-- | OAuth access token.
pldsdAccessToken :: Lens' ProjectsLocationsDataSetsDeidentify (Maybe Text)
pldsdAccessToken
  = lens _pldsdAccessToken
      (\ s a -> s{_pldsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdUploadType :: Lens' ProjectsLocationsDataSetsDeidentify (Maybe Text)
pldsdUploadType
  = lens _pldsdUploadType
      (\ s a -> s{_pldsdUploadType = a})

-- | Multipart request metadata.
pldsdPayload :: Lens' ProjectsLocationsDataSetsDeidentify DeidentifyDataSetRequest
pldsdPayload
  = lens _pldsdPayload (\ s a -> s{_pldsdPayload = a})

-- | JSONP
pldsdCallback :: Lens' ProjectsLocationsDataSetsDeidentify (Maybe Text)
pldsdCallback
  = lens _pldsdCallback
      (\ s a -> s{_pldsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDeidentify
         where
        type Rs ProjectsLocationsDataSetsDeidentify =
             Operation
        type Scopes ProjectsLocationsDataSetsDeidentify =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDeidentify'{..}
          = go _pldsdSourceDataSet _pldsdXgafv
              _pldsdUploadProtocol
              _pldsdAccessToken
              _pldsdUploadType
              _pldsdCallback
              (Just AltJSON)
              _pldsdPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsDeidentifyResource)
                      mempty
