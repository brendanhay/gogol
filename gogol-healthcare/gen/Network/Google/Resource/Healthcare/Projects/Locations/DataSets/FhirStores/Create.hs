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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new FHIR store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresCreate
    , ProjectsLocationsDataSetsFhirStoresCreate

    -- * Request Lenses
    , pldsfscParent
    , pldsfscXgafv
    , pldsfscUploadProtocol
    , pldsfscAccessToken
    , pldsfscUploadType
    , pldsfscPayload
    , pldsfscFhirStoreId
    , pldsfscCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.create@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresCreate' request conforms to.
type ProjectsLocationsDataSetsFhirStoresCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "fhirStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "fhirStoreId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FhirStore :> Post '[JSON] FhirStore

-- | Creates a new FHIR store within the parent dataset.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresCreate' smart constructor.
data ProjectsLocationsDataSetsFhirStoresCreate =
  ProjectsLocationsDataSetsFhirStoresCreate'
    { _pldsfscParent :: !Text
    , _pldsfscXgafv :: !(Maybe Xgafv)
    , _pldsfscUploadProtocol :: !(Maybe Text)
    , _pldsfscAccessToken :: !(Maybe Text)
    , _pldsfscUploadType :: !(Maybe Text)
    , _pldsfscPayload :: !FhirStore
    , _pldsfscFhirStoreId :: !(Maybe Text)
    , _pldsfscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfscParent'
--
-- * 'pldsfscXgafv'
--
-- * 'pldsfscUploadProtocol'
--
-- * 'pldsfscAccessToken'
--
-- * 'pldsfscUploadType'
--
-- * 'pldsfscPayload'
--
-- * 'pldsfscFhirStoreId'
--
-- * 'pldsfscCallback'
projectsLocationsDataSetsFhirStoresCreate
    :: Text -- ^ 'pldsfscParent'
    -> FhirStore -- ^ 'pldsfscPayload'
    -> ProjectsLocationsDataSetsFhirStoresCreate
projectsLocationsDataSetsFhirStoresCreate pPldsfscParent_ pPldsfscPayload_ =
  ProjectsLocationsDataSetsFhirStoresCreate'
    { _pldsfscParent = pPldsfscParent_
    , _pldsfscXgafv = Nothing
    , _pldsfscUploadProtocol = Nothing
    , _pldsfscAccessToken = Nothing
    , _pldsfscUploadType = Nothing
    , _pldsfscPayload = pPldsfscPayload_
    , _pldsfscFhirStoreId = Nothing
    , _pldsfscCallback = Nothing
    }


-- | The name of the dataset this FHIR store belongs to.
pldsfscParent :: Lens' ProjectsLocationsDataSetsFhirStoresCreate Text
pldsfscParent
  = lens _pldsfscParent
      (\ s a -> s{_pldsfscParent = a})

-- | V1 error format.
pldsfscXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Xgafv)
pldsfscXgafv
  = lens _pldsfscXgafv (\ s a -> s{_pldsfscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfscUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Text)
pldsfscUploadProtocol
  = lens _pldsfscUploadProtocol
      (\ s a -> s{_pldsfscUploadProtocol = a})

-- | OAuth access token.
pldsfscAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Text)
pldsfscAccessToken
  = lens _pldsfscAccessToken
      (\ s a -> s{_pldsfscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfscUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Text)
pldsfscUploadType
  = lens _pldsfscUploadType
      (\ s a -> s{_pldsfscUploadType = a})

-- | Multipart request metadata.
pldsfscPayload :: Lens' ProjectsLocationsDataSetsFhirStoresCreate FhirStore
pldsfscPayload
  = lens _pldsfscPayload
      (\ s a -> s{_pldsfscPayload = a})

-- | The ID of the FHIR store that is being created. The string must match
-- the following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`.
pldsfscFhirStoreId :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Text)
pldsfscFhirStoreId
  = lens _pldsfscFhirStoreId
      (\ s a -> s{_pldsfscFhirStoreId = a})

-- | JSONP
pldsfscCallback :: Lens' ProjectsLocationsDataSetsFhirStoresCreate (Maybe Text)
pldsfscCallback
  = lens _pldsfscCallback
      (\ s a -> s{_pldsfscCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresCreate
         where
        type Rs ProjectsLocationsDataSetsFhirStoresCreate =
             FhirStore
        type Scopes ProjectsLocationsDataSetsFhirStoresCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresCreate'{..}
          = go _pldsfscParent _pldsfscXgafv
              _pldsfscUploadProtocol
              _pldsfscAccessToken
              _pldsfscUploadType
              _pldsfscFhirStoreId
              _pldsfscCallback
              (Just AltJSON)
              _pldsfscPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresCreateResource)
                      mempty
