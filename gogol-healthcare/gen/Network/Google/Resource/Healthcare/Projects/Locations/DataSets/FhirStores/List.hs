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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the FHIR stores in the given dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresList
    , ProjectsLocationsDataSetsFhirStoresList

    -- * Request Lenses
    , pldsfslParent
    , pldsfslXgafv
    , pldsfslUploadProtocol
    , pldsfslAccessToken
    , pldsfslUploadType
    , pldsfslPageToken
    , pldsfslPageSize
    , pldsfslCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.list@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresList' request conforms to.
type ProjectsLocationsDataSetsFhirStoresListResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "fhirStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListFhirStoresResponse

-- | Lists the FHIR stores in the given dataset.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresList' smart constructor.
data ProjectsLocationsDataSetsFhirStoresList =
  ProjectsLocationsDataSetsFhirStoresList'
    { _pldsfslParent         :: !Text
    , _pldsfslXgafv          :: !(Maybe Xgafv)
    , _pldsfslUploadProtocol :: !(Maybe Text)
    , _pldsfslAccessToken    :: !(Maybe Text)
    , _pldsfslUploadType     :: !(Maybe Text)
    , _pldsfslPageToken      :: !(Maybe Text)
    , _pldsfslPageSize       :: !(Maybe (Textual Int32))
    , _pldsfslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfslParent'
--
-- * 'pldsfslXgafv'
--
-- * 'pldsfslUploadProtocol'
--
-- * 'pldsfslAccessToken'
--
-- * 'pldsfslUploadType'
--
-- * 'pldsfslPageToken'
--
-- * 'pldsfslPageSize'
--
-- * 'pldsfslCallback'
projectsLocationsDataSetsFhirStoresList
    :: Text -- ^ 'pldsfslParent'
    -> ProjectsLocationsDataSetsFhirStoresList
projectsLocationsDataSetsFhirStoresList pPldsfslParent_ =
  ProjectsLocationsDataSetsFhirStoresList'
    { _pldsfslParent = pPldsfslParent_
    , _pldsfslXgafv = Nothing
    , _pldsfslUploadProtocol = Nothing
    , _pldsfslAccessToken = Nothing
    , _pldsfslUploadType = Nothing
    , _pldsfslPageToken = Nothing
    , _pldsfslPageSize = Nothing
    , _pldsfslCallback = Nothing
    }


-- | Name of the dataset.
pldsfslParent :: Lens' ProjectsLocationsDataSetsFhirStoresList Text
pldsfslParent
  = lens _pldsfslParent
      (\ s a -> s{_pldsfslParent = a})

-- | V1 error format.
pldsfslXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Xgafv)
pldsfslXgafv
  = lens _pldsfslXgafv (\ s a -> s{_pldsfslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfslUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslUploadProtocol
  = lens _pldsfslUploadProtocol
      (\ s a -> s{_pldsfslUploadProtocol = a})

-- | OAuth access token.
pldsfslAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslAccessToken
  = lens _pldsfslAccessToken
      (\ s a -> s{_pldsfslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfslUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslUploadType
  = lens _pldsfslUploadType
      (\ s a -> s{_pldsfslUploadType = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldsfslPageToken :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslPageToken
  = lens _pldsfslPageToken
      (\ s a -> s{_pldsfslPageToken = a})

-- | Limit on the number of FHIR stores to return in a single response. If
-- zero the default page size of 100 is used.
pldsfslPageSize :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Int32)
pldsfslPageSize
  = lens _pldsfslPageSize
      (\ s a -> s{_pldsfslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsfslCallback :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslCallback
  = lens _pldsfslCallback
      (\ s a -> s{_pldsfslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresList
         where
        type Rs ProjectsLocationsDataSetsFhirStoresList =
             ListFhirStoresResponse
        type Scopes ProjectsLocationsDataSetsFhirStoresList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresList'{..}
          = go _pldsfslParent _pldsfslXgafv
              _pldsfslUploadProtocol
              _pldsfslAccessToken
              _pldsfslUploadType
              _pldsfslPageToken
              _pldsfslPageSize
              _pldsfslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresListResource)
                      mempty
