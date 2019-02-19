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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the versions of a resource (including the current version and
-- deleted versions) from the FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources._history.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesHistoryListResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesHistoryList
    , ProjectsLocationsDataSetsFhirStoresResourcesHistoryList

    -- * Request Lenses
    , pldsfsrhlXgafv
    , pldsfsrhlUploadProtocol
    , pldsfsrhlAccessToken
    , pldsfsrhlUploadType
    , pldsfsrhlName
    , pldsfsrhlCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources._history.list@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesHistoryList' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesHistoryListResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         "_history" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Lists all the versions of a resource (including the current version and
-- deleted versions) from the FHIR store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesHistoryList' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesHistoryList =
  ProjectsLocationsDataSetsFhirStoresResourcesHistoryList'
    { _pldsfsrhlXgafv          :: !(Maybe Xgafv)
    , _pldsfsrhlUploadProtocol :: !(Maybe Text)
    , _pldsfsrhlAccessToken    :: !(Maybe Text)
    , _pldsfsrhlUploadType     :: !(Maybe Text)
    , _pldsfsrhlName           :: !Text
    , _pldsfsrhlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesHistoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrhlXgafv'
--
-- * 'pldsfsrhlUploadProtocol'
--
-- * 'pldsfsrhlAccessToken'
--
-- * 'pldsfsrhlUploadType'
--
-- * 'pldsfsrhlName'
--
-- * 'pldsfsrhlCallback'
projectsLocationsDataSetsFhirStoresResourcesHistoryList
    :: Text -- ^ 'pldsfsrhlName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesHistoryList
projectsLocationsDataSetsFhirStoresResourcesHistoryList pPldsfsrhlName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesHistoryList'
    { _pldsfsrhlXgafv = Nothing
    , _pldsfsrhlUploadProtocol = Nothing
    , _pldsfsrhlAccessToken = Nothing
    , _pldsfsrhlUploadType = Nothing
    , _pldsfsrhlName = pPldsfsrhlName_
    , _pldsfsrhlCallback = Nothing
    }


-- | V1 error format.
pldsfsrhlXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList (Maybe Xgafv)
pldsfsrhlXgafv
  = lens _pldsfsrhlXgafv
      (\ s a -> s{_pldsfsrhlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrhlUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList (Maybe Text)
pldsfsrhlUploadProtocol
  = lens _pldsfsrhlUploadProtocol
      (\ s a -> s{_pldsfsrhlUploadProtocol = a})

-- | OAuth access token.
pldsfsrhlAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList (Maybe Text)
pldsfsrhlAccessToken
  = lens _pldsfsrhlAccessToken
      (\ s a -> s{_pldsfsrhlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrhlUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList (Maybe Text)
pldsfsrhlUploadType
  = lens _pldsfsrhlUploadType
      (\ s a -> s{_pldsfsrhlUploadType = a})

-- | The name of the resource to retrieve.
pldsfsrhlName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList Text
pldsfsrhlName
  = lens _pldsfsrhlName
      (\ s a -> s{_pldsfsrhlName = a})

-- | JSONP
pldsfsrhlCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryList (Maybe Text)
pldsfsrhlCallback
  = lens _pldsfsrhlCallback
      (\ s a -> s{_pldsfsrhlCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesHistoryList
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesHistoryList
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesHistoryList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesHistoryList'{..}
          = go _pldsfsrhlName _pldsfsrhlXgafv
              _pldsfsrhlUploadProtocol
              _pldsfsrhlAccessToken
              _pldsfsrhlUploadType
              _pldsfsrhlCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesHistoryListResource)
                      mempty
