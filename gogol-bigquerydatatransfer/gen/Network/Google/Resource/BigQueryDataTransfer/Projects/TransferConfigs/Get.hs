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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a data transfer config.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Get
    (
    -- * REST Resource
      ProjectsTransferConfigsGetResource

    -- * Creating a Request
    , projectsTransferConfigsGet
    , ProjectsTransferConfigsGet

    -- * Request Lenses
    , ptcgXgafv
    , ptcgUploadProtocol
    , ptcgAccessToken
    , ptcgUploadType
    , ptcgName
    , ptcgCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.get@ method which the
-- 'ProjectsTransferConfigsGet' request conforms to.
type ProjectsTransferConfigsGetResource =
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
-- /See:/ 'projectsTransferConfigsGet' smart constructor.
data ProjectsTransferConfigsGet =
  ProjectsTransferConfigsGet'
    { _ptcgXgafv :: !(Maybe Xgafv)
    , _ptcgUploadProtocol :: !(Maybe Text)
    , _ptcgAccessToken :: !(Maybe Text)
    , _ptcgUploadType :: !(Maybe Text)
    , _ptcgName :: !Text
    , _ptcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcgXgafv'
--
-- * 'ptcgUploadProtocol'
--
-- * 'ptcgAccessToken'
--
-- * 'ptcgUploadType'
--
-- * 'ptcgName'
--
-- * 'ptcgCallback'
projectsTransferConfigsGet
    :: Text -- ^ 'ptcgName'
    -> ProjectsTransferConfigsGet
projectsTransferConfigsGet pPtcgName_ =
  ProjectsTransferConfigsGet'
    { _ptcgXgafv = Nothing
    , _ptcgUploadProtocol = Nothing
    , _ptcgAccessToken = Nothing
    , _ptcgUploadType = Nothing
    , _ptcgName = pPtcgName_
    , _ptcgCallback = Nothing
    }


-- | V1 error format.
ptcgXgafv :: Lens' ProjectsTransferConfigsGet (Maybe Xgafv)
ptcgXgafv
  = lens _ptcgXgafv (\ s a -> s{_ptcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcgUploadProtocol :: Lens' ProjectsTransferConfigsGet (Maybe Text)
ptcgUploadProtocol
  = lens _ptcgUploadProtocol
      (\ s a -> s{_ptcgUploadProtocol = a})

-- | OAuth access token.
ptcgAccessToken :: Lens' ProjectsTransferConfigsGet (Maybe Text)
ptcgAccessToken
  = lens _ptcgAccessToken
      (\ s a -> s{_ptcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcgUploadType :: Lens' ProjectsTransferConfigsGet (Maybe Text)
ptcgUploadType
  = lens _ptcgUploadType
      (\ s a -> s{_ptcgUploadType = a})

-- | Required. The field will contain name of the resource requested, for
-- example: \`projects\/{project_id}\/transferConfigs\/{config_id}\` or
-- \`projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\`
ptcgName :: Lens' ProjectsTransferConfigsGet Text
ptcgName = lens _ptcgName (\ s a -> s{_ptcgName = a})

-- | JSONP
ptcgCallback :: Lens' ProjectsTransferConfigsGet (Maybe Text)
ptcgCallback
  = lens _ptcgCallback (\ s a -> s{_ptcgCallback = a})

instance GoogleRequest ProjectsTransferConfigsGet
         where
        type Rs ProjectsTransferConfigsGet = TransferConfig
        type Scopes ProjectsTransferConfigsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTransferConfigsGet'{..}
          = go _ptcgName _ptcgXgafv _ptcgUploadProtocol
              _ptcgAccessToken
              _ptcgUploadType
              _ptcgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTransferConfigsGetResource)
                      mempty
