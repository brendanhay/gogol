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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.runs.delete@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Delete
    (
    -- * REST Resource
      ProjectsTransferConfigsRunsDeleteResource

    -- * Creating a Request
    , projectsTransferConfigsRunsDelete
    , ProjectsTransferConfigsRunsDelete

    -- * Request Lenses
    , ptcrdXgafv
    , ptcrdUploadProtocol
    , ptcrdAccessToken
    , ptcrdUploadType
    , ptcrdName
    , ptcrdCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.runs.delete@ method which the
-- 'ProjectsTransferConfigsRunsDelete' request conforms to.
type ProjectsTransferConfigsRunsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified transfer run.
--
-- /See:/ 'projectsTransferConfigsRunsDelete' smart constructor.
data ProjectsTransferConfigsRunsDelete =
  ProjectsTransferConfigsRunsDelete'
    { _ptcrdXgafv          :: !(Maybe Xgafv)
    , _ptcrdUploadProtocol :: !(Maybe Text)
    , _ptcrdAccessToken    :: !(Maybe Text)
    , _ptcrdUploadType     :: !(Maybe Text)
    , _ptcrdName           :: !Text
    , _ptcrdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsTransferConfigsRunsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcrdXgafv'
--
-- * 'ptcrdUploadProtocol'
--
-- * 'ptcrdAccessToken'
--
-- * 'ptcrdUploadType'
--
-- * 'ptcrdName'
--
-- * 'ptcrdCallback'
projectsTransferConfigsRunsDelete
    :: Text -- ^ 'ptcrdName'
    -> ProjectsTransferConfigsRunsDelete
projectsTransferConfigsRunsDelete pPtcrdName_ =
  ProjectsTransferConfigsRunsDelete'
    { _ptcrdXgafv = Nothing
    , _ptcrdUploadProtocol = Nothing
    , _ptcrdAccessToken = Nothing
    , _ptcrdUploadType = Nothing
    , _ptcrdName = pPtcrdName_
    , _ptcrdCallback = Nothing
    }

-- | V1 error format.
ptcrdXgafv :: Lens' ProjectsTransferConfigsRunsDelete (Maybe Xgafv)
ptcrdXgafv
  = lens _ptcrdXgafv (\ s a -> s{_ptcrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcrdUploadProtocol :: Lens' ProjectsTransferConfigsRunsDelete (Maybe Text)
ptcrdUploadProtocol
  = lens _ptcrdUploadProtocol
      (\ s a -> s{_ptcrdUploadProtocol = a})

-- | OAuth access token.
ptcrdAccessToken :: Lens' ProjectsTransferConfigsRunsDelete (Maybe Text)
ptcrdAccessToken
  = lens _ptcrdAccessToken
      (\ s a -> s{_ptcrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcrdUploadType :: Lens' ProjectsTransferConfigsRunsDelete (Maybe Text)
ptcrdUploadType
  = lens _ptcrdUploadType
      (\ s a -> s{_ptcrdUploadType = a})

-- | The field will contain name of the resource requested, for example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
ptcrdName :: Lens' ProjectsTransferConfigsRunsDelete Text
ptcrdName
  = lens _ptcrdName (\ s a -> s{_ptcrdName = a})

-- | JSONP
ptcrdCallback :: Lens' ProjectsTransferConfigsRunsDelete (Maybe Text)
ptcrdCallback
  = lens _ptcrdCallback
      (\ s a -> s{_ptcrdCallback = a})

instance GoogleRequest
           ProjectsTransferConfigsRunsDelete
         where
        type Rs ProjectsTransferConfigsRunsDelete = Empty
        type Scopes ProjectsTransferConfigsRunsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTransferConfigsRunsDelete'{..}
          = go _ptcrdName _ptcrdXgafv _ptcrdUploadProtocol
              _ptcrdAccessToken
              _ptcrdUploadType
              _ptcrdCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsRunsDeleteResource)
                      mempty
