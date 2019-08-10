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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes FHIR resources that match a search query. Implements the FHIR
-- standard [conditional delete
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.13.1).
-- If multiple resources match, all of them will be deleted. Search terms
-- are provided as query parameters following the same pattern as the
-- search method. Note: Unless resource versioning is disabled by setting
-- the disable_resource_versioning flag on the FHIR store, the deleted
-- resources will be moved to a history repository that can still be
-- retrieved through vread and related methods, unless they are removed by
-- the purge method.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalDelete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirConditionalDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirConditionalDelete
    , ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete

    -- * Request Lenses
    , pldsfsfcdParent
    , pldsfsfcdXgafv
    , pldsfsfcdUploadProtocol
    , pldsfsfcdAccessToken
    , pldsfsfcdUploadType
    , pldsfsfcdType
    , pldsfsfcdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirConditionalDeleteResource
     =
     "v1beta1" :>
       Capture "parent" Text :>
         "fhir" :>
           Capture "type" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes FHIR resources that match a search query. Implements the FHIR
-- standard [conditional delete
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.13.1).
-- If multiple resources match, all of them will be deleted. Search terms
-- are provided as query parameters following the same pattern as the
-- search method. Note: Unless resource versioning is disabled by setting
-- the disable_resource_versioning flag on the FHIR store, the deleted
-- resources will be moved to a history repository that can still be
-- retrieved through vread and related methods, unless they are removed by
-- the purge method.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirConditionalDelete' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete =
  ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete'
    { _pldsfsfcdParent         :: !Text
    , _pldsfsfcdXgafv          :: !(Maybe Xgafv)
    , _pldsfsfcdUploadProtocol :: !(Maybe Text)
    , _pldsfsfcdAccessToken    :: !(Maybe Text)
    , _pldsfsfcdUploadType     :: !(Maybe Text)
    , _pldsfsfcdType           :: !Text
    , _pldsfsfcdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfcdParent'
--
-- * 'pldsfsfcdXgafv'
--
-- * 'pldsfsfcdUploadProtocol'
--
-- * 'pldsfsfcdAccessToken'
--
-- * 'pldsfsfcdUploadType'
--
-- * 'pldsfsfcdType'
--
-- * 'pldsfsfcdCallback'
projectsLocationsDataSetsFhirStoresFhirConditionalDelete
    :: Text -- ^ 'pldsfsfcdParent'
    -> Text -- ^ 'pldsfsfcdType'
    -> ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete
projectsLocationsDataSetsFhirStoresFhirConditionalDelete pPldsfsfcdParent_ pPldsfsfcdType_ =
  ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete'
    { _pldsfsfcdParent = pPldsfsfcdParent_
    , _pldsfsfcdXgafv = Nothing
    , _pldsfsfcdUploadProtocol = Nothing
    , _pldsfsfcdAccessToken = Nothing
    , _pldsfsfcdUploadType = Nothing
    , _pldsfsfcdType = pPldsfsfcdType_
    , _pldsfsfcdCallback = Nothing
    }


-- | The name of the FHIR store this resource belongs to.
pldsfsfcdParent :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete Text
pldsfsfcdParent
  = lens _pldsfsfcdParent
      (\ s a -> s{_pldsfsfcdParent = a})

-- | V1 error format.
pldsfsfcdXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete (Maybe Xgafv)
pldsfsfcdXgafv
  = lens _pldsfsfcdXgafv
      (\ s a -> s{_pldsfsfcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfcdUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete (Maybe Text)
pldsfsfcdUploadProtocol
  = lens _pldsfsfcdUploadProtocol
      (\ s a -> s{_pldsfsfcdUploadProtocol = a})

-- | OAuth access token.
pldsfsfcdAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete (Maybe Text)
pldsfsfcdAccessToken
  = lens _pldsfsfcdAccessToken
      (\ s a -> s{_pldsfsfcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfcdUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete (Maybe Text)
pldsfsfcdUploadType
  = lens _pldsfsfcdUploadType
      (\ s a -> s{_pldsfsfcdUploadType = a})

-- | The type of the resource to delete.
pldsfsfcdType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete Text
pldsfsfcdType
  = lens _pldsfsfcdType
      (\ s a -> s{_pldsfsfcdType = a})

-- | JSONP
pldsfsfcdCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete (Maybe Text)
pldsfsfcdCallback
  = lens _pldsfsfcdCallback
      (\ s a -> s{_pldsfsfcdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirConditionalDelete'{..}
          = go _pldsfsfcdParent _pldsfsfcdType _pldsfsfcdXgafv
              _pldsfsfcdUploadProtocol
              _pldsfsfcdAccessToken
              _pldsfsfcdUploadType
              _pldsfsfcdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirConditionalDeleteResource)
                      mempty
