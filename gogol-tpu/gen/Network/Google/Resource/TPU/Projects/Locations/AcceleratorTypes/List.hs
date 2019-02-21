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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists accelerator types supported by this API.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.acceleratorTypes.list@.
module Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.List
    (
    -- * REST Resource
      ProjectsLocationsAcceleratorTypesListResource

    -- * Creating a Request
    , projectsLocationsAcceleratorTypesList
    , ProjectsLocationsAcceleratorTypesList

    -- * Request Lenses
    , platlParent
    , platlXgafv
    , platlUploadProtocol
    , platlOrderBy
    , platlAccessToken
    , platlUploadType
    , platlFilter
    , platlPageToken
    , platlPageSize
    , platlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.acceleratorTypes.list@ method which the
-- 'ProjectsLocationsAcceleratorTypesList' request conforms to.
type ProjectsLocationsAcceleratorTypesListResource =
     "v1" :>
       Capture "parent" Text :>
         "acceleratorTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListAcceleratorTypesResponse

-- | Lists accelerator types supported by this API.
--
-- /See:/ 'projectsLocationsAcceleratorTypesList' smart constructor.
data ProjectsLocationsAcceleratorTypesList =
  ProjectsLocationsAcceleratorTypesList'
    { _platlParent         :: !Text
    , _platlXgafv          :: !(Maybe Xgafv)
    , _platlUploadProtocol :: !(Maybe Text)
    , _platlOrderBy        :: !(Maybe Text)
    , _platlAccessToken    :: !(Maybe Text)
    , _platlUploadType     :: !(Maybe Text)
    , _platlFilter         :: !(Maybe Text)
    , _platlPageToken      :: !(Maybe Text)
    , _platlPageSize       :: !(Maybe (Textual Int32))
    , _platlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAcceleratorTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platlParent'
--
-- * 'platlXgafv'
--
-- * 'platlUploadProtocol'
--
-- * 'platlOrderBy'
--
-- * 'platlAccessToken'
--
-- * 'platlUploadType'
--
-- * 'platlFilter'
--
-- * 'platlPageToken'
--
-- * 'platlPageSize'
--
-- * 'platlCallback'
projectsLocationsAcceleratorTypesList
    :: Text -- ^ 'platlParent'
    -> ProjectsLocationsAcceleratorTypesList
projectsLocationsAcceleratorTypesList pPlatlParent_ =
  ProjectsLocationsAcceleratorTypesList'
    { _platlParent = pPlatlParent_
    , _platlXgafv = Nothing
    , _platlUploadProtocol = Nothing
    , _platlOrderBy = Nothing
    , _platlAccessToken = Nothing
    , _platlUploadType = Nothing
    , _platlFilter = Nothing
    , _platlPageToken = Nothing
    , _platlPageSize = Nothing
    , _platlCallback = Nothing
    }


-- | The parent resource name.
platlParent :: Lens' ProjectsLocationsAcceleratorTypesList Text
platlParent
  = lens _platlParent (\ s a -> s{_platlParent = a})

-- | V1 error format.
platlXgafv :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Xgafv)
platlXgafv
  = lens _platlXgafv (\ s a -> s{_platlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platlUploadProtocol :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlUploadProtocol
  = lens _platlUploadProtocol
      (\ s a -> s{_platlUploadProtocol = a})

-- | Sort results.
platlOrderBy :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlOrderBy
  = lens _platlOrderBy (\ s a -> s{_platlOrderBy = a})

-- | OAuth access token.
platlAccessToken :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlAccessToken
  = lens _platlAccessToken
      (\ s a -> s{_platlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platlUploadType :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlUploadType
  = lens _platlUploadType
      (\ s a -> s{_platlUploadType = a})

-- | List filter.
platlFilter :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlFilter
  = lens _platlFilter (\ s a -> s{_platlFilter = a})

-- | The next_page_token value returned from a previous List request, if any.
platlPageToken :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlPageToken
  = lens _platlPageToken
      (\ s a -> s{_platlPageToken = a})

-- | The maximum number of items to return.
platlPageSize :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Int32)
platlPageSize
  = lens _platlPageSize
      (\ s a -> s{_platlPageSize = a})
      . mapping _Coerce

-- | JSONP
platlCallback :: Lens' ProjectsLocationsAcceleratorTypesList (Maybe Text)
platlCallback
  = lens _platlCallback
      (\ s a -> s{_platlCallback = a})

instance GoogleRequest
           ProjectsLocationsAcceleratorTypesList
         where
        type Rs ProjectsLocationsAcceleratorTypesList =
             ListAcceleratorTypesResponse
        type Scopes ProjectsLocationsAcceleratorTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAcceleratorTypesList'{..}
          = go _platlParent _platlXgafv _platlUploadProtocol
              _platlOrderBy
              _platlAccessToken
              _platlUploadType
              _platlFilter
              _platlPageToken
              _platlPageSize
              _platlCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAcceleratorTypesListResource)
                      mempty
