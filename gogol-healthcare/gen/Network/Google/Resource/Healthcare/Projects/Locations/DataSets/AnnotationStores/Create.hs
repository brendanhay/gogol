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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Annotation store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresCreate
    , ProjectsLocationsDataSetsAnnotationStoresCreate

    -- * Request Lenses
    , pldsascParent
    , pldsascXgafv
    , pldsascUploadProtocol
    , pldsascAccessToken
    , pldsascUploadType
    , pldsascPayload
    , pldsascAnnotationStoreId
    , pldsascCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.create@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresCreate' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresCreateResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "annotationStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "annotationStoreId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AnnotationStore :>
                           Post '[JSON] AnnotationStore

-- | Creates a new Annotation store within the parent dataset.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresCreate' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresCreate =
  ProjectsLocationsDataSetsAnnotationStoresCreate'
    { _pldsascParent            :: !Text
    , _pldsascXgafv             :: !(Maybe Xgafv)
    , _pldsascUploadProtocol    :: !(Maybe Text)
    , _pldsascAccessToken       :: !(Maybe Text)
    , _pldsascUploadType        :: !(Maybe Text)
    , _pldsascPayload           :: !AnnotationStore
    , _pldsascAnnotationStoreId :: !(Maybe Text)
    , _pldsascCallback          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsascParent'
--
-- * 'pldsascXgafv'
--
-- * 'pldsascUploadProtocol'
--
-- * 'pldsascAccessToken'
--
-- * 'pldsascUploadType'
--
-- * 'pldsascPayload'
--
-- * 'pldsascAnnotationStoreId'
--
-- * 'pldsascCallback'
projectsLocationsDataSetsAnnotationStoresCreate
    :: Text -- ^ 'pldsascParent'
    -> AnnotationStore -- ^ 'pldsascPayload'
    -> ProjectsLocationsDataSetsAnnotationStoresCreate
projectsLocationsDataSetsAnnotationStoresCreate pPldsascParent_ pPldsascPayload_ =
  ProjectsLocationsDataSetsAnnotationStoresCreate'
    { _pldsascParent = pPldsascParent_
    , _pldsascXgafv = Nothing
    , _pldsascUploadProtocol = Nothing
    , _pldsascAccessToken = Nothing
    , _pldsascUploadType = Nothing
    , _pldsascPayload = pPldsascPayload_
    , _pldsascAnnotationStoreId = Nothing
    , _pldsascCallback = Nothing
    }


-- | The name of the dataset this Annotation store belongs to.
pldsascParent :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate Text
pldsascParent
  = lens _pldsascParent
      (\ s a -> s{_pldsascParent = a})

-- | V1 error format.
pldsascXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Xgafv)
pldsascXgafv
  = lens _pldsascXgafv (\ s a -> s{_pldsascXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsascUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Text)
pldsascUploadProtocol
  = lens _pldsascUploadProtocol
      (\ s a -> s{_pldsascUploadProtocol = a})

-- | OAuth access token.
pldsascAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Text)
pldsascAccessToken
  = lens _pldsascAccessToken
      (\ s a -> s{_pldsascAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsascUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Text)
pldsascUploadType
  = lens _pldsascUploadType
      (\ s a -> s{_pldsascUploadType = a})

-- | Multipart request metadata.
pldsascPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate AnnotationStore
pldsascPayload
  = lens _pldsascPayload
      (\ s a -> s{_pldsascPayload = a})

-- | The ID of the Annotation store that is being created. The string must
-- match the following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`.
pldsascAnnotationStoreId :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Text)
pldsascAnnotationStoreId
  = lens _pldsascAnnotationStoreId
      (\ s a -> s{_pldsascAnnotationStoreId = a})

-- | JSONP
pldsascCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresCreate (Maybe Text)
pldsascCallback
  = lens _pldsascCallback
      (\ s a -> s{_pldsascCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresCreate
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresCreate
             = AnnotationStore
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresCreate'{..}
          = go _pldsascParent _pldsascXgafv
              _pldsascUploadProtocol
              _pldsascAccessToken
              _pldsascUploadType
              _pldsascAnnotationStoreId
              _pldsascCallback
              (Just AltJSON)
              _pldsascPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresCreateResource)
                      mempty
