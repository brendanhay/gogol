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
-- Module      : Network.Google.Resource.Compute.Instances.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setIamPolicy@.
module Network.Google.Resource.Compute.Instances.SetIAMPolicy
    (
    -- * REST Resource
      InstancesSetIAMPolicyResource

    -- * Creating a Request
    , instancesSetIAMPolicy
    , InstancesSetIAMPolicy

    -- * Request Lenses
    , isipProject
    , isipZone
    , isipPayload
    , isipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.setIamPolicy@ method which the
-- 'InstancesSetIAMPolicy' request conforms to.
type InstancesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ZoneSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'instancesSetIAMPolicy' smart constructor.
data InstancesSetIAMPolicy =
  InstancesSetIAMPolicy'
    { _isipProject :: !Text
    , _isipZone :: !Text
    , _isipPayload :: !ZoneSetPolicyRequest
    , _isipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isipProject'
--
-- * 'isipZone'
--
-- * 'isipPayload'
--
-- * 'isipResource'
instancesSetIAMPolicy
    :: Text -- ^ 'isipProject'
    -> Text -- ^ 'isipZone'
    -> ZoneSetPolicyRequest -- ^ 'isipPayload'
    -> Text -- ^ 'isipResource'
    -> InstancesSetIAMPolicy
instancesSetIAMPolicy pIsipProject_ pIsipZone_ pIsipPayload_ pIsipResource_ =
  InstancesSetIAMPolicy'
    { _isipProject = pIsipProject_
    , _isipZone = pIsipZone_
    , _isipPayload = pIsipPayload_
    , _isipResource = pIsipResource_
    }


-- | Project ID for this request.
isipProject :: Lens' InstancesSetIAMPolicy Text
isipProject
  = lens _isipProject (\ s a -> s{_isipProject = a})

-- | The name of the zone for this request.
isipZone :: Lens' InstancesSetIAMPolicy Text
isipZone = lens _isipZone (\ s a -> s{_isipZone = a})

-- | Multipart request metadata.
isipPayload :: Lens' InstancesSetIAMPolicy ZoneSetPolicyRequest
isipPayload
  = lens _isipPayload (\ s a -> s{_isipPayload = a})

-- | Name or id of the resource for this request.
isipResource :: Lens' InstancesSetIAMPolicy Text
isipResource
  = lens _isipResource (\ s a -> s{_isipResource = a})

instance GoogleRequest InstancesSetIAMPolicy where
        type Rs InstancesSetIAMPolicy = Policy
        type Scopes InstancesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetIAMPolicy'{..}
          = go _isipProject _isipZone _isipResource
              (Just AltJSON)
              _isipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetIAMPolicyResource)
                      mempty
