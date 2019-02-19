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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the capabilities statement for the store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.getMetadata@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetMetadata
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresGetMetadataResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresGetMetadata
    , ProjectsLocationsDataSetsFhirStoresGetMetadata

    -- * Request Lenses
    , pldsfsgmXgafv
    , pldsfsgmUploadProtocol
    , pldsfsgmAccessToken
    , pldsfsgmUploadType
    , pldsfsgmName
    , pldsfsgmCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.getMetadata@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresGetMetadata' request conforms to.
type ProjectsLocationsDataSetsFhirStoresGetMetadataResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         "metadata" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets the capabilities statement for the store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresGetMetadata' smart constructor.
data ProjectsLocationsDataSetsFhirStoresGetMetadata =
  ProjectsLocationsDataSetsFhirStoresGetMetadata'
    { _pldsfsgmXgafv          :: !(Maybe Xgafv)
    , _pldsfsgmUploadProtocol :: !(Maybe Text)
    , _pldsfsgmAccessToken    :: !(Maybe Text)
    , _pldsfsgmUploadType     :: !(Maybe Text)
    , _pldsfsgmName           :: !Text
    , _pldsfsgmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresGetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsgmXgafv'
--
-- * 'pldsfsgmUploadProtocol'
--
-- * 'pldsfsgmAccessToken'
--
-- * 'pldsfsgmUploadType'
--
-- * 'pldsfsgmName'
--
-- * 'pldsfsgmCallback'
projectsLocationsDataSetsFhirStoresGetMetadata
    :: Text -- ^ 'pldsfsgmName'
    -> ProjectsLocationsDataSetsFhirStoresGetMetadata
projectsLocationsDataSetsFhirStoresGetMetadata pPldsfsgmName_ =
  ProjectsLocationsDataSetsFhirStoresGetMetadata'
    { _pldsfsgmXgafv = Nothing
    , _pldsfsgmUploadProtocol = Nothing
    , _pldsfsgmAccessToken = Nothing
    , _pldsfsgmUploadType = Nothing
    , _pldsfsgmName = pPldsfsgmName_
    , _pldsfsgmCallback = Nothing
    }

-- | V1 error format.
pldsfsgmXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata (Maybe Xgafv)
pldsfsgmXgafv
  = lens _pldsfsgmXgafv
      (\ s a -> s{_pldsfsgmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsgmUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata (Maybe Text)
pldsfsgmUploadProtocol
  = lens _pldsfsgmUploadProtocol
      (\ s a -> s{_pldsfsgmUploadProtocol = a})

-- | OAuth access token.
pldsfsgmAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata (Maybe Text)
pldsfsgmAccessToken
  = lens _pldsfsgmAccessToken
      (\ s a -> s{_pldsfsgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsgmUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata (Maybe Text)
pldsfsgmUploadType
  = lens _pldsfsgmUploadType
      (\ s a -> s{_pldsfsgmUploadType = a})

-- | Name of the FHIR store to retrieve the capabilities for.
pldsfsgmName :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata Text
pldsfsgmName
  = lens _pldsfsgmName (\ s a -> s{_pldsfsgmName = a})

-- | JSONP
pldsfsgmCallback :: Lens' ProjectsLocationsDataSetsFhirStoresGetMetadata (Maybe Text)
pldsfsgmCallback
  = lens _pldsfsgmCallback
      (\ s a -> s{_pldsfsgmCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresGetMetadata
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresGetMetadata
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresGetMetadata
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresGetMetadata'{..}
          = go _pldsfsgmName _pldsfsgmXgafv
              _pldsfsgmUploadProtocol
              _pldsfsgmAccessToken
              _pldsfsgmUploadType
              _pldsfsgmCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresGetMetadataResource)
                      mempty
