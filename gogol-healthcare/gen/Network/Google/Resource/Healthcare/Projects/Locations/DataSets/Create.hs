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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new health dataset. Results are returned through the Operation
-- interface which returns either an \`Operation.response\` which contains
-- a Dataset or \`Operation.error\`. The metadata field type is
-- OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsCreate
    , ProjectsLocationsDataSetsCreate

    -- * Request Lenses
    , pldscParent
    , pldscXgafv
    , pldscUploadProtocol
    , pldscAccessToken
    , pldscUploadType
    , pldscPayload
    , pldscDataSetId
    , pldscCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.create@ method which the
-- 'ProjectsLocationsDataSetsCreate' request conforms to.
type ProjectsLocationsDataSetsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "datasets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "datasetId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DataSet :> Post '[JSON] Operation

-- | Creates a new health dataset. Results are returned through the Operation
-- interface which returns either an \`Operation.response\` which contains
-- a Dataset or \`Operation.error\`. The metadata field type is
-- OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsCreate' smart constructor.
data ProjectsLocationsDataSetsCreate =
  ProjectsLocationsDataSetsCreate'
    { _pldscParent         :: !Text
    , _pldscXgafv          :: !(Maybe Xgafv)
    , _pldscUploadProtocol :: !(Maybe Text)
    , _pldscAccessToken    :: !(Maybe Text)
    , _pldscUploadType     :: !(Maybe Text)
    , _pldscPayload        :: !DataSet
    , _pldscDataSetId      :: !(Maybe Text)
    , _pldscCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscParent'
--
-- * 'pldscXgafv'
--
-- * 'pldscUploadProtocol'
--
-- * 'pldscAccessToken'
--
-- * 'pldscUploadType'
--
-- * 'pldscPayload'
--
-- * 'pldscDataSetId'
--
-- * 'pldscCallback'
projectsLocationsDataSetsCreate
    :: Text -- ^ 'pldscParent'
    -> DataSet -- ^ 'pldscPayload'
    -> ProjectsLocationsDataSetsCreate
projectsLocationsDataSetsCreate pPldscParent_ pPldscPayload_ =
  ProjectsLocationsDataSetsCreate'
    { _pldscParent = pPldscParent_
    , _pldscXgafv = Nothing
    , _pldscUploadProtocol = Nothing
    , _pldscAccessToken = Nothing
    , _pldscUploadType = Nothing
    , _pldscPayload = pPldscPayload_
    , _pldscDataSetId = Nothing
    , _pldscCallback = Nothing
    }


-- | The name of the project in which the dataset should be created (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\`).
pldscParent :: Lens' ProjectsLocationsDataSetsCreate Text
pldscParent
  = lens _pldscParent (\ s a -> s{_pldscParent = a})

-- | V1 error format.
pldscXgafv :: Lens' ProjectsLocationsDataSetsCreate (Maybe Xgafv)
pldscXgafv
  = lens _pldscXgafv (\ s a -> s{_pldscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscUploadProtocol :: Lens' ProjectsLocationsDataSetsCreate (Maybe Text)
pldscUploadProtocol
  = lens _pldscUploadProtocol
      (\ s a -> s{_pldscUploadProtocol = a})

-- | OAuth access token.
pldscAccessToken :: Lens' ProjectsLocationsDataSetsCreate (Maybe Text)
pldscAccessToken
  = lens _pldscAccessToken
      (\ s a -> s{_pldscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscUploadType :: Lens' ProjectsLocationsDataSetsCreate (Maybe Text)
pldscUploadType
  = lens _pldscUploadType
      (\ s a -> s{_pldscUploadType = a})

-- | Multipart request metadata.
pldscPayload :: Lens' ProjectsLocationsDataSetsCreate DataSet
pldscPayload
  = lens _pldscPayload (\ s a -> s{_pldscPayload = a})

-- | The ID of the dataset that is being created. The string must match the
-- following regex: \`[\\p{L}\\p{N}_\\-\\.]{1,256}\`.
pldscDataSetId :: Lens' ProjectsLocationsDataSetsCreate (Maybe Text)
pldscDataSetId
  = lens _pldscDataSetId
      (\ s a -> s{_pldscDataSetId = a})

-- | JSONP
pldscCallback :: Lens' ProjectsLocationsDataSetsCreate (Maybe Text)
pldscCallback
  = lens _pldscCallback
      (\ s a -> s{_pldscCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsCreate
         where
        type Rs ProjectsLocationsDataSetsCreate = Operation
        type Scopes ProjectsLocationsDataSetsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDataSetsCreate'{..}
          = go _pldscParent _pldscXgafv _pldscUploadProtocol
              _pldscAccessToken
              _pldscUploadType
              _pldscDataSetId
              _pldscCallback
              (Just AltJSON)
              _pldscPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsCreateResource)
                      mempty
