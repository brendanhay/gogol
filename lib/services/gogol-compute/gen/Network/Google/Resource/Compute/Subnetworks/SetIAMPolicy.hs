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
-- Module      : Network.Google.Resource.Compute.Subnetworks.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.setIamPolicy@.
module Network.Google.Resource.Compute.Subnetworks.SetIAMPolicy
    (
    -- * REST Resource
      SubnetworksSetIAMPolicyResource

    -- * Creating a Request
    , subnetworksSetIAMPolicy
    , SubnetworksSetIAMPolicy

    -- * Request Lenses
    , ssiampProject
    , ssiampPayload
    , ssiampResource
    , ssiampRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.setIamPolicy@ method which the
-- 'SubnetworksSetIAMPolicy' request conforms to.
type SubnetworksSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'subnetworksSetIAMPolicy' smart constructor.
data SubnetworksSetIAMPolicy =
  SubnetworksSetIAMPolicy'
    { _ssiampProject :: !Text
    , _ssiampPayload :: !RegionSetPolicyRequest
    , _ssiampResource :: !Text
    , _ssiampRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssiampProject'
--
-- * 'ssiampPayload'
--
-- * 'ssiampResource'
--
-- * 'ssiampRegion'
subnetworksSetIAMPolicy
    :: Text -- ^ 'ssiampProject'
    -> RegionSetPolicyRequest -- ^ 'ssiampPayload'
    -> Text -- ^ 'ssiampResource'
    -> Text -- ^ 'ssiampRegion'
    -> SubnetworksSetIAMPolicy
subnetworksSetIAMPolicy pSsiampProject_ pSsiampPayload_ pSsiampResource_ pSsiampRegion_ =
  SubnetworksSetIAMPolicy'
    { _ssiampProject = pSsiampProject_
    , _ssiampPayload = pSsiampPayload_
    , _ssiampResource = pSsiampResource_
    , _ssiampRegion = pSsiampRegion_
    }


-- | Project ID for this request.
ssiampProject :: Lens' SubnetworksSetIAMPolicy Text
ssiampProject
  = lens _ssiampProject
      (\ s a -> s{_ssiampProject = a})

-- | Multipart request metadata.
ssiampPayload :: Lens' SubnetworksSetIAMPolicy RegionSetPolicyRequest
ssiampPayload
  = lens _ssiampPayload
      (\ s a -> s{_ssiampPayload = a})

-- | Name or id of the resource for this request.
ssiampResource :: Lens' SubnetworksSetIAMPolicy Text
ssiampResource
  = lens _ssiampResource
      (\ s a -> s{_ssiampResource = a})

-- | The name of the region for this request.
ssiampRegion :: Lens' SubnetworksSetIAMPolicy Text
ssiampRegion
  = lens _ssiampRegion (\ s a -> s{_ssiampRegion = a})

instance GoogleRequest SubnetworksSetIAMPolicy where
        type Rs SubnetworksSetIAMPolicy = Policy
        type Scopes SubnetworksSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SubnetworksSetIAMPolicy'{..}
          = go _ssiampProject _ssiampRegion _ssiampResource
              (Just AltJSON)
              _ssiampPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksSetIAMPolicyResource)
                      mempty
