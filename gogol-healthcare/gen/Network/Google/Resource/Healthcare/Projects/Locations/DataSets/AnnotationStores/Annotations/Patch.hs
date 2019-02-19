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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Annotation.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.annotations.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresAnnotationsPatch
    , ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch

    -- * Request Lenses
    , pldsasapXgafv
    , pldsasapUploadProtocol
    , pldsasapUpdateMask
    , pldsasapAccessToken
    , pldsasapUploadType
    , pldsasapPayload
    , pldsasapName
    , pldsasapCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.annotations.patch@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatchResource
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
                       ReqBody '[JSON] Annotation :>
                         Patch '[JSON] Annotation

-- | Updates the Annotation.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresAnnotationsPatch' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch'
    { _pldsasapXgafv          :: !(Maybe Xgafv)
    , _pldsasapUploadProtocol :: !(Maybe Text)
    , _pldsasapUpdateMask     :: !(Maybe GFieldMask)
    , _pldsasapAccessToken    :: !(Maybe Text)
    , _pldsasapUploadType     :: !(Maybe Text)
    , _pldsasapPayload        :: !Annotation
    , _pldsasapName           :: !Text
    , _pldsasapCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasapXgafv'
--
-- * 'pldsasapUploadProtocol'
--
-- * 'pldsasapUpdateMask'
--
-- * 'pldsasapAccessToken'
--
-- * 'pldsasapUploadType'
--
-- * 'pldsasapPayload'
--
-- * 'pldsasapName'
--
-- * 'pldsasapCallback'
projectsLocationsDataSetsAnnotationStoresAnnotationsPatch
    :: Annotation -- ^ 'pldsasapPayload'
    -> Text -- ^ 'pldsasapName'
    -> ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch
projectsLocationsDataSetsAnnotationStoresAnnotationsPatch pPldsasapPayload_ pPldsasapName_ =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch'
    { _pldsasapXgafv = Nothing
    , _pldsasapUploadProtocol = Nothing
    , _pldsasapUpdateMask = Nothing
    , _pldsasapAccessToken = Nothing
    , _pldsasapUploadType = Nothing
    , _pldsasapPayload = pPldsasapPayload_
    , _pldsasapName = pPldsasapName_
    , _pldsasapCallback = Nothing
    }

-- | V1 error format.
pldsasapXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe Xgafv)
pldsasapXgafv
  = lens _pldsasapXgafv
      (\ s a -> s{_pldsasapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasapUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe Text)
pldsasapUploadProtocol
  = lens _pldsasapUploadProtocol
      (\ s a -> s{_pldsasapUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldsasapUpdateMask :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe GFieldMask)
pldsasapUpdateMask
  = lens _pldsasapUpdateMask
      (\ s a -> s{_pldsasapUpdateMask = a})

-- | OAuth access token.
pldsasapAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe Text)
pldsasapAccessToken
  = lens _pldsasapAccessToken
      (\ s a -> s{_pldsasapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasapUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe Text)
pldsasapUploadType
  = lens _pldsasapUploadType
      (\ s a -> s{_pldsasapUploadType = a})

-- | Multipart request metadata.
pldsasapPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch Annotation
pldsasapPayload
  = lens _pldsasapPayload
      (\ s a -> s{_pldsasapPayload = a})

-- | Output only. Resource name of the Annotation, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/annotationStores\/{annotation_store_id}\/annotations\/{annotation_id}\`.
pldsasapName :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch Text
pldsasapName
  = lens _pldsasapName (\ s a -> s{_pldsasapName = a})

-- | JSONP
pldsasapCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch (Maybe Text)
pldsasapCallback
  = lens _pldsasapCallback
      (\ s a -> s{_pldsasapCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch
             = Annotation
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatch'{..}
          = go _pldsasapName _pldsasapXgafv
              _pldsasapUploadProtocol
              _pldsasapUpdateMask
              _pldsasapAccessToken
              _pldsasapUploadType
              _pldsasapCallback
              (Just AltJSON)
              _pldsasapPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatchResource)
                      mempty
