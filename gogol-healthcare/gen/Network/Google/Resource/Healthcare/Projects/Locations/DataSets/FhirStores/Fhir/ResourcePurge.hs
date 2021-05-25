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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all the historical versions of a resource (excluding the current
-- version) from the FHIR store. To remove all versions of a resource,
-- first delete the current version and then call this method. This is not
-- a FHIR standard operation. For samples that show how to call
-- \`Resource-purge\`, see [Deleting historical versions of a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#deleting_historical_versions_of_a_fhir_resource).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirResourcePurgeResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirResourcePurge
    , ProjectsLocationsDataSetsFhirStoresFhirResourcePurge

    -- * Request Lenses
    , pldsfsfrpXgafv
    , pldsfsfrpUploadProtocol
    , pldsfsfrpAccessToken
    , pldsfsfrpUploadType
    , pldsfsfrpName
    , pldsfsfrpCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirResourcePurge' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirResourcePurgeResource
     =
     "v1" :>
       Capture "name" Text :>
         "$purge" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes all the historical versions of a resource (excluding the current
-- version) from the FHIR store. To remove all versions of a resource,
-- first delete the current version and then call this method. This is not
-- a FHIR standard operation. For samples that show how to call
-- \`Resource-purge\`, see [Deleting historical versions of a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#deleting_historical_versions_of_a_fhir_resource).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirResourcePurge' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirResourcePurge =
  ProjectsLocationsDataSetsFhirStoresFhirResourcePurge'
    { _pldsfsfrpXgafv :: !(Maybe Xgafv)
    , _pldsfsfrpUploadProtocol :: !(Maybe Text)
    , _pldsfsfrpAccessToken :: !(Maybe Text)
    , _pldsfsfrpUploadType :: !(Maybe Text)
    , _pldsfsfrpName :: !Text
    , _pldsfsfrpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirResourcePurge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfrpXgafv'
--
-- * 'pldsfsfrpUploadProtocol'
--
-- * 'pldsfsfrpAccessToken'
--
-- * 'pldsfsfrpUploadType'
--
-- * 'pldsfsfrpName'
--
-- * 'pldsfsfrpCallback'
projectsLocationsDataSetsFhirStoresFhirResourcePurge
    :: Text -- ^ 'pldsfsfrpName'
    -> ProjectsLocationsDataSetsFhirStoresFhirResourcePurge
projectsLocationsDataSetsFhirStoresFhirResourcePurge pPldsfsfrpName_ =
  ProjectsLocationsDataSetsFhirStoresFhirResourcePurge'
    { _pldsfsfrpXgafv = Nothing
    , _pldsfsfrpUploadProtocol = Nothing
    , _pldsfsfrpAccessToken = Nothing
    , _pldsfsfrpUploadType = Nothing
    , _pldsfsfrpName = pPldsfsfrpName_
    , _pldsfsfrpCallback = Nothing
    }


-- | V1 error format.
pldsfsfrpXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge (Maybe Xgafv)
pldsfsfrpXgafv
  = lens _pldsfsfrpXgafv
      (\ s a -> s{_pldsfsfrpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfrpUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge (Maybe Text)
pldsfsfrpUploadProtocol
  = lens _pldsfsfrpUploadProtocol
      (\ s a -> s{_pldsfsfrpUploadProtocol = a})

-- | OAuth access token.
pldsfsfrpAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge (Maybe Text)
pldsfsfrpAccessToken
  = lens _pldsfsfrpAccessToken
      (\ s a -> s{_pldsfsfrpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfrpUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge (Maybe Text)
pldsfsfrpUploadType
  = lens _pldsfsfrpUploadType
      (\ s a -> s{_pldsfsfrpUploadType = a})

-- | The name of the resource to purge.
pldsfsfrpName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge Text
pldsfsfrpName
  = lens _pldsfsfrpName
      (\ s a -> s{_pldsfsfrpName = a})

-- | JSONP
pldsfsfrpCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirResourcePurge (Maybe Text)
pldsfsfrpCallback
  = lens _pldsfsfrpCallback
      (\ s a -> s{_pldsfsfrpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirResourcePurge
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirResourcePurge
             = Empty
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirResourcePurge
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirResourcePurge'{..}
          = go _pldsfsfrpName _pldsfsfrpXgafv
              _pldsfsfrpUploadProtocol
              _pldsfsfrpAccessToken
              _pldsfsfrpUploadType
              _pldsfsfrpCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirResourcePurgeResource)
                      mempty
