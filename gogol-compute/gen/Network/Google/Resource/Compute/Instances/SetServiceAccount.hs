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
-- Module      : Network.Google.Resource.Compute.Instances.SetServiceAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the service account on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setServiceAccount@.
module Network.Google.Resource.Compute.Instances.SetServiceAccount
    (
    -- * REST Resource
      InstancesSetServiceAccountResource

    -- * Creating a Request
    , instancesSetServiceAccount
    , InstancesSetServiceAccount

    -- * Request Lenses
    , issaProject
    , issaZone
    , issaPayload
    , issaInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setServiceAccount@ method which the
-- 'InstancesSetServiceAccount' request conforms to.
type InstancesSetServiceAccountResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setServiceAccount" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstancesSetServiceAccountRequest :>
                           Post '[JSON] Operation

-- | Sets the service account on the instance.
--
-- /See:/ 'instancesSetServiceAccount' smart constructor.
data InstancesSetServiceAccount = InstancesSetServiceAccount'
    { _issaProject  :: !Text
    , _issaZone     :: !Text
    , _issaPayload  :: !InstancesSetServiceAccountRequest
    , _issaInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issaProject'
--
-- * 'issaZone'
--
-- * 'issaPayload'
--
-- * 'issaInstance'
instancesSetServiceAccount
    :: Text -- ^ 'issaProject'
    -> Text -- ^ 'issaZone'
    -> InstancesSetServiceAccountRequest -- ^ 'issaPayload'
    -> Text -- ^ 'issaInstance'
    -> InstancesSetServiceAccount
instancesSetServiceAccount pIssaProject_ pIssaZone_ pIssaPayload_ pIssaInstance_ =
    InstancesSetServiceAccount'
    { _issaProject = pIssaProject_
    , _issaZone = pIssaZone_
    , _issaPayload = pIssaPayload_
    , _issaInstance = pIssaInstance_
    }

-- | Project ID for this request.
issaProject :: Lens' InstancesSetServiceAccount Text
issaProject
  = lens _issaProject (\ s a -> s{_issaProject = a})

-- | The name of the zone for this request.
issaZone :: Lens' InstancesSetServiceAccount Text
issaZone = lens _issaZone (\ s a -> s{_issaZone = a})

-- | Multipart request metadata.
issaPayload :: Lens' InstancesSetServiceAccount InstancesSetServiceAccountRequest
issaPayload
  = lens _issaPayload (\ s a -> s{_issaPayload = a})

-- | Name of the instance resource to start.
issaInstance :: Lens' InstancesSetServiceAccount Text
issaInstance
  = lens _issaInstance (\ s a -> s{_issaInstance = a})

instance GoogleRequest InstancesSetServiceAccount
         where
        type Rs InstancesSetServiceAccount = Operation
        type Scopes InstancesSetServiceAccount =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetServiceAccount'{..}
          = go _issaProject _issaZone _issaInstance
              (Just AltJSON)
              _issaPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetServiceAccountResource)
                      mempty
