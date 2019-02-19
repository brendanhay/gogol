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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresGet
    , ProjectsLocationsDataSetsFhirStoresGet

    -- * Request Lenses
    , pldsfsgXgafv
    , pldsfsgUploadProtocol
    , pldsfsgAccessToken
    , pldsfsgUploadType
    , pldsfsgName
    , pldsfsgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.get@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresGet' request conforms to.
type ProjectsLocationsDataSetsFhirStoresGetResource =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] FhirStore

-- | Gets the specified FHIR store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresGet' smart constructor.
data ProjectsLocationsDataSetsFhirStoresGet =
  ProjectsLocationsDataSetsFhirStoresGet'
    { _pldsfsgXgafv          :: !(Maybe Xgafv)
    , _pldsfsgUploadProtocol :: !(Maybe Text)
    , _pldsfsgAccessToken    :: !(Maybe Text)
    , _pldsfsgUploadType     :: !(Maybe Text)
    , _pldsfsgName           :: !Text
    , _pldsfsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsgXgafv'
--
-- * 'pldsfsgUploadProtocol'
--
-- * 'pldsfsgAccessToken'
--
-- * 'pldsfsgUploadType'
--
-- * 'pldsfsgName'
--
-- * 'pldsfsgCallback'
projectsLocationsDataSetsFhirStoresGet
    :: Text -- ^ 'pldsfsgName'
    -> ProjectsLocationsDataSetsFhirStoresGet
projectsLocationsDataSetsFhirStoresGet pPldsfsgName_ =
  ProjectsLocationsDataSetsFhirStoresGet'
    { _pldsfsgXgafv = Nothing
    , _pldsfsgUploadProtocol = Nothing
    , _pldsfsgAccessToken = Nothing
    , _pldsfsgUploadType = Nothing
    , _pldsfsgName = pPldsfsgName_
    , _pldsfsgCallback = Nothing
    }

-- | V1 error format.
pldsfsgXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresGet (Maybe Xgafv)
pldsfsgXgafv
  = lens _pldsfsgXgafv (\ s a -> s{_pldsfsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsgUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresGet (Maybe Text)
pldsfsgUploadProtocol
  = lens _pldsfsgUploadProtocol
      (\ s a -> s{_pldsfsgUploadProtocol = a})

-- | OAuth access token.
pldsfsgAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresGet (Maybe Text)
pldsfsgAccessToken
  = lens _pldsfsgAccessToken
      (\ s a -> s{_pldsfsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsgUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresGet (Maybe Text)
pldsfsgUploadType
  = lens _pldsfsgUploadType
      (\ s a -> s{_pldsfsgUploadType = a})

-- | The resource name of the FHIR store to get.
pldsfsgName :: Lens' ProjectsLocationsDataSetsFhirStoresGet Text
pldsfsgName
  = lens _pldsfsgName (\ s a -> s{_pldsfsgName = a})

-- | JSONP
pldsfsgCallback :: Lens' ProjectsLocationsDataSetsFhirStoresGet (Maybe Text)
pldsfsgCallback
  = lens _pldsfsgCallback
      (\ s a -> s{_pldsfsgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresGet
         where
        type Rs ProjectsLocationsDataSetsFhirStoresGet =
             FhirStore
        type Scopes ProjectsLocationsDataSetsFhirStoresGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresGet'{..}
          = go _pldsfsgName _pldsfsgXgafv
              _pldsfsgUploadProtocol
              _pldsfsgAccessToken
              _pldsfsgUploadType
              _pldsfsgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsFhirStoresGetResource)
                      mempty
