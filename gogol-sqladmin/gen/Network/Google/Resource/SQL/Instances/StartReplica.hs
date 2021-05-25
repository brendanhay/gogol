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
-- Module      : Network.Google.Resource.SQL.Instances.StartReplica
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the replication in the read replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.startReplica@.
module Network.Google.Resource.SQL.Instances.StartReplica
    (
    -- * REST Resource
      InstancesStartReplicaResource

    -- * Creating a Request
    , instancesStartReplica
    , InstancesStartReplica

    -- * Request Lenses
    , insXgafv
    , insUploadProtocol
    , insProject
    , insAccessToken
    , insUploadType
    , insCallback
    , insInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.startReplica@ method which the
-- 'InstancesStartReplica' request conforms to.
type InstancesStartReplicaResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "startReplica" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'instancesStartReplica' smart constructor.
data InstancesStartReplica =
  InstancesStartReplica'
    { _insXgafv :: !(Maybe Xgafv)
    , _insUploadProtocol :: !(Maybe Text)
    , _insProject :: !Text
    , _insAccessToken :: !(Maybe Text)
    , _insUploadType :: !(Maybe Text)
    , _insCallback :: !(Maybe Text)
    , _insInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesStartReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insXgafv'
--
-- * 'insUploadProtocol'
--
-- * 'insProject'
--
-- * 'insAccessToken'
--
-- * 'insUploadType'
--
-- * 'insCallback'
--
-- * 'insInstance'
instancesStartReplica
    :: Text -- ^ 'insProject'
    -> Text -- ^ 'insInstance'
    -> InstancesStartReplica
instancesStartReplica pInsProject_ pInsInstance_ =
  InstancesStartReplica'
    { _insXgafv = Nothing
    , _insUploadProtocol = Nothing
    , _insProject = pInsProject_
    , _insAccessToken = Nothing
    , _insUploadType = Nothing
    , _insCallback = Nothing
    , _insInstance = pInsInstance_
    }


-- | V1 error format.
insXgafv :: Lens' InstancesStartReplica (Maybe Xgafv)
insXgafv = lens _insXgafv (\ s a -> s{_insXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
insUploadProtocol :: Lens' InstancesStartReplica (Maybe Text)
insUploadProtocol
  = lens _insUploadProtocol
      (\ s a -> s{_insUploadProtocol = a})

-- | ID of the project that contains the read replica.
insProject :: Lens' InstancesStartReplica Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | OAuth access token.
insAccessToken :: Lens' InstancesStartReplica (Maybe Text)
insAccessToken
  = lens _insAccessToken
      (\ s a -> s{_insAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
insUploadType :: Lens' InstancesStartReplica (Maybe Text)
insUploadType
  = lens _insUploadType
      (\ s a -> s{_insUploadType = a})

-- | JSONP
insCallback :: Lens' InstancesStartReplica (Maybe Text)
insCallback
  = lens _insCallback (\ s a -> s{_insCallback = a})

-- | Cloud SQL read replica instance name.
insInstance :: Lens' InstancesStartReplica Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesStartReplica where
        type Rs InstancesStartReplica = Operation
        type Scopes InstancesStartReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesStartReplica'{..}
          = go _insProject _insInstance _insXgafv
              _insUploadProtocol
              _insAccessToken
              _insUploadType
              _insCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesStartReplicaResource)
                      mempty
