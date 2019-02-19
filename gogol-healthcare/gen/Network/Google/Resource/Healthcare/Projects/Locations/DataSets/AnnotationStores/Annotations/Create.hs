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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Annotation record. It is valid to create Annotation
-- objects for the same source more than once since a unique ID is assigned
-- to each record by this service.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.annotations.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresAnnotationsCreate
    , ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate

    -- * Request Lenses
    , pldsasacParent
    , pldsasacXgafv
    , pldsasacUploadProtocol
    , pldsasacAccessToken
    , pldsasacUploadType
    , pldsasacPayload
    , pldsasacCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.annotations.create@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreateResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "annotations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Annotation :> Post '[JSON] Annotation

-- | Creates a new Annotation record. It is valid to create Annotation
-- objects for the same source more than once since a unique ID is assigned
-- to each record by this service.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresAnnotationsCreate' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate'
    { _pldsasacParent         :: !Text
    , _pldsasacXgafv          :: !(Maybe Xgafv)
    , _pldsasacUploadProtocol :: !(Maybe Text)
    , _pldsasacAccessToken    :: !(Maybe Text)
    , _pldsasacUploadType     :: !(Maybe Text)
    , _pldsasacPayload        :: !Annotation
    , _pldsasacCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasacParent'
--
-- * 'pldsasacXgafv'
--
-- * 'pldsasacUploadProtocol'
--
-- * 'pldsasacAccessToken'
--
-- * 'pldsasacUploadType'
--
-- * 'pldsasacPayload'
--
-- * 'pldsasacCallback'
projectsLocationsDataSetsAnnotationStoresAnnotationsCreate
    :: Text -- ^ 'pldsasacParent'
    -> Annotation -- ^ 'pldsasacPayload'
    -> ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate
projectsLocationsDataSetsAnnotationStoresAnnotationsCreate pPldsasacParent_ pPldsasacPayload_ =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate'
    { _pldsasacParent = pPldsasacParent_
    , _pldsasacXgafv = Nothing
    , _pldsasacUploadProtocol = Nothing
    , _pldsasacAccessToken = Nothing
    , _pldsasacUploadType = Nothing
    , _pldsasacPayload = pPldsasacPayload_
    , _pldsasacCallback = Nothing
    }


-- | The name of the Annotation store this annotation belongs to. For
-- example,
-- \`projects\/my-project\/locations\/us-central1\/datasets\/mydataset\/annotationStores\/myannotationstore\`.
pldsasacParent :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate Text
pldsasacParent
  = lens _pldsasacParent
      (\ s a -> s{_pldsasacParent = a})

-- | V1 error format.
pldsasacXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate (Maybe Xgafv)
pldsasacXgafv
  = lens _pldsasacXgafv
      (\ s a -> s{_pldsasacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasacUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate (Maybe Text)
pldsasacUploadProtocol
  = lens _pldsasacUploadProtocol
      (\ s a -> s{_pldsasacUploadProtocol = a})

-- | OAuth access token.
pldsasacAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate (Maybe Text)
pldsasacAccessToken
  = lens _pldsasacAccessToken
      (\ s a -> s{_pldsasacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasacUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate (Maybe Text)
pldsasacUploadType
  = lens _pldsasacUploadType
      (\ s a -> s{_pldsasacUploadType = a})

-- | Multipart request metadata.
pldsasacPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate Annotation
pldsasacPayload
  = lens _pldsasacPayload
      (\ s a -> s{_pldsasacPayload = a})

-- | JSONP
pldsasacCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate (Maybe Text)
pldsasacCallback
  = lens _pldsasacCallback
      (\ s a -> s{_pldsasacCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate
             = Annotation
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreate'{..}
          = go _pldsasacParent _pldsasacXgafv
              _pldsasacUploadProtocol
              _pldsasacAccessToken
              _pldsasacUploadType
              _pldsasacCallback
              (Just AltJSON)
              _pldsasacPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreateResource)
                      mempty
