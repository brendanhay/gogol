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
-- Module      : Network.Google.Resource.SQL.Instances.Failover
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a manual failover of a high availability (HA) primary instance
-- to a standby instance, which becomes the primary instance. Users are
-- then rerouted to the new primary. For more information, see the Overview
-- of high availability page in the Cloud SQL documentation. If using
-- Legacy HA (MySQL only), this causes the instance to failover to its
-- failover replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.failover@.
module Network.Google.Resource.SQL.Instances.Failover
    (
    -- * REST Resource
      InstancesFailoverResource

    -- * Creating a Request
    , instancesFailover
    , InstancesFailover

    -- * Request Lenses
    , ifXgafv
    , ifUploadProtocol
    , ifProject
    , ifAccessToken
    , ifUploadType
    , ifPayload
    , ifCallback
    , ifInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.failover@ method which the
-- 'InstancesFailover' request conforms to.
type InstancesFailoverResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "failover" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesFailoverRequest :>
                               Post '[JSON] Operation

-- | Initiates a manual failover of a high availability (HA) primary instance
-- to a standby instance, which becomes the primary instance. Users are
-- then rerouted to the new primary. For more information, see the Overview
-- of high availability page in the Cloud SQL documentation. If using
-- Legacy HA (MySQL only), this causes the instance to failover to its
-- failover replica instance.
--
-- /See:/ 'instancesFailover' smart constructor.
data InstancesFailover =
  InstancesFailover'
    { _ifXgafv :: !(Maybe Xgafv)
    , _ifUploadProtocol :: !(Maybe Text)
    , _ifProject :: !Text
    , _ifAccessToken :: !(Maybe Text)
    , _ifUploadType :: !(Maybe Text)
    , _ifPayload :: !InstancesFailoverRequest
    , _ifCallback :: !(Maybe Text)
    , _ifInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesFailover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifXgafv'
--
-- * 'ifUploadProtocol'
--
-- * 'ifProject'
--
-- * 'ifAccessToken'
--
-- * 'ifUploadType'
--
-- * 'ifPayload'
--
-- * 'ifCallback'
--
-- * 'ifInstance'
instancesFailover
    :: Text -- ^ 'ifProject'
    -> InstancesFailoverRequest -- ^ 'ifPayload'
    -> Text -- ^ 'ifInstance'
    -> InstancesFailover
instancesFailover pIfProject_ pIfPayload_ pIfInstance_ =
  InstancesFailover'
    { _ifXgafv = Nothing
    , _ifUploadProtocol = Nothing
    , _ifProject = pIfProject_
    , _ifAccessToken = Nothing
    , _ifUploadType = Nothing
    , _ifPayload = pIfPayload_
    , _ifCallback = Nothing
    , _ifInstance = pIfInstance_
    }


-- | V1 error format.
ifXgafv :: Lens' InstancesFailover (Maybe Xgafv)
ifXgafv = lens _ifXgafv (\ s a -> s{_ifXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ifUploadProtocol :: Lens' InstancesFailover (Maybe Text)
ifUploadProtocol
  = lens _ifUploadProtocol
      (\ s a -> s{_ifUploadProtocol = a})

-- | ID of the project that contains the read replica.
ifProject :: Lens' InstancesFailover Text
ifProject
  = lens _ifProject (\ s a -> s{_ifProject = a})

-- | OAuth access token.
ifAccessToken :: Lens' InstancesFailover (Maybe Text)
ifAccessToken
  = lens _ifAccessToken
      (\ s a -> s{_ifAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ifUploadType :: Lens' InstancesFailover (Maybe Text)
ifUploadType
  = lens _ifUploadType (\ s a -> s{_ifUploadType = a})

-- | Multipart request metadata.
ifPayload :: Lens' InstancesFailover InstancesFailoverRequest
ifPayload
  = lens _ifPayload (\ s a -> s{_ifPayload = a})

-- | JSONP
ifCallback :: Lens' InstancesFailover (Maybe Text)
ifCallback
  = lens _ifCallback (\ s a -> s{_ifCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ifInstance :: Lens' InstancesFailover Text
ifInstance
  = lens _ifInstance (\ s a -> s{_ifInstance = a})

instance GoogleRequest InstancesFailover where
        type Rs InstancesFailover = Operation
        type Scopes InstancesFailover =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesFailover'{..}
          = go _ifProject _ifInstance _ifXgafv
              _ifUploadProtocol
              _ifAccessToken
              _ifUploadType
              _ifCallback
              (Just AltJSON)
              _ifPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesFailoverResource)
                      mempty
