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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the health datasets in the current project.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsList
    , ProjectsLocationsDataSetsList

    -- * Request Lenses
    , pldslParent
    , pldslXgafv
    , pldslUploadProtocol
    , pldslAccessToken
    , pldslUploadType
    , pldslPageToken
    , pldslPageSize
    , pldslCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.list@ method which the
-- 'ProjectsLocationsDataSetsList' request conforms to.
type ProjectsLocationsDataSetsListResource =
     "v1alpha" :>
       Capture "parent" Text :>
         "datasets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDataSetsResponse

-- | Lists the health datasets in the current project.
--
-- /See:/ 'projectsLocationsDataSetsList' smart constructor.
data ProjectsLocationsDataSetsList =
  ProjectsLocationsDataSetsList'
    { _pldslParent         :: !Text
    , _pldslXgafv          :: !(Maybe Xgafv)
    , _pldslUploadProtocol :: !(Maybe Text)
    , _pldslAccessToken    :: !(Maybe Text)
    , _pldslUploadType     :: !(Maybe Text)
    , _pldslPageToken      :: !(Maybe Text)
    , _pldslPageSize       :: !(Maybe (Textual Int32))
    , _pldslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldslParent'
--
-- * 'pldslXgafv'
--
-- * 'pldslUploadProtocol'
--
-- * 'pldslAccessToken'
--
-- * 'pldslUploadType'
--
-- * 'pldslPageToken'
--
-- * 'pldslPageSize'
--
-- * 'pldslCallback'
projectsLocationsDataSetsList
    :: Text -- ^ 'pldslParent'
    -> ProjectsLocationsDataSetsList
projectsLocationsDataSetsList pPldslParent_ =
  ProjectsLocationsDataSetsList'
    { _pldslParent = pPldslParent_
    , _pldslXgafv = Nothing
    , _pldslUploadProtocol = Nothing
    , _pldslAccessToken = Nothing
    , _pldslUploadType = Nothing
    , _pldslPageToken = Nothing
    , _pldslPageSize = Nothing
    , _pldslCallback = Nothing
    }

-- | The name of the project whose datasets should be listed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\`).
pldslParent :: Lens' ProjectsLocationsDataSetsList Text
pldslParent
  = lens _pldslParent (\ s a -> s{_pldslParent = a})

-- | V1 error format.
pldslXgafv :: Lens' ProjectsLocationsDataSetsList (Maybe Xgafv)
pldslXgafv
  = lens _pldslXgafv (\ s a -> s{_pldslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldslUploadProtocol :: Lens' ProjectsLocationsDataSetsList (Maybe Text)
pldslUploadProtocol
  = lens _pldslUploadProtocol
      (\ s a -> s{_pldslUploadProtocol = a})

-- | OAuth access token.
pldslAccessToken :: Lens' ProjectsLocationsDataSetsList (Maybe Text)
pldslAccessToken
  = lens _pldslAccessToken
      (\ s a -> s{_pldslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldslUploadType :: Lens' ProjectsLocationsDataSetsList (Maybe Text)
pldslUploadType
  = lens _pldslUploadType
      (\ s a -> s{_pldslUploadType = a})

-- | The next_page_token value returned from a previous List request, if any.
pldslPageToken :: Lens' ProjectsLocationsDataSetsList (Maybe Text)
pldslPageToken
  = lens _pldslPageToken
      (\ s a -> s{_pldslPageToken = a})

-- | The maximum number of items to return. Capped to 100 if not specified.
-- May not be larger than 1000.
pldslPageSize :: Lens' ProjectsLocationsDataSetsList (Maybe Int32)
pldslPageSize
  = lens _pldslPageSize
      (\ s a -> s{_pldslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldslCallback :: Lens' ProjectsLocationsDataSetsList (Maybe Text)
pldslCallback
  = lens _pldslCallback
      (\ s a -> s{_pldslCallback = a})

instance GoogleRequest ProjectsLocationsDataSetsList
         where
        type Rs ProjectsLocationsDataSetsList =
             ListDataSetsResponse
        type Scopes ProjectsLocationsDataSetsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDataSetsList'{..}
          = go _pldslParent _pldslXgafv _pldslUploadProtocol
              _pldslAccessToken
              _pldslUploadType
              _pldslPageToken
              _pldslPageSize
              _pldslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsListResource)
                      mempty
