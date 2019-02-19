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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Annotations in the given Annotation store for a source
-- resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.annotations.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresAnnotationsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresAnnotationsList
    , ProjectsLocationsDataSetsAnnotationStoresAnnotationsList

    -- * Request Lenses
    , pldsasalParent
    , pldsasalXgafv
    , pldsasalUploadProtocol
    , pldsasalAccessToken
    , pldsasalUploadType
    , pldsasalFilter
    , pldsasalPageToken
    , pldsasalPageSize
    , pldsasalCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.annotations.list@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsList' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresAnnotationsListResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "annotations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAnnotationsResponse

-- | Lists the Annotations in the given Annotation store for a source
-- resource.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresAnnotationsList' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresAnnotationsList =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsList'
    { _pldsasalParent         :: !Text
    , _pldsasalXgafv          :: !(Maybe Xgafv)
    , _pldsasalUploadProtocol :: !(Maybe Text)
    , _pldsasalAccessToken    :: !(Maybe Text)
    , _pldsasalUploadType     :: !(Maybe Text)
    , _pldsasalFilter         :: !(Maybe Text)
    , _pldsasalPageToken      :: !(Maybe Text)
    , _pldsasalPageSize       :: !(Maybe (Textual Int32))
    , _pldsasalCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasalParent'
--
-- * 'pldsasalXgafv'
--
-- * 'pldsasalUploadProtocol'
--
-- * 'pldsasalAccessToken'
--
-- * 'pldsasalUploadType'
--
-- * 'pldsasalFilter'
--
-- * 'pldsasalPageToken'
--
-- * 'pldsasalPageSize'
--
-- * 'pldsasalCallback'
projectsLocationsDataSetsAnnotationStoresAnnotationsList
    :: Text -- ^ 'pldsasalParent'
    -> ProjectsLocationsDataSetsAnnotationStoresAnnotationsList
projectsLocationsDataSetsAnnotationStoresAnnotationsList pPldsasalParent_ =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsList'
    { _pldsasalParent = pPldsasalParent_
    , _pldsasalXgafv = Nothing
    , _pldsasalUploadProtocol = Nothing
    , _pldsasalAccessToken = Nothing
    , _pldsasalUploadType = Nothing
    , _pldsasalFilter = Nothing
    , _pldsasalPageToken = Nothing
    , _pldsasalPageSize = Nothing
    , _pldsasalCallback = Nothing
    }

-- | Name of the Annotation store to retrieve Annotations from.
pldsasalParent :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList Text
pldsasalParent
  = lens _pldsasalParent
      (\ s a -> s{_pldsasalParent = a})

-- | V1 error format.
pldsasalXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Xgafv)
pldsasalXgafv
  = lens _pldsasalXgafv
      (\ s a -> s{_pldsasalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasalUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalUploadProtocol
  = lens _pldsasalUploadProtocol
      (\ s a -> s{_pldsasalUploadProtocol = a})

-- | OAuth access token.
pldsasalAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalAccessToken
  = lens _pldsasalAccessToken
      (\ s a -> s{_pldsasalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasalUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalUploadType
  = lens _pldsasalUploadType
      (\ s a -> s{_pldsasalUploadType = a})

-- | Restricts Annotations returned to those matching a filter. Syntax:
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search\/query_strings
-- Fields\/functions available for filtering are: - source_version
pldsasalFilter :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalFilter
  = lens _pldsasalFilter
      (\ s a -> s{_pldsasalFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldsasalPageToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalPageToken
  = lens _pldsasalPageToken
      (\ s a -> s{_pldsasalPageToken = a})

-- | Limit on the number of Annotations to return in a single response. If
-- zero the default page size of 100 is used.
pldsasalPageSize :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Int32)
pldsasalPageSize
  = lens _pldsasalPageSize
      (\ s a -> s{_pldsasalPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsasalCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsList (Maybe Text)
pldsasalCallback
  = lens _pldsasalCallback
      (\ s a -> s{_pldsasalCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresAnnotationsList
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsList
             = ListAnnotationsResponse
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresAnnotationsList'{..}
          = go _pldsasalParent _pldsasalXgafv
              _pldsasalUploadProtocol
              _pldsasalAccessToken
              _pldsasalUploadType
              _pldsasalFilter
              _pldsasalPageToken
              _pldsasalPageSize
              _pldsasalCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresAnnotationsListResource)
                      mempty
