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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch

    -- * Request Lenses
    , pldscsudmapXgafv
    , pldscsudmapUploadProtocol
    , pldscsudmapUpdateMask
    , pldscsudmapAccessToken
    , pldscsudmapUploadType
    , pldscsudmapPayload
    , pldscsudmapName
    , pldscsudmapCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.patch@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UserDataMApping :>
                         Patch '[JSON] UserDataMApping

-- | Updates the specified User data mapping.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsPatch' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch'
    { _pldscsudmapXgafv :: !(Maybe Xgafv)
    , _pldscsudmapUploadProtocol :: !(Maybe Text)
    , _pldscsudmapUpdateMask :: !(Maybe GFieldMask)
    , _pldscsudmapAccessToken :: !(Maybe Text)
    , _pldscsudmapUploadType :: !(Maybe Text)
    , _pldscsudmapPayload :: !UserDataMApping
    , _pldscsudmapName :: !Text
    , _pldscsudmapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmapXgafv'
--
-- * 'pldscsudmapUploadProtocol'
--
-- * 'pldscsudmapUpdateMask'
--
-- * 'pldscsudmapAccessToken'
--
-- * 'pldscsudmapUploadType'
--
-- * 'pldscsudmapPayload'
--
-- * 'pldscsudmapName'
--
-- * 'pldscsudmapCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
    :: UserDataMApping -- ^ 'pldscsudmapPayload'
    -> Text -- ^ 'pldscsudmapName'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
projectsLocationsDataSetsConsentStoresUserDataMAppingsPatch pPldscsudmapPayload_ pPldscsudmapName_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch'
    { _pldscsudmapXgafv = Nothing
    , _pldscsudmapUploadProtocol = Nothing
    , _pldscsudmapUpdateMask = Nothing
    , _pldscsudmapAccessToken = Nothing
    , _pldscsudmapUploadType = Nothing
    , _pldscsudmapPayload = pPldscsudmapPayload_
    , _pldscsudmapName = pPldscsudmapName_
    , _pldscsudmapCallback = Nothing
    }


-- | V1 error format.
pldscsudmapXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe Xgafv)
pldscsudmapXgafv
  = lens _pldscsudmapXgafv
      (\ s a -> s{_pldscsudmapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmapUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe Text)
pldscsudmapUploadProtocol
  = lens _pldscsudmapUploadProtocol
      (\ s a -> s{_pldscsudmapUploadProtocol = a})

-- | Required. The update mask that applies to the resource. For the
-- \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask.
-- Only the \`data_id\`, \`user_id\` and \`resource_attributes\` fields can
-- be updated.
pldscsudmapUpdateMask :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe GFieldMask)
pldscsudmapUpdateMask
  = lens _pldscsudmapUpdateMask
      (\ s a -> s{_pldscsudmapUpdateMask = a})

-- | OAuth access token.
pldscsudmapAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe Text)
pldscsudmapAccessToken
  = lens _pldscsudmapAccessToken
      (\ s a -> s{_pldscsudmapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmapUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe Text)
pldscsudmapUploadType
  = lens _pldscsudmapUploadType
      (\ s a -> s{_pldscsudmapUploadType = a})

-- | Multipart request metadata.
pldscsudmapPayload :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch UserDataMApping
pldscsudmapPayload
  = lens _pldscsudmapPayload
      (\ s a -> s{_pldscsudmapPayload = a})

-- | Resource name of the User data mapping, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/userDataMappings\/{user_data_mapping_id}\`.
pldscsudmapName :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch Text
pldscsudmapName
  = lens _pldscsudmapName
      (\ s a -> s{_pldscsudmapName = a})

-- | JSONP
pldscsudmapCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch (Maybe Text)
pldscsudmapCallback
  = lens _pldscsudmapCallback
      (\ s a -> s{_pldscsudmapCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
             = UserDataMApping
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatch'{..}
          = go _pldscsudmapName _pldscsudmapXgafv
              _pldscsudmapUploadProtocol
              _pldscsudmapUpdateMask
              _pldscsudmapAccessToken
              _pldscsudmapUploadType
              _pldscsudmapCallback
              (Just AltJSON)
              _pldscsudmapPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatchResource)
                      mempty
