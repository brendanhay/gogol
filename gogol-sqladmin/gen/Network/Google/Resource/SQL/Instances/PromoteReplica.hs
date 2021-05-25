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
-- Module      : Network.Google.Resource.SQL.Instances.PromoteReplica
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance. Using this operation might cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.promoteReplica@.
module Network.Google.Resource.SQL.Instances.PromoteReplica
    (
    -- * REST Resource
      InstancesPromoteReplicaResource

    -- * Creating a Request
    , instancesPromoteReplica
    , InstancesPromoteReplica

    -- * Request Lenses
    , iprXgafv
    , iprUploadProtocol
    , iprProject
    , iprAccessToken
    , iprUploadType
    , iprCallback
    , iprInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.promoteReplica@ method which the
-- 'InstancesPromoteReplica' request conforms to.
type InstancesPromoteReplicaResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "promoteReplica" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance. Using this operation might cause your instance to restart.
--
-- /See:/ 'instancesPromoteReplica' smart constructor.
data InstancesPromoteReplica =
  InstancesPromoteReplica'
    { _iprXgafv :: !(Maybe Xgafv)
    , _iprUploadProtocol :: !(Maybe Text)
    , _iprProject :: !Text
    , _iprAccessToken :: !(Maybe Text)
    , _iprUploadType :: !(Maybe Text)
    , _iprCallback :: !(Maybe Text)
    , _iprInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesPromoteReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iprXgafv'
--
-- * 'iprUploadProtocol'
--
-- * 'iprProject'
--
-- * 'iprAccessToken'
--
-- * 'iprUploadType'
--
-- * 'iprCallback'
--
-- * 'iprInstance'
instancesPromoteReplica
    :: Text -- ^ 'iprProject'
    -> Text -- ^ 'iprInstance'
    -> InstancesPromoteReplica
instancesPromoteReplica pIprProject_ pIprInstance_ =
  InstancesPromoteReplica'
    { _iprXgafv = Nothing
    , _iprUploadProtocol = Nothing
    , _iprProject = pIprProject_
    , _iprAccessToken = Nothing
    , _iprUploadType = Nothing
    , _iprCallback = Nothing
    , _iprInstance = pIprInstance_
    }


-- | V1 error format.
iprXgafv :: Lens' InstancesPromoteReplica (Maybe Xgafv)
iprXgafv = lens _iprXgafv (\ s a -> s{_iprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iprUploadProtocol :: Lens' InstancesPromoteReplica (Maybe Text)
iprUploadProtocol
  = lens _iprUploadProtocol
      (\ s a -> s{_iprUploadProtocol = a})

-- | ID of the project that contains the read replica.
iprProject :: Lens' InstancesPromoteReplica Text
iprProject
  = lens _iprProject (\ s a -> s{_iprProject = a})

-- | OAuth access token.
iprAccessToken :: Lens' InstancesPromoteReplica (Maybe Text)
iprAccessToken
  = lens _iprAccessToken
      (\ s a -> s{_iprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iprUploadType :: Lens' InstancesPromoteReplica (Maybe Text)
iprUploadType
  = lens _iprUploadType
      (\ s a -> s{_iprUploadType = a})

-- | JSONP
iprCallback :: Lens' InstancesPromoteReplica (Maybe Text)
iprCallback
  = lens _iprCallback (\ s a -> s{_iprCallback = a})

-- | Cloud SQL read replica instance name.
iprInstance :: Lens' InstancesPromoteReplica Text
iprInstance
  = lens _iprInstance (\ s a -> s{_iprInstance = a})

instance GoogleRequest InstancesPromoteReplica where
        type Rs InstancesPromoteReplica = Operation
        type Scopes InstancesPromoteReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesPromoteReplica'{..}
          = go _iprProject _iprInstance _iprXgafv
              _iprUploadProtocol
              _iprAccessToken
              _iprUploadType
              _iprCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesPromoteReplicaResource)
                      mempty
