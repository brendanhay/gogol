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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates part of an existing resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesPatch
    , ProjectsLocationsDataSetsFhirStoresResourcesPatch

    -- * Request Lenses
    , pldsfsrpXgafv
    , pldsfsrpUploadProtocol
    , pldsfsrpAccessToken
    , pldsfsrpUploadType
    , pldsfsrpPayload
    , pldsfsrpName
    , pldsfsrpCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.patch@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesPatch' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesPatchResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPBody :> Patch '[JSON] HTTPBody

-- | Updates part of an existing resource.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesPatch' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesPatch =
  ProjectsLocationsDataSetsFhirStoresResourcesPatch'
    { _pldsfsrpXgafv          :: !(Maybe Xgafv)
    , _pldsfsrpUploadProtocol :: !(Maybe Text)
    , _pldsfsrpAccessToken    :: !(Maybe Text)
    , _pldsfsrpUploadType     :: !(Maybe Text)
    , _pldsfsrpPayload        :: !HTTPBody
    , _pldsfsrpName           :: !Text
    , _pldsfsrpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrpXgafv'
--
-- * 'pldsfsrpUploadProtocol'
--
-- * 'pldsfsrpAccessToken'
--
-- * 'pldsfsrpUploadType'
--
-- * 'pldsfsrpPayload'
--
-- * 'pldsfsrpName'
--
-- * 'pldsfsrpCallback'
projectsLocationsDataSetsFhirStoresResourcesPatch
    :: HTTPBody -- ^ 'pldsfsrpPayload'
    -> Text -- ^ 'pldsfsrpName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesPatch
projectsLocationsDataSetsFhirStoresResourcesPatch pPldsfsrpPayload_ pPldsfsrpName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesPatch'
    { _pldsfsrpXgafv = Nothing
    , _pldsfsrpUploadProtocol = Nothing
    , _pldsfsrpAccessToken = Nothing
    , _pldsfsrpUploadType = Nothing
    , _pldsfsrpPayload = pPldsfsrpPayload_
    , _pldsfsrpName = pPldsfsrpName_
    , _pldsfsrpCallback = Nothing
    }

-- | V1 error format.
pldsfsrpXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch (Maybe Xgafv)
pldsfsrpXgafv
  = lens _pldsfsrpXgafv
      (\ s a -> s{_pldsfsrpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrpUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch (Maybe Text)
pldsfsrpUploadProtocol
  = lens _pldsfsrpUploadProtocol
      (\ s a -> s{_pldsfsrpUploadProtocol = a})

-- | OAuth access token.
pldsfsrpAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch (Maybe Text)
pldsfsrpAccessToken
  = lens _pldsfsrpAccessToken
      (\ s a -> s{_pldsfsrpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrpUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch (Maybe Text)
pldsfsrpUploadType
  = lens _pldsfsrpUploadType
      (\ s a -> s{_pldsfsrpUploadType = a})

-- | Multipart request metadata.
pldsfsrpPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch HTTPBody
pldsfsrpPayload
  = lens _pldsfsrpPayload
      (\ s a -> s{_pldsfsrpPayload = a})

-- | The name of the resource to update.
pldsfsrpName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch Text
pldsfsrpName
  = lens _pldsfsrpName (\ s a -> s{_pldsfsrpName = a})

-- | JSONP
pldsfsrpCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatch (Maybe Text)
pldsfsrpCallback
  = lens _pldsfsrpCallback
      (\ s a -> s{_pldsfsrpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesPatch
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesPatch
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesPatch'{..}
          = go _pldsfsrpName _pldsfsrpXgafv
              _pldsfsrpUploadProtocol
              _pldsfsrpAccessToken
              _pldsfsrpUploadType
              _pldsfsrpCallback
              (Just AltJSON)
              _pldsfsrpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesPatchResource)
                      mempty
