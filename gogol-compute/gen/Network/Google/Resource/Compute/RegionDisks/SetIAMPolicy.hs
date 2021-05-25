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
-- Module      : Network.Google.Resource.Compute.RegionDisks.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.setIamPolicy@.
module Network.Google.Resource.Compute.RegionDisks.SetIAMPolicy
    (
    -- * REST Resource
      RegionDisksSetIAMPolicyResource

    -- * Creating a Request
    , regionDisksSetIAMPolicy
    , RegionDisksSetIAMPolicy

    -- * Request Lenses
    , rdsipProject
    , rdsipPayload
    , rdsipResource
    , rdsipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.setIamPolicy@ method which the
-- 'RegionDisksSetIAMPolicy' request conforms to.
type RegionDisksSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'regionDisksSetIAMPolicy' smart constructor.
data RegionDisksSetIAMPolicy =
  RegionDisksSetIAMPolicy'
    { _rdsipProject :: !Text
    , _rdsipPayload :: !RegionSetPolicyRequest
    , _rdsipResource :: !Text
    , _rdsipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsipProject'
--
-- * 'rdsipPayload'
--
-- * 'rdsipResource'
--
-- * 'rdsipRegion'
regionDisksSetIAMPolicy
    :: Text -- ^ 'rdsipProject'
    -> RegionSetPolicyRequest -- ^ 'rdsipPayload'
    -> Text -- ^ 'rdsipResource'
    -> Text -- ^ 'rdsipRegion'
    -> RegionDisksSetIAMPolicy
regionDisksSetIAMPolicy pRdsipProject_ pRdsipPayload_ pRdsipResource_ pRdsipRegion_ =
  RegionDisksSetIAMPolicy'
    { _rdsipProject = pRdsipProject_
    , _rdsipPayload = pRdsipPayload_
    , _rdsipResource = pRdsipResource_
    , _rdsipRegion = pRdsipRegion_
    }


-- | Project ID for this request.
rdsipProject :: Lens' RegionDisksSetIAMPolicy Text
rdsipProject
  = lens _rdsipProject (\ s a -> s{_rdsipProject = a})

-- | Multipart request metadata.
rdsipPayload :: Lens' RegionDisksSetIAMPolicy RegionSetPolicyRequest
rdsipPayload
  = lens _rdsipPayload (\ s a -> s{_rdsipPayload = a})

-- | Name or id of the resource for this request.
rdsipResource :: Lens' RegionDisksSetIAMPolicy Text
rdsipResource
  = lens _rdsipResource
      (\ s a -> s{_rdsipResource = a})

-- | The name of the region for this request.
rdsipRegion :: Lens' RegionDisksSetIAMPolicy Text
rdsipRegion
  = lens _rdsipRegion (\ s a -> s{_rdsipRegion = a})

instance GoogleRequest RegionDisksSetIAMPolicy where
        type Rs RegionDisksSetIAMPolicy = Policy
        type Scopes RegionDisksSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksSetIAMPolicy'{..}
          = go _rdsipProject _rdsipRegion _rdsipResource
              (Just AltJSON)
              _rdsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksSetIAMPolicyResource)
                      mempty
