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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.operations.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsOperationsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsOperationsGet
    , ProjectsLocationsDataSetsOperationsGet

    -- * Request Lenses
    , pldsogXgafv
    , pldsogUploadProtocol
    , pldsogAccessToken
    , pldsogUploadType
    , pldsogName
    , pldsogCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.operations.get@ method which the
-- 'ProjectsLocationsDataSetsOperationsGet' request conforms to.
type ProjectsLocationsDataSetsOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsLocationsDataSetsOperationsGet' smart constructor.
data ProjectsLocationsDataSetsOperationsGet =
  ProjectsLocationsDataSetsOperationsGet'
    { _pldsogXgafv :: !(Maybe Xgafv)
    , _pldsogUploadProtocol :: !(Maybe Text)
    , _pldsogAccessToken :: !(Maybe Text)
    , _pldsogUploadType :: !(Maybe Text)
    , _pldsogName :: !Text
    , _pldsogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsogXgafv'
--
-- * 'pldsogUploadProtocol'
--
-- * 'pldsogAccessToken'
--
-- * 'pldsogUploadType'
--
-- * 'pldsogName'
--
-- * 'pldsogCallback'
projectsLocationsDataSetsOperationsGet
    :: Text -- ^ 'pldsogName'
    -> ProjectsLocationsDataSetsOperationsGet
projectsLocationsDataSetsOperationsGet pPldsogName_ =
  ProjectsLocationsDataSetsOperationsGet'
    { _pldsogXgafv = Nothing
    , _pldsogUploadProtocol = Nothing
    , _pldsogAccessToken = Nothing
    , _pldsogUploadType = Nothing
    , _pldsogName = pPldsogName_
    , _pldsogCallback = Nothing
    }


-- | V1 error format.
pldsogXgafv :: Lens' ProjectsLocationsDataSetsOperationsGet (Maybe Xgafv)
pldsogXgafv
  = lens _pldsogXgafv (\ s a -> s{_pldsogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsogUploadProtocol :: Lens' ProjectsLocationsDataSetsOperationsGet (Maybe Text)
pldsogUploadProtocol
  = lens _pldsogUploadProtocol
      (\ s a -> s{_pldsogUploadProtocol = a})

-- | OAuth access token.
pldsogAccessToken :: Lens' ProjectsLocationsDataSetsOperationsGet (Maybe Text)
pldsogAccessToken
  = lens _pldsogAccessToken
      (\ s a -> s{_pldsogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsogUploadType :: Lens' ProjectsLocationsDataSetsOperationsGet (Maybe Text)
pldsogUploadType
  = lens _pldsogUploadType
      (\ s a -> s{_pldsogUploadType = a})

-- | The name of the operation resource.
pldsogName :: Lens' ProjectsLocationsDataSetsOperationsGet Text
pldsogName
  = lens _pldsogName (\ s a -> s{_pldsogName = a})

-- | JSONP
pldsogCallback :: Lens' ProjectsLocationsDataSetsOperationsGet (Maybe Text)
pldsogCallback
  = lens _pldsogCallback
      (\ s a -> s{_pldsogCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsOperationsGet
         where
        type Rs ProjectsLocationsDataSetsOperationsGet =
             Operation
        type Scopes ProjectsLocationsDataSetsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsOperationsGet'{..}
          = go _pldsogName _pldsogXgafv _pldsogUploadProtocol
              _pldsogAccessToken
              _pldsogUploadType
              _pldsogCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsOperationsGetResource)
                      mempty
