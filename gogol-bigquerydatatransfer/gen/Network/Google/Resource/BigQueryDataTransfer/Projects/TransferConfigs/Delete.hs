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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data transfer configuration, including any associated transfer
-- runs and logs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.delete@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Delete
    (
    -- * REST Resource
      ProjectsTransferConfigsDeleteResource

    -- * Creating a Request
    , projectsTransferConfigsDelete
    , ProjectsTransferConfigsDelete

    -- * Request Lenses
    , ptcdXgafv
    , ptcdUploadProtocol
    , ptcdAccessToken
    , ptcdUploadType
    , ptcdName
    , ptcdCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.delete@ method which the
-- 'ProjectsTransferConfigsDelete' request conforms to.
type ProjectsTransferConfigsDeleteResource =
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
-- /See:/ 'projectsTransferConfigsDelete' smart constructor.
data ProjectsTransferConfigsDelete =
  ProjectsTransferConfigsDelete'
    { _ptcdXgafv          :: !(Maybe Xgafv)
    , _ptcdUploadProtocol :: !(Maybe Text)
    , _ptcdAccessToken    :: !(Maybe Text)
    , _ptcdUploadType     :: !(Maybe Text)
    , _ptcdName           :: !Text
    , _ptcdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsTransferConfigsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcdXgafv'
--
-- * 'ptcdUploadProtocol'
--
-- * 'ptcdAccessToken'
--
-- * 'ptcdUploadType'
--
-- * 'ptcdName'
--
-- * 'ptcdCallback'
projectsTransferConfigsDelete
    :: Text -- ^ 'ptcdName'
    -> ProjectsTransferConfigsDelete
projectsTransferConfigsDelete pPtcdName_ =
  ProjectsTransferConfigsDelete'
    { _ptcdXgafv = Nothing
    , _ptcdUploadProtocol = Nothing
    , _ptcdAccessToken = Nothing
    , _ptcdUploadType = Nothing
    , _ptcdName = pPtcdName_
    , _ptcdCallback = Nothing
    }

-- | V1 error format.
ptcdXgafv :: Lens' ProjectsTransferConfigsDelete (Maybe Xgafv)
ptcdXgafv
  = lens _ptcdXgafv (\ s a -> s{_ptcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcdUploadProtocol :: Lens' ProjectsTransferConfigsDelete (Maybe Text)
ptcdUploadProtocol
  = lens _ptcdUploadProtocol
      (\ s a -> s{_ptcdUploadProtocol = a})

-- | OAuth access token.
ptcdAccessToken :: Lens' ProjectsTransferConfigsDelete (Maybe Text)
ptcdAccessToken
  = lens _ptcdAccessToken
      (\ s a -> s{_ptcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcdUploadType :: Lens' ProjectsTransferConfigsDelete (Maybe Text)
ptcdUploadType
  = lens _ptcdUploadType
      (\ s a -> s{_ptcdUploadType = a})

-- | The field will contain name of the resource requested, for example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`
ptcdName :: Lens' ProjectsTransferConfigsDelete Text
ptcdName = lens _ptcdName (\ s a -> s{_ptcdName = a})

-- | JSONP
ptcdCallback :: Lens' ProjectsTransferConfigsDelete (Maybe Text)
ptcdCallback
  = lens _ptcdCallback (\ s a -> s{_ptcdCallback = a})

instance GoogleRequest ProjectsTransferConfigsDelete
         where
        type Rs ProjectsTransferConfigsDelete = Empty
        type Scopes ProjectsTransferConfigsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTransferConfigsDelete'{..}
          = go _ptcdName _ptcdXgafv _ptcdUploadProtocol
              _ptcdAccessToken
              _ptcdUploadType
              _ptcdCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsDeleteResource)
                      mempty
