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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Annotation store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresPatch
    , ProjectsLocationsDataSetsAnnotationStoresPatch

    -- * Request Lenses
    , pldsaspXgafv
    , pldsaspUploadProtocol
    , pldsaspUpdateMask
    , pldsaspAccessToken
    , pldsaspUploadType
    , pldsaspPayload
    , pldsaspName
    , pldsaspCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.patch@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresPatch' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresPatchResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AnnotationStore :>
                         Patch '[JSON] AnnotationStore

-- | Updates the specified Annotation store.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresPatch' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresPatch =
  ProjectsLocationsDataSetsAnnotationStoresPatch'
    { _pldsaspXgafv          :: !(Maybe Xgafv)
    , _pldsaspUploadProtocol :: !(Maybe Text)
    , _pldsaspUpdateMask     :: !(Maybe GFieldMask)
    , _pldsaspAccessToken    :: !(Maybe Text)
    , _pldsaspUploadType     :: !(Maybe Text)
    , _pldsaspPayload        :: !AnnotationStore
    , _pldsaspName           :: !Text
    , _pldsaspCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsaspXgafv'
--
-- * 'pldsaspUploadProtocol'
--
-- * 'pldsaspUpdateMask'
--
-- * 'pldsaspAccessToken'
--
-- * 'pldsaspUploadType'
--
-- * 'pldsaspPayload'
--
-- * 'pldsaspName'
--
-- * 'pldsaspCallback'
projectsLocationsDataSetsAnnotationStoresPatch
    :: AnnotationStore -- ^ 'pldsaspPayload'
    -> Text -- ^ 'pldsaspName'
    -> ProjectsLocationsDataSetsAnnotationStoresPatch
projectsLocationsDataSetsAnnotationStoresPatch pPldsaspPayload_ pPldsaspName_ =
  ProjectsLocationsDataSetsAnnotationStoresPatch'
    { _pldsaspXgafv = Nothing
    , _pldsaspUploadProtocol = Nothing
    , _pldsaspUpdateMask = Nothing
    , _pldsaspAccessToken = Nothing
    , _pldsaspUploadType = Nothing
    , _pldsaspPayload = pPldsaspPayload_
    , _pldsaspName = pPldsaspName_
    , _pldsaspCallback = Nothing
    }

-- | V1 error format.
pldsaspXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe Xgafv)
pldsaspXgafv
  = lens _pldsaspXgafv (\ s a -> s{_pldsaspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsaspUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe Text)
pldsaspUploadProtocol
  = lens _pldsaspUploadProtocol
      (\ s a -> s{_pldsaspUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldsaspUpdateMask :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe GFieldMask)
pldsaspUpdateMask
  = lens _pldsaspUpdateMask
      (\ s a -> s{_pldsaspUpdateMask = a})

-- | OAuth access token.
pldsaspAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe Text)
pldsaspAccessToken
  = lens _pldsaspAccessToken
      (\ s a -> s{_pldsaspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsaspUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe Text)
pldsaspUploadType
  = lens _pldsaspUploadType
      (\ s a -> s{_pldsaspUploadType = a})

-- | Multipart request metadata.
pldsaspPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch AnnotationStore
pldsaspPayload
  = lens _pldsaspPayload
      (\ s a -> s{_pldsaspPayload = a})

-- | Output only. Resource name of the Annotation store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/annotationStores\/{annotation_store_id}\`.
pldsaspName :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch Text
pldsaspName
  = lens _pldsaspName (\ s a -> s{_pldsaspName = a})

-- | JSONP
pldsaspCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresPatch (Maybe Text)
pldsaspCallback
  = lens _pldsaspCallback
      (\ s a -> s{_pldsaspCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresPatch
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresPatch
             = AnnotationStore
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresPatch'{..}
          = go _pldsaspName _pldsaspXgafv
              _pldsaspUploadProtocol
              _pldsaspUpdateMask
              _pldsaspAccessToken
              _pldsaspUploadType
              _pldsaspCallback
              (Just AltJSON)
              _pldsaspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresPatchResource)
                      mempty
