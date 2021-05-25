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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified health dataset and all data contained in the
-- dataset. Deleting a dataset does not affect the sources from which the
-- dataset was imported (if any).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDelete
    , ProjectsLocationsDataSetsDelete

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proName
    , proCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.delete@ method which the
-- 'ProjectsLocationsDataSetsDelete' request conforms to.
type ProjectsLocationsDataSetsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified health dataset and all data contained in the
-- dataset. Deleting a dataset does not affect the sources from which the
-- dataset was imported (if any).
--
-- /See:/ 'projectsLocationsDataSetsDelete' smart constructor.
data ProjectsLocationsDataSetsDelete =
  ProjectsLocationsDataSetsDelete'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proName :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proName'
--
-- * 'proCallback'
projectsLocationsDataSetsDelete
    :: Text -- ^ 'proName'
    -> ProjectsLocationsDataSetsDelete
projectsLocationsDataSetsDelete pProName_ =
  ProjectsLocationsDataSetsDelete'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsDataSetsDelete (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsDataSetsDelete (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsDataSetsDelete (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsDataSetsDelete (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | The name of the dataset to delete. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\`.
proName :: Lens' ProjectsLocationsDataSetsDelete Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsDataSetsDelete (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDelete
         where
        type Rs ProjectsLocationsDataSetsDelete = Empty
        type Scopes ProjectsLocationsDataSetsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDataSetsDelete'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsDeleteResource)
                      mempty
