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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DICOM store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresCreate
    , ProjectsLocationsDataSetsDicomStoresCreate

    -- * Request Lenses
    , pldsdscParent
    , pldsdscXgafv
    , pldsdscUploadProtocol
    , pldsdscAccessToken
    , pldsdscUploadType
    , pldsdscPayload
    , pldsdscDicomStoreId
    , pldsdscCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.create@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresCreate' request conforms to.
type ProjectsLocationsDataSetsDicomStoresCreateResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "dicomStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "dicomStoreId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DicomStore :> Post '[JSON] DicomStore

-- | Creates a new DICOM store within the parent dataset.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresCreate' smart constructor.
data ProjectsLocationsDataSetsDicomStoresCreate =
  ProjectsLocationsDataSetsDicomStoresCreate'
    { _pldsdscParent         :: !Text
    , _pldsdscXgafv          :: !(Maybe Xgafv)
    , _pldsdscUploadProtocol :: !(Maybe Text)
    , _pldsdscAccessToken    :: !(Maybe Text)
    , _pldsdscUploadType     :: !(Maybe Text)
    , _pldsdscPayload        :: !DicomStore
    , _pldsdscDicomStoreId   :: !(Maybe Text)
    , _pldsdscCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdscParent'
--
-- * 'pldsdscXgafv'
--
-- * 'pldsdscUploadProtocol'
--
-- * 'pldsdscAccessToken'
--
-- * 'pldsdscUploadType'
--
-- * 'pldsdscPayload'
--
-- * 'pldsdscDicomStoreId'
--
-- * 'pldsdscCallback'
projectsLocationsDataSetsDicomStoresCreate
    :: Text -- ^ 'pldsdscParent'
    -> DicomStore -- ^ 'pldsdscPayload'
    -> ProjectsLocationsDataSetsDicomStoresCreate
projectsLocationsDataSetsDicomStoresCreate pPldsdscParent_ pPldsdscPayload_ =
  ProjectsLocationsDataSetsDicomStoresCreate'
    { _pldsdscParent = pPldsdscParent_
    , _pldsdscXgafv = Nothing
    , _pldsdscUploadProtocol = Nothing
    , _pldsdscAccessToken = Nothing
    , _pldsdscUploadType = Nothing
    , _pldsdscPayload = pPldsdscPayload_
    , _pldsdscDicomStoreId = Nothing
    , _pldsdscCallback = Nothing
    }


-- | The name of the dataset this DICOM store belongs to.
pldsdscParent :: Lens' ProjectsLocationsDataSetsDicomStoresCreate Text
pldsdscParent
  = lens _pldsdscParent
      (\ s a -> s{_pldsdscParent = a})

-- | V1 error format.
pldsdscXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Xgafv)
pldsdscXgafv
  = lens _pldsdscXgafv (\ s a -> s{_pldsdscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdscUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Text)
pldsdscUploadProtocol
  = lens _pldsdscUploadProtocol
      (\ s a -> s{_pldsdscUploadProtocol = a})

-- | OAuth access token.
pldsdscAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Text)
pldsdscAccessToken
  = lens _pldsdscAccessToken
      (\ s a -> s{_pldsdscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdscUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Text)
pldsdscUploadType
  = lens _pldsdscUploadType
      (\ s a -> s{_pldsdscUploadType = a})

-- | Multipart request metadata.
pldsdscPayload :: Lens' ProjectsLocationsDataSetsDicomStoresCreate DicomStore
pldsdscPayload
  = lens _pldsdscPayload
      (\ s a -> s{_pldsdscPayload = a})

-- | The ID of the DICOM store that is being created. The string must match
-- the following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`.
pldsdscDicomStoreId :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Text)
pldsdscDicomStoreId
  = lens _pldsdscDicomStoreId
      (\ s a -> s{_pldsdscDicomStoreId = a})

-- | JSONP
pldsdscCallback :: Lens' ProjectsLocationsDataSetsDicomStoresCreate (Maybe Text)
pldsdscCallback
  = lens _pldsdscCallback
      (\ s a -> s{_pldsdscCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresCreate
         where
        type Rs ProjectsLocationsDataSetsDicomStoresCreate =
             DicomStore
        type Scopes
               ProjectsLocationsDataSetsDicomStoresCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresCreate'{..}
          = go _pldsdscParent _pldsdscXgafv
              _pldsdscUploadProtocol
              _pldsdscAccessToken
              _pldsdscUploadType
              _pldsdscDicomStoreId
              _pldsdscCallback
              (Just AltJSON)
              _pldsdscPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresCreateResource)
                      mempty
