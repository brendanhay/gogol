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
-- Module      : Network.Google.Resource.Compute.Subnetworks.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.getIamPolicy@.
module Network.Google.Resource.Compute.Subnetworks.GetIAMPolicy
    (
    -- * REST Resource
      SubnetworksGetIAMPolicyResource

    -- * Creating a Request
    , subnetworksGetIAMPolicy
    , SubnetworksGetIAMPolicy

    -- * Request Lenses
    , sgipProject
    , sgipResource
    , sgipOptionsRequestedPolicyVersion
    , sgipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.getIamPolicy@ method which the
-- 'SubnetworksGetIAMPolicy' request conforms to.
type SubnetworksGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "optionsRequestedPolicyVersion"
                         (Textual Int32)
                         :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'subnetworksGetIAMPolicy' smart constructor.
data SubnetworksGetIAMPolicy =
  SubnetworksGetIAMPolicy'
    { _sgipProject :: !Text
    , _sgipResource :: !Text
    , _sgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _sgipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgipProject'
--
-- * 'sgipResource'
--
-- * 'sgipOptionsRequestedPolicyVersion'
--
-- * 'sgipRegion'
subnetworksGetIAMPolicy
    :: Text -- ^ 'sgipProject'
    -> Text -- ^ 'sgipResource'
    -> Text -- ^ 'sgipRegion'
    -> SubnetworksGetIAMPolicy
subnetworksGetIAMPolicy pSgipProject_ pSgipResource_ pSgipRegion_ =
  SubnetworksGetIAMPolicy'
    { _sgipProject = pSgipProject_
    , _sgipResource = pSgipResource_
    , _sgipOptionsRequestedPolicyVersion = Nothing
    , _sgipRegion = pSgipRegion_
    }


-- | Project ID for this request.
sgipProject :: Lens' SubnetworksGetIAMPolicy Text
sgipProject
  = lens _sgipProject (\ s a -> s{_sgipProject = a})

-- | Name or id of the resource for this request.
sgipResource :: Lens' SubnetworksGetIAMPolicy Text
sgipResource
  = lens _sgipResource (\ s a -> s{_sgipResource = a})

-- | Requested IAM Policy version.
sgipOptionsRequestedPolicyVersion :: Lens' SubnetworksGetIAMPolicy (Maybe Int32)
sgipOptionsRequestedPolicyVersion
  = lens _sgipOptionsRequestedPolicyVersion
      (\ s a -> s{_sgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | The name of the region for this request.
sgipRegion :: Lens' SubnetworksGetIAMPolicy Text
sgipRegion
  = lens _sgipRegion (\ s a -> s{_sgipRegion = a})

instance GoogleRequest SubnetworksGetIAMPolicy where
        type Rs SubnetworksGetIAMPolicy = Policy
        type Scopes SubnetworksGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksGetIAMPolicy'{..}
          = go _sgipProject _sgipRegion _sgipResource
              _sgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksGetIAMPolicyResource)
                      mempty
