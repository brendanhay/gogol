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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a data transfer config.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Get
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsGetResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsGet
    , ProjectsLocationsTransferConfigsGet

    -- * Request Lenses
    , pltcgXgafv
    , pltcgUploadProtocol
    , pltcgAccessToken
    , pltcgUploadType
    , pltcgName
    , pltcgCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.get@ method which the
-- 'ProjectsLocationsTransferConfigsGet' request conforms to.
type ProjectsLocationsTransferConfigsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TransferConfig

-- | Returns information about a data transfer config.
--
-- /See:/ 'projectsLocationsTransferConfigsGet' smart constructor.
data ProjectsLocationsTransferConfigsGet =
  ProjectsLocationsTransferConfigsGet'
    { _pltcgXgafv :: !(Maybe Xgafv)
    , _pltcgUploadProtocol :: !(Maybe Text)
    , _pltcgAccessToken :: !(Maybe Text)
    , _pltcgUploadType :: !(Maybe Text)
    , _pltcgName :: !Text
    , _pltcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcgXgafv'
--
-- * 'pltcgUploadProtocol'
--
-- * 'pltcgAccessToken'
--
-- * 'pltcgUploadType'
--
-- * 'pltcgName'
--
-- * 'pltcgCallback'
projectsLocationsTransferConfigsGet
    :: Text -- ^ 'pltcgName'
    -> ProjectsLocationsTransferConfigsGet
projectsLocationsTransferConfigsGet pPltcgName_ =
  ProjectsLocationsTransferConfigsGet'
    { _pltcgXgafv = Nothing
    , _pltcgUploadProtocol = Nothing
    , _pltcgAccessToken = Nothing
    , _pltcgUploadType = Nothing
    , _pltcgName = pPltcgName_
    , _pltcgCallback = Nothing
    }


-- | V1 error format.
pltcgXgafv :: Lens' ProjectsLocationsTransferConfigsGet (Maybe Xgafv)
pltcgXgafv
  = lens _pltcgXgafv (\ s a -> s{_pltcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcgUploadProtocol :: Lens' ProjectsLocationsTransferConfigsGet (Maybe Text)
pltcgUploadProtocol
  = lens _pltcgUploadProtocol
      (\ s a -> s{_pltcgUploadProtocol = a})

-- | OAuth access token.
pltcgAccessToken :: Lens' ProjectsLocationsTransferConfigsGet (Maybe Text)
pltcgAccessToken
  = lens _pltcgAccessToken
      (\ s a -> s{_pltcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcgUploadType :: Lens' ProjectsLocationsTransferConfigsGet (Maybe Text)
pltcgUploadType
  = lens _pltcgUploadType
      (\ s a -> s{_pltcgUploadType = a})

-- | Required. The field will contain name of the resource requested, for
-- example: \`projects\/{project_id}\/transferConfigs\/{config_id}\` or
-- \`projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\`
pltcgName :: Lens' ProjectsLocationsTransferConfigsGet Text
pltcgName
  = lens _pltcgName (\ s a -> s{_pltcgName = a})

-- | JSONP
pltcgCallback :: Lens' ProjectsLocationsTransferConfigsGet (Maybe Text)
pltcgCallback
  = lens _pltcgCallback
      (\ s a -> s{_pltcgCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsGet
         where
        type Rs ProjectsLocationsTransferConfigsGet =
             TransferConfig
        type Scopes ProjectsLocationsTransferConfigsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsTransferConfigsGet'{..}
          = go _pltcgName _pltcgXgafv _pltcgUploadProtocol
              _pltcgAccessToken
              _pltcgUploadType
              _pltcgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTransferConfigsGetResource)
                      mempty
