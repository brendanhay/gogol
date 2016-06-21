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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Failover the instance to its failover replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.failover@.
module Network.Google.Resource.SQL.Instances.Failover
    (
    -- * REST Resource
      InstancesFailoverResource

    -- * Creating a Request
    , instancesFailover
    , InstancesFailover

    -- * Request Lenses
    , ifProject
    , ifPayload
    , ifInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.failover@ method which the
-- 'InstancesFailover' request conforms to.
type InstancesFailoverResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "failover" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesFailoverRequest :>
                       Post '[JSON] Operation

-- | Failover the instance to its failover replica instance.
--
-- /See:/ 'instancesFailover' smart constructor.
data InstancesFailover = InstancesFailover'
    { _ifProject  :: !Text
    , _ifPayload  :: !InstancesFailoverRequest
    , _ifInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesFailover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifProject'
--
-- * 'ifPayload'
--
-- * 'ifInstance'
instancesFailover
    :: Text -- ^ 'ifProject'
    -> InstancesFailoverRequest -- ^ 'ifPayload'
    -> Text -- ^ 'ifInstance'
    -> InstancesFailover
instancesFailover pIfProject_ pIfPayload_ pIfInstance_ =
    InstancesFailover'
    { _ifProject = pIfProject_
    , _ifPayload = pIfPayload_
    , _ifInstance = pIfInstance_
    }

-- | ID of the project that contains the read replica.
ifProject :: Lens' InstancesFailover Text
ifProject
  = lens _ifProject (\ s a -> s{_ifProject = a})

-- | Multipart request metadata.
ifPayload :: Lens' InstancesFailover InstancesFailoverRequest
ifPayload
  = lens _ifPayload (\ s a -> s{_ifPayload = a})

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
          = go _ifProject _ifInstance (Just AltJSON) _ifPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesFailoverResource)
                      mempty
