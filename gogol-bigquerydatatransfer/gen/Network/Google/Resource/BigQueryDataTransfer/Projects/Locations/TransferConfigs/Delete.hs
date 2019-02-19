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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data transfer configuration, including any associated transfer
-- runs and logs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.delete@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Delete
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsDeleteResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsDelete
    , ProjectsLocationsTransferConfigsDelete

    -- * Request Lenses
    , pltcdXgafv
    , pltcdUploadProtocol
    , pltcdAccessToken
    , pltcdUploadType
    , pltcdName
    , pltcdCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.delete@ method which the
-- 'ProjectsLocationsTransferConfigsDelete' request conforms to.
type ProjectsLocationsTransferConfigsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a data transfer configuration, including any associated transfer
-- runs and logs.
--
-- /See:/ 'projectsLocationsTransferConfigsDelete' smart constructor.
data ProjectsLocationsTransferConfigsDelete =
  ProjectsLocationsTransferConfigsDelete'
    { _pltcdXgafv          :: !(Maybe Xgafv)
    , _pltcdUploadProtocol :: !(Maybe Text)
    , _pltcdAccessToken    :: !(Maybe Text)
    , _pltcdUploadType     :: !(Maybe Text)
    , _pltcdName           :: !Text
    , _pltcdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsTransferConfigsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcdXgafv'
--
-- * 'pltcdUploadProtocol'
--
-- * 'pltcdAccessToken'
--
-- * 'pltcdUploadType'
--
-- * 'pltcdName'
--
-- * 'pltcdCallback'
projectsLocationsTransferConfigsDelete
    :: Text -- ^ 'pltcdName'
    -> ProjectsLocationsTransferConfigsDelete
projectsLocationsTransferConfigsDelete pPltcdName_ =
  ProjectsLocationsTransferConfigsDelete'
    { _pltcdXgafv = Nothing
    , _pltcdUploadProtocol = Nothing
    , _pltcdAccessToken = Nothing
    , _pltcdUploadType = Nothing
    , _pltcdName = pPltcdName_
    , _pltcdCallback = Nothing
    }

-- | V1 error format.
pltcdXgafv :: Lens' ProjectsLocationsTransferConfigsDelete (Maybe Xgafv)
pltcdXgafv
  = lens _pltcdXgafv (\ s a -> s{_pltcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcdUploadProtocol :: Lens' ProjectsLocationsTransferConfigsDelete (Maybe Text)
pltcdUploadProtocol
  = lens _pltcdUploadProtocol
      (\ s a -> s{_pltcdUploadProtocol = a})

-- | OAuth access token.
pltcdAccessToken :: Lens' ProjectsLocationsTransferConfigsDelete (Maybe Text)
pltcdAccessToken
  = lens _pltcdAccessToken
      (\ s a -> s{_pltcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcdUploadType :: Lens' ProjectsLocationsTransferConfigsDelete (Maybe Text)
pltcdUploadType
  = lens _pltcdUploadType
      (\ s a -> s{_pltcdUploadType = a})

-- | The field will contain name of the resource requested, for example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`
pltcdName :: Lens' ProjectsLocationsTransferConfigsDelete Text
pltcdName
  = lens _pltcdName (\ s a -> s{_pltcdName = a})

-- | JSONP
pltcdCallback :: Lens' ProjectsLocationsTransferConfigsDelete (Maybe Text)
pltcdCallback
  = lens _pltcdCallback
      (\ s a -> s{_pltcdCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsDelete
         where
        type Rs ProjectsLocationsTransferConfigsDelete =
             Empty
        type Scopes ProjectsLocationsTransferConfigsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsDelete'{..}
          = go _pltcdName _pltcdXgafv _pltcdUploadProtocol
              _pltcdAccessToken
              _pltcdUploadType
              _pltcdCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTransferConfigsDeleteResource)
                      mempty
