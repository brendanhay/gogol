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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified DICOM store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresPatch
    , ProjectsLocationsDataSetsDicomStoresPatch

    -- * Request Lenses
    , pldsdspXgafv
    , pldsdspUploadProtocol
    , pldsdspUpdateMask
    , pldsdspAccessToken
    , pldsdspUploadType
    , pldsdspPayload
    , pldsdspName
    , pldsdspCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.patch@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresPatch' request conforms to.
type ProjectsLocationsDataSetsDicomStoresPatchResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DicomStore :>
                         Patch '[JSON] DicomStore

-- | Updates the specified DICOM store.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresPatch' smart constructor.
data ProjectsLocationsDataSetsDicomStoresPatch =
  ProjectsLocationsDataSetsDicomStoresPatch'
    { _pldsdspXgafv          :: !(Maybe Xgafv)
    , _pldsdspUploadProtocol :: !(Maybe Text)
    , _pldsdspUpdateMask     :: !(Maybe GFieldMask)
    , _pldsdspAccessToken    :: !(Maybe Text)
    , _pldsdspUploadType     :: !(Maybe Text)
    , _pldsdspPayload        :: !DicomStore
    , _pldsdspName           :: !Text
    , _pldsdspCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdspXgafv'
--
-- * 'pldsdspUploadProtocol'
--
-- * 'pldsdspUpdateMask'
--
-- * 'pldsdspAccessToken'
--
-- * 'pldsdspUploadType'
--
-- * 'pldsdspPayload'
--
-- * 'pldsdspName'
--
-- * 'pldsdspCallback'
projectsLocationsDataSetsDicomStoresPatch
    :: DicomStore -- ^ 'pldsdspPayload'
    -> Text -- ^ 'pldsdspName'
    -> ProjectsLocationsDataSetsDicomStoresPatch
projectsLocationsDataSetsDicomStoresPatch pPldsdspPayload_ pPldsdspName_ =
  ProjectsLocationsDataSetsDicomStoresPatch'
    { _pldsdspXgafv = Nothing
    , _pldsdspUploadProtocol = Nothing
    , _pldsdspUpdateMask = Nothing
    , _pldsdspAccessToken = Nothing
    , _pldsdspUploadType = Nothing
    , _pldsdspPayload = pPldsdspPayload_
    , _pldsdspName = pPldsdspName_
    , _pldsdspCallback = Nothing
    }

-- | V1 error format.
pldsdspXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe Xgafv)
pldsdspXgafv
  = lens _pldsdspXgafv (\ s a -> s{_pldsdspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdspUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe Text)
pldsdspUploadProtocol
  = lens _pldsdspUploadProtocol
      (\ s a -> s{_pldsdspUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldsdspUpdateMask :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe GFieldMask)
pldsdspUpdateMask
  = lens _pldsdspUpdateMask
      (\ s a -> s{_pldsdspUpdateMask = a})

-- | OAuth access token.
pldsdspAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe Text)
pldsdspAccessToken
  = lens _pldsdspAccessToken
      (\ s a -> s{_pldsdspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdspUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe Text)
pldsdspUploadType
  = lens _pldsdspUploadType
      (\ s a -> s{_pldsdspUploadType = a})

-- | Multipart request metadata.
pldsdspPayload :: Lens' ProjectsLocationsDataSetsDicomStoresPatch DicomStore
pldsdspPayload
  = lens _pldsdspPayload
      (\ s a -> s{_pldsdspPayload = a})

-- | Output only. Resource name of the DICOM store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdspName :: Lens' ProjectsLocationsDataSetsDicomStoresPatch Text
pldsdspName
  = lens _pldsdspName (\ s a -> s{_pldsdspName = a})

-- | JSONP
pldsdspCallback :: Lens' ProjectsLocationsDataSetsDicomStoresPatch (Maybe Text)
pldsdspCallback
  = lens _pldsdspCallback
      (\ s a -> s{_pldsdspCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresPatch
         where
        type Rs ProjectsLocationsDataSetsDicomStoresPatch =
             DicomStore
        type Scopes ProjectsLocationsDataSetsDicomStoresPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresPatch'{..}
          = go _pldsdspName _pldsdspXgafv
              _pldsdspUploadProtocol
              _pldsdspUpdateMask
              _pldsdspAccessToken
              _pldsdspUploadType
              _pldsdspCallback
              (Just AltJSON)
              _pldsdspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresPatchResource)
                      mempty
