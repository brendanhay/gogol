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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.setIamPolicy@.
module Network.Google.Resource.Compute.ResourcePolicies.SetIAMPolicy
    (
    -- * REST Resource
      ResourcePoliciesSetIAMPolicyResource

    -- * Creating a Request
    , resourcePoliciesSetIAMPolicy
    , ResourcePoliciesSetIAMPolicy

    -- * Request Lenses
    , rpsipProject
    , rpsipPayload
    , rpsipResource
    , rpsipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.setIamPolicy@ method which the
-- 'ResourcePoliciesSetIAMPolicy' request conforms to.
type ResourcePoliciesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'resourcePoliciesSetIAMPolicy' smart constructor.
data ResourcePoliciesSetIAMPolicy =
  ResourcePoliciesSetIAMPolicy'
    { _rpsipProject :: !Text
    , _rpsipPayload :: !RegionSetPolicyRequest
    , _rpsipResource :: !Text
    , _rpsipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsipProject'
--
-- * 'rpsipPayload'
--
-- * 'rpsipResource'
--
-- * 'rpsipRegion'
resourcePoliciesSetIAMPolicy
    :: Text -- ^ 'rpsipProject'
    -> RegionSetPolicyRequest -- ^ 'rpsipPayload'
    -> Text -- ^ 'rpsipResource'
    -> Text -- ^ 'rpsipRegion'
    -> ResourcePoliciesSetIAMPolicy
resourcePoliciesSetIAMPolicy pRpsipProject_ pRpsipPayload_ pRpsipResource_ pRpsipRegion_ =
  ResourcePoliciesSetIAMPolicy'
    { _rpsipProject = pRpsipProject_
    , _rpsipPayload = pRpsipPayload_
    , _rpsipResource = pRpsipResource_
    , _rpsipRegion = pRpsipRegion_
    }


-- | Project ID for this request.
rpsipProject :: Lens' ResourcePoliciesSetIAMPolicy Text
rpsipProject
  = lens _rpsipProject (\ s a -> s{_rpsipProject = a})

-- | Multipart request metadata.
rpsipPayload :: Lens' ResourcePoliciesSetIAMPolicy RegionSetPolicyRequest
rpsipPayload
  = lens _rpsipPayload (\ s a -> s{_rpsipPayload = a})

-- | Name or id of the resource for this request.
rpsipResource :: Lens' ResourcePoliciesSetIAMPolicy Text
rpsipResource
  = lens _rpsipResource
      (\ s a -> s{_rpsipResource = a})

-- | The name of the region for this request.
rpsipRegion :: Lens' ResourcePoliciesSetIAMPolicy Text
rpsipRegion
  = lens _rpsipRegion (\ s a -> s{_rpsipRegion = a})

instance GoogleRequest ResourcePoliciesSetIAMPolicy
         where
        type Rs ResourcePoliciesSetIAMPolicy = Policy
        type Scopes ResourcePoliciesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ResourcePoliciesSetIAMPolicy'{..}
          = go _rpsipProject _rpsipRegion _rpsipResource
              (Just AltJSON)
              _rpsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesSetIAMPolicyResource)
                      mempty
