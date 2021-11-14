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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a FHIR resource. Implements the FHIR standard delete interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#delete),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#delete),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#delete)).
-- Note: Unless resource versioning is disabled by setting the
-- disable_resource_versioning flag on the FHIR store, the deleted
-- resources will be moved to a history repository that can still be
-- retrieved through vread and related methods, unless they are removed by
-- the purge method. For samples that show how to call \`delete\`, see
-- [Deleting a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#deleting_a_fhir_resource).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirDelete
    , ProjectsLocationsDataSetsFhirStoresFhirDelete

    -- * Request Lenses
    , pldsfsfdXgafv
    , pldsfsfdUploadProtocol
    , pldsfsfdAccessToken
    , pldsfsfdUploadType
    , pldsfsfdName
    , pldsfsfdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.delete@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirDelete' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] HTTPBody

-- | Deletes a FHIR resource. Implements the FHIR standard delete interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#delete),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#delete),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#delete)).
-- Note: Unless resource versioning is disabled by setting the
-- disable_resource_versioning flag on the FHIR store, the deleted
-- resources will be moved to a history repository that can still be
-- retrieved through vread and related methods, unless they are removed by
-- the purge method. For samples that show how to call \`delete\`, see
-- [Deleting a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#deleting_a_fhir_resource).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirDelete' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirDelete =
  ProjectsLocationsDataSetsFhirStoresFhirDelete'
    { _pldsfsfdXgafv :: !(Maybe Xgafv)
    , _pldsfsfdUploadProtocol :: !(Maybe Text)
    , _pldsfsfdAccessToken :: !(Maybe Text)
    , _pldsfsfdUploadType :: !(Maybe Text)
    , _pldsfsfdName :: !Text
    , _pldsfsfdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfdXgafv'
--
-- * 'pldsfsfdUploadProtocol'
--
-- * 'pldsfsfdAccessToken'
--
-- * 'pldsfsfdUploadType'
--
-- * 'pldsfsfdName'
--
-- * 'pldsfsfdCallback'
projectsLocationsDataSetsFhirStoresFhirDelete
    :: Text -- ^ 'pldsfsfdName'
    -> ProjectsLocationsDataSetsFhirStoresFhirDelete
projectsLocationsDataSetsFhirStoresFhirDelete pPldsfsfdName_ =
  ProjectsLocationsDataSetsFhirStoresFhirDelete'
    { _pldsfsfdXgafv = Nothing
    , _pldsfsfdUploadProtocol = Nothing
    , _pldsfsfdAccessToken = Nothing
    , _pldsfsfdUploadType = Nothing
    , _pldsfsfdName = pPldsfsfdName_
    , _pldsfsfdCallback = Nothing
    }


-- | V1 error format.
pldsfsfdXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete (Maybe Xgafv)
pldsfsfdXgafv
  = lens _pldsfsfdXgafv
      (\ s a -> s{_pldsfsfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfdUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete (Maybe Text)
pldsfsfdUploadProtocol
  = lens _pldsfsfdUploadProtocol
      (\ s a -> s{_pldsfsfdUploadProtocol = a})

-- | OAuth access token.
pldsfsfdAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete (Maybe Text)
pldsfsfdAccessToken
  = lens _pldsfsfdAccessToken
      (\ s a -> s{_pldsfsfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfdUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete (Maybe Text)
pldsfsfdUploadType
  = lens _pldsfsfdUploadType
      (\ s a -> s{_pldsfsfdUploadType = a})

-- | The name of the resource to delete.
pldsfsfdName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete Text
pldsfsfdName
  = lens _pldsfsfdName (\ s a -> s{_pldsfsfdName = a})

-- | JSONP
pldsfsfdCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirDelete (Maybe Text)
pldsfsfdCallback
  = lens _pldsfsfdCallback
      (\ s a -> s{_pldsfsfdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirDelete
         where
        type Rs ProjectsLocationsDataSetsFhirStoresFhirDelete
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirDelete'{..}
          = go _pldsfsfdName _pldsfsfdXgafv
              _pldsfsfdUploadProtocol
              _pldsfsfdAccessToken
              _pldsfsfdUploadType
              _pldsfsfdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirDeleteResource)
                      mempty
