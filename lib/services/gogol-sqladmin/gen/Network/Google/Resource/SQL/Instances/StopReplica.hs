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
-- Module      : Network.Google.Resource.SQL.Instances.StopReplica
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the replication in the read replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.stopReplica@.
module Network.Google.Resource.SQL.Instances.StopReplica
    (
    -- * REST Resource
      InstancesStopReplicaResource

    -- * Creating a Request
    , instancesStopReplica
    , InstancesStopReplica

    -- * Request Lenses
    , isrXgafv
    , isrUploadProtocol
    , isrProject
    , isrAccessToken
    , isrUploadType
    , isrCallback
    , isrInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.stopReplica@ method which the
-- 'InstancesStopReplica' request conforms to.
type InstancesStopReplicaResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "stopReplica" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Stops the replication in the read replica instance.
--
-- /See:/ 'instancesStopReplica' smart constructor.
data InstancesStopReplica =
  InstancesStopReplica'
    { _isrXgafv :: !(Maybe Xgafv)
    , _isrUploadProtocol :: !(Maybe Text)
    , _isrProject :: !Text
    , _isrAccessToken :: !(Maybe Text)
    , _isrUploadType :: !(Maybe Text)
    , _isrCallback :: !(Maybe Text)
    , _isrInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesStopReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrXgafv'
--
-- * 'isrUploadProtocol'
--
-- * 'isrProject'
--
-- * 'isrAccessToken'
--
-- * 'isrUploadType'
--
-- * 'isrCallback'
--
-- * 'isrInstance'
instancesStopReplica
    :: Text -- ^ 'isrProject'
    -> Text -- ^ 'isrInstance'
    -> InstancesStopReplica
instancesStopReplica pIsrProject_ pIsrInstance_ =
  InstancesStopReplica'
    { _isrXgafv = Nothing
    , _isrUploadProtocol = Nothing
    , _isrProject = pIsrProject_
    , _isrAccessToken = Nothing
    , _isrUploadType = Nothing
    , _isrCallback = Nothing
    , _isrInstance = pIsrInstance_
    }


-- | V1 error format.
isrXgafv :: Lens' InstancesStopReplica (Maybe Xgafv)
isrXgafv = lens _isrXgafv (\ s a -> s{_isrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
isrUploadProtocol :: Lens' InstancesStopReplica (Maybe Text)
isrUploadProtocol
  = lens _isrUploadProtocol
      (\ s a -> s{_isrUploadProtocol = a})

-- | ID of the project that contains the read replica.
isrProject :: Lens' InstancesStopReplica Text
isrProject
  = lens _isrProject (\ s a -> s{_isrProject = a})

-- | OAuth access token.
isrAccessToken :: Lens' InstancesStopReplica (Maybe Text)
isrAccessToken
  = lens _isrAccessToken
      (\ s a -> s{_isrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
isrUploadType :: Lens' InstancesStopReplica (Maybe Text)
isrUploadType
  = lens _isrUploadType
      (\ s a -> s{_isrUploadType = a})

-- | JSONP
isrCallback :: Lens' InstancesStopReplica (Maybe Text)
isrCallback
  = lens _isrCallback (\ s a -> s{_isrCallback = a})

-- | Cloud SQL read replica instance name.
isrInstance :: Lens' InstancesStopReplica Text
isrInstance
  = lens _isrInstance (\ s a -> s{_isrInstance = a})

instance GoogleRequest InstancesStopReplica where
        type Rs InstancesStopReplica = Operation
        type Scopes InstancesStopReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesStopReplica'{..}
          = go _isrProject _isrInstance _isrXgafv
              _isrUploadProtocol
              _isrAccessToken
              _isrUploadType
              _isrCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesStopReplicaResource)
                      mempty
