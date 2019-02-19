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
-- Module      : Network.Google.Resource.Compute.Instances.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getIamPolicy@.
module Network.Google.Resource.Compute.Instances.GetIAMPolicy
    (
    -- * REST Resource
      InstancesGetIAMPolicyResource

    -- * Creating a Request
    , instancesGetIAMPolicy
    , InstancesGetIAMPolicy

    -- * Request Lenses
    , igiampProject
    , igiampZone
    , igiampResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.getIamPolicy@ method which the
-- 'InstancesGetIAMPolicy' request conforms to.
type InstancesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'instancesGetIAMPolicy' smart constructor.
data InstancesGetIAMPolicy =
  InstancesGetIAMPolicy'
    { _igiampProject  :: !Text
    , _igiampZone     :: !Text
    , _igiampResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igiampProject'
--
-- * 'igiampZone'
--
-- * 'igiampResource'
instancesGetIAMPolicy
    :: Text -- ^ 'igiampProject'
    -> Text -- ^ 'igiampZone'
    -> Text -- ^ 'igiampResource'
    -> InstancesGetIAMPolicy
instancesGetIAMPolicy pIgiampProject_ pIgiampZone_ pIgiampResource_ =
  InstancesGetIAMPolicy'
    { _igiampProject = pIgiampProject_
    , _igiampZone = pIgiampZone_
    , _igiampResource = pIgiampResource_
    }

-- | Project ID for this request.
igiampProject :: Lens' InstancesGetIAMPolicy Text
igiampProject
  = lens _igiampProject
      (\ s a -> s{_igiampProject = a})

-- | The name of the zone for this request.
igiampZone :: Lens' InstancesGetIAMPolicy Text
igiampZone
  = lens _igiampZone (\ s a -> s{_igiampZone = a})

-- | Name or id of the resource for this request.
igiampResource :: Lens' InstancesGetIAMPolicy Text
igiampResource
  = lens _igiampResource
      (\ s a -> s{_igiampResource = a})

instance GoogleRequest InstancesGetIAMPolicy where
        type Rs InstancesGetIAMPolicy = Policy
        type Scopes InstancesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGetIAMPolicy'{..}
          = go _igiampProject _igiampZone _igiampResource
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesGetIAMPolicyResource)
                      mempty
