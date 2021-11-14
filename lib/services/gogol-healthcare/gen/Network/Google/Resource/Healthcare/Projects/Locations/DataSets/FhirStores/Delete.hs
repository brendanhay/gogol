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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified FHIR store and removes all resources within it.
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
    , pldsfsdlXgafv
    , pldsfsdlUploadProtocol
    , pldsfsdlAccessToken
    , pldsfsdlUploadType
    , pldsfsdlName
    , pldsfsdlCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.delete@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresDelete' request conforms to.
type ProjectsLocationsDataSetsFhirStoresDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified FHIR store and removes all resources within it.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresDelete' smart constructor.
data ProjectsLocationsDataSetsFhirStoresDelete =
  ProjectsLocationsDataSetsFhirStoresDelete'
    { _pldsfsdlXgafv :: !(Maybe Xgafv)
    , _pldsfsdlUploadProtocol :: !(Maybe Text)
    , _pldsfsdlAccessToken :: !(Maybe Text)
    , _pldsfsdlUploadType :: !(Maybe Text)
    , _pldsfsdlName :: !Text
    , _pldsfsdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsdlXgafv'
--
-- * 'pldsfsdlUploadProtocol'
--
-- * 'pldsfsdlAccessToken'
--
-- * 'pldsfsdlUploadType'
--
-- * 'pldsfsdlName'
--
-- * 'pldsfsdlCallback'
projectsLocationsDataSetsFhirStoresDelete
    :: Text -- ^ 'pldsfsdlName'
    -> ProjectsLocationsDataSetsFhirStoresDelete
projectsLocationsDataSetsFhirStoresDelete pPldsfsdlName_ =
  ProjectsLocationsDataSetsFhirStoresDelete'
    { _pldsfsdlXgafv = Nothing
    , _pldsfsdlUploadProtocol = Nothing
    , _pldsfsdlAccessToken = Nothing
    , _pldsfsdlUploadType = Nothing
    , _pldsfsdlName = pPldsfsdlName_
    , _pldsfsdlCallback = Nothing
    }


-- | V1 error format.
pldsfsdlXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Xgafv)
pldsfsdlXgafv
  = lens _pldsfsdlXgafv
      (\ s a -> s{_pldsfsdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsdlUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdlUploadProtocol
  = lens _pldsfsdlUploadProtocol
      (\ s a -> s{_pldsfsdlUploadProtocol = a})

-- | OAuth access token.
pldsfsdlAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdlAccessToken
  = lens _pldsfsdlAccessToken
      (\ s a -> s{_pldsfsdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsdlUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdlUploadType
  = lens _pldsfsdlUploadType
      (\ s a -> s{_pldsfsdlUploadType = a})

-- | The resource name of the FHIR store to delete.
pldsfsdlName :: Lens' ProjectsLocationsDataSetsFhirStoresDelete Text
pldsfsdlName
  = lens _pldsfsdlName (\ s a -> s{_pldsfsdlName = a})

-- | JSONP
pldsfsdlCallback :: Lens' ProjectsLocationsDataSetsFhirStoresDelete (Maybe Text)
pldsfsdlCallback
  = lens _pldsfsdlCallback
      (\ s a -> s{_pldsfsdlCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresDelete
         where
        type Rs ProjectsLocationsDataSetsFhirStoresDelete =
             Empty
        type Scopes ProjectsLocationsDataSetsFhirStoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresDelete'{..}
          = go _pldsfsdlName _pldsfsdlXgafv
              _pldsfsdlUploadProtocol
              _pldsfsdlAccessToken
              _pldsfsdlUploadType
              _pldsfsdlCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresDeleteResource)
                      mempty
