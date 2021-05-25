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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.CheckDataAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks if a particular data_id of a User data mapping in the specified
-- consent store is consented for the specified use.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.checkDataAccess@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.CheckDataAccess
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresCheckDataAccessResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresCheckDataAccess
    , ProjectsLocationsDataSetsConsentStoresCheckDataAccess

    -- * Request Lenses
    , pldscscdaXgafv
    , pldscscdaUploadProtocol
    , pldscscdaAccessToken
    , pldscscdaUploadType
    , pldscscdaPayload
    , pldscscdaConsentStore
    , pldscscdaCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.checkDataAccess@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresCheckDataAccess' request conforms to.
type ProjectsLocationsDataSetsConsentStoresCheckDataAccessResource
     =
     "v1" :>
       CaptureMode "consentStore" "checkDataAccess" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CheckDataAccessRequest :>
                       Post '[JSON] CheckDataAccessResponse

-- | Checks if a particular data_id of a User data mapping in the specified
-- consent store is consented for the specified use.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresCheckDataAccess' smart constructor.
data ProjectsLocationsDataSetsConsentStoresCheckDataAccess =
  ProjectsLocationsDataSetsConsentStoresCheckDataAccess'
    { _pldscscdaXgafv :: !(Maybe Xgafv)
    , _pldscscdaUploadProtocol :: !(Maybe Text)
    , _pldscscdaAccessToken :: !(Maybe Text)
    , _pldscscdaUploadType :: !(Maybe Text)
    , _pldscscdaPayload :: !CheckDataAccessRequest
    , _pldscscdaConsentStore :: !Text
    , _pldscscdaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresCheckDataAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscdaXgafv'
--
-- * 'pldscscdaUploadProtocol'
--
-- * 'pldscscdaAccessToken'
--
-- * 'pldscscdaUploadType'
--
-- * 'pldscscdaPayload'
--
-- * 'pldscscdaConsentStore'
--
-- * 'pldscscdaCallback'
projectsLocationsDataSetsConsentStoresCheckDataAccess
    :: CheckDataAccessRequest -- ^ 'pldscscdaPayload'
    -> Text -- ^ 'pldscscdaConsentStore'
    -> ProjectsLocationsDataSetsConsentStoresCheckDataAccess
projectsLocationsDataSetsConsentStoresCheckDataAccess pPldscscdaPayload_ pPldscscdaConsentStore_ =
  ProjectsLocationsDataSetsConsentStoresCheckDataAccess'
    { _pldscscdaXgafv = Nothing
    , _pldscscdaUploadProtocol = Nothing
    , _pldscscdaAccessToken = Nothing
    , _pldscscdaUploadType = Nothing
    , _pldscscdaPayload = pPldscscdaPayload_
    , _pldscscdaConsentStore = pPldscscdaConsentStore_
    , _pldscscdaCallback = Nothing
    }


-- | V1 error format.
pldscscdaXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess (Maybe Xgafv)
pldscscdaXgafv
  = lens _pldscscdaXgafv
      (\ s a -> s{_pldscscdaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscdaUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess (Maybe Text)
pldscscdaUploadProtocol
  = lens _pldscscdaUploadProtocol
      (\ s a -> s{_pldscscdaUploadProtocol = a})

-- | OAuth access token.
pldscscdaAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess (Maybe Text)
pldscscdaAccessToken
  = lens _pldscscdaAccessToken
      (\ s a -> s{_pldscscdaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscdaUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess (Maybe Text)
pldscscdaUploadType
  = lens _pldscscdaUploadType
      (\ s a -> s{_pldscscdaUploadType = a})

-- | Multipart request metadata.
pldscscdaPayload :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess CheckDataAccessRequest
pldscscdaPayload
  = lens _pldscscdaPayload
      (\ s a -> s{_pldscscdaPayload = a})

-- | Required. Name of the consent store where the requested data_id is
-- stored, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\`.
pldscscdaConsentStore :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess Text
pldscscdaConsentStore
  = lens _pldscscdaConsentStore
      (\ s a -> s{_pldscscdaConsentStore = a})

-- | JSONP
pldscscdaCallback :: Lens' ProjectsLocationsDataSetsConsentStoresCheckDataAccess (Maybe Text)
pldscscdaCallback
  = lens _pldscscdaCallback
      (\ s a -> s{_pldscscdaCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresCheckDataAccess
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresCheckDataAccess
             = CheckDataAccessResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresCheckDataAccess
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresCheckDataAccess'{..}
          = go _pldscscdaConsentStore _pldscscdaXgafv
              _pldscscdaUploadProtocol
              _pldscscdaAccessToken
              _pldscscdaUploadType
              _pldscscdaCallback
              (Just AltJSON)
              _pldscscdaPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresCheckDataAccessResource)
                      mempty
