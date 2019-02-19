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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the FHIR store and removes all resources that are contained
-- within it.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresDelete
    , ProjectsLocationsDataSetsFhirStoresDelete

    -- * Request Lenses
    , pldsfsdXgafv
    , pldsfsdUploadProtocol
    , pldsfsdAccessToken
    , pldsfsdUploadType
    , pldsfsdName
    , pldsfsdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.delete@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresDelete' request conforms to.
type ProjectsLocationsDataSetsFhirStoresDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the FHIR store and removes all resources that are contained
-- within it.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresDelete' smart constructor.
data ProjectsLocationsDataSetsFhirStoresDelete =
  ProjectsLocationsDataSetsFhirStoresDelete'
    { _pldsfsdXgafv          :: !(Maybe Xgafv)
    , _pldsfsdUploadProtocol :: !(Maybe Text)
    , _pldsfsdAccessToken    :: !(Maybe Text)
    , _pldsfsdUploadType     :: !(Maybe Text)
    , _pldsfsdName           :: !Text
    , _pldsfsdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresDelete' with the minimum fields required to make a request.
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
-- * 'pldsfsdName'
--
-- * 'pldsfsdCallback'
projectsLocationsDataSetsFhirStoresDelete
    :: Text -- ^ 'pldsfsdName'
    -> ProjectsLocationsDataSetsFhirStoresDelete
projectsLocationsDataSetsFhirStoresDelete pPldsfsdName_ =
  ProjectsLocationsDataSetsFhirStoresDelete'
    { _pldsfsdXgafv = Nothing
    , _pldsfsdUploadProtocol = Nothing
    , _pldsfsdAccessToken = Nothing
    , _pldsfsdUploadType = Nothing
    , _pldsfsdName = pPldsfsdName_
    , _pldsfsdCallback = Nothing
    }


-- | V1 error format.
pldsfsdXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Xgafv)
pldsfsdXgafv
  = lens _pldsfsdXgafv (\ s a -> s{_pldsfsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsdUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdUploadProtocol
  = lens _pldsfsdUploadProtocol
      (\ s a -> s{_pldsfsdUploadProtocol = a})

-- | OAuth access token.
pldsfsdAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdAccessToken
  = lens _pldsfsdAccessToken
      (\ s a -> s{_pldsfsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsdUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdUploadType
  = lens _pldsfsdUploadType
      (\ s a -> s{_pldsfsdUploadType = a})

-- | The resource name of the FHIR store to delete.
pldsfsdName :: Lens' ProjectsLocationsDataSetsFhirStoresDelete Text
pldsfsdName
  = lens _pldsfsdName (\ s a -> s{_pldsfsdName = a})

-- | JSONP
pldsfsdCallback :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdCallback
  = lens _pldsfsdCallback
      (\ s a -> s{_pldsfsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresDelete
         where
        type Rs ProjectsLocationsDataSetsFhirStoresDelete =
             Empty
        type Scopes ProjectsLocationsDataSetsFhirStoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresDelete'{..}
          = go _pldsfsdName _pldsfsdXgafv
              _pldsfsdUploadProtocol
              _pldsfsdAccessToken
              _pldsfsdUploadType
              _pldsfsdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresDeleteResource)
                      mempty
