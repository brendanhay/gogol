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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets any metadata associated with a dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsGet
    , ProjectsLocationsDataSetsGet

    -- * Request Lenses
    , pldsgXgafv
    , pldsgUploadProtocol
    , pldsgAccessToken
    , pldsgUploadType
    , pldsgName
    , pldsgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.get@ method which the
-- 'ProjectsLocationsDataSetsGet' request conforms to.
type ProjectsLocationsDataSetsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] DataSet

-- | Gets any metadata associated with a dataset.
--
-- /See:/ 'projectsLocationsDataSetsGet' smart constructor.
data ProjectsLocationsDataSetsGet =
  ProjectsLocationsDataSetsGet'
    { _pldsgXgafv          :: !(Maybe Xgafv)
    , _pldsgUploadProtocol :: !(Maybe Text)
    , _pldsgAccessToken    :: !(Maybe Text)
    , _pldsgUploadType     :: !(Maybe Text)
    , _pldsgName           :: !Text
    , _pldsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsgXgafv'
--
-- * 'pldsgUploadProtocol'
--
-- * 'pldsgAccessToken'
--
-- * 'pldsgUploadType'
--
-- * 'pldsgName'
--
-- * 'pldsgCallback'
projectsLocationsDataSetsGet
    :: Text -- ^ 'pldsgName'
    -> ProjectsLocationsDataSetsGet
projectsLocationsDataSetsGet pPldsgName_ =
  ProjectsLocationsDataSetsGet'
    { _pldsgXgafv = Nothing
    , _pldsgUploadProtocol = Nothing
    , _pldsgAccessToken = Nothing
    , _pldsgUploadType = Nothing
    , _pldsgName = pPldsgName_
    , _pldsgCallback = Nothing
    }


-- | V1 error format.
pldsgXgafv :: Lens' ProjectsLocationsDataSetsGet (Maybe Xgafv)
pldsgXgafv
  = lens _pldsgXgafv (\ s a -> s{_pldsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsgUploadProtocol :: Lens' ProjectsLocationsDataSetsGet (Maybe Text)
pldsgUploadProtocol
  = lens _pldsgUploadProtocol
      (\ s a -> s{_pldsgUploadProtocol = a})

-- | OAuth access token.
pldsgAccessToken :: Lens' ProjectsLocationsDataSetsGet (Maybe Text)
pldsgAccessToken
  = lens _pldsgAccessToken
      (\ s a -> s{_pldsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsgUploadType :: Lens' ProjectsLocationsDataSetsGet (Maybe Text)
pldsgUploadType
  = lens _pldsgUploadType
      (\ s a -> s{_pldsgUploadType = a})

-- | The name of the dataset to read (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`).
pldsgName :: Lens' ProjectsLocationsDataSetsGet Text
pldsgName
  = lens _pldsgName (\ s a -> s{_pldsgName = a})

-- | JSONP
pldsgCallback :: Lens' ProjectsLocationsDataSetsGet (Maybe Text)
pldsgCallback
  = lens _pldsgCallback
      (\ s a -> s{_pldsgCallback = a})

instance GoogleRequest ProjectsLocationsDataSetsGet
         where
        type Rs ProjectsLocationsDataSetsGet = DataSet
        type Scopes ProjectsLocationsDataSetsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDataSetsGet'{..}
          = go _pldsgName _pldsgXgafv _pldsgUploadProtocol
              _pldsgAccessToken
              _pldsgUploadType
              _pldsgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsDataSetsGetResource)
                      mempty
