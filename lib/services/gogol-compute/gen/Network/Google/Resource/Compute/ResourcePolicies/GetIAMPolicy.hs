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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.getIamPolicy@.
module Network.Google.Resource.Compute.ResourcePolicies.GetIAMPolicy
    (
    -- * REST Resource
      ResourcePoliciesGetIAMPolicyResource

    -- * Creating a Request
    , resourcePoliciesGetIAMPolicy
    , ResourcePoliciesGetIAMPolicy

    -- * Request Lenses
    , rpgipProject
    , rpgipResource
    , rpgipOptionsRequestedPolicyVersion
    , rpgipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.getIamPolicy@ method which the
-- 'ResourcePoliciesGetIAMPolicy' request conforms to.
type ResourcePoliciesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "optionsRequestedPolicyVersion"
                         (Textual Int32)
                         :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'resourcePoliciesGetIAMPolicy' smart constructor.
data ResourcePoliciesGetIAMPolicy =
  ResourcePoliciesGetIAMPolicy'
    { _rpgipProject :: !Text
    , _rpgipResource :: !Text
    , _rpgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _rpgipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgipProject'
--
-- * 'rpgipResource'
--
-- * 'rpgipOptionsRequestedPolicyVersion'
--
-- * 'rpgipRegion'
resourcePoliciesGetIAMPolicy
    :: Text -- ^ 'rpgipProject'
    -> Text -- ^ 'rpgipResource'
    -> Text -- ^ 'rpgipRegion'
    -> ResourcePoliciesGetIAMPolicy
resourcePoliciesGetIAMPolicy pRpgipProject_ pRpgipResource_ pRpgipRegion_ =
  ResourcePoliciesGetIAMPolicy'
    { _rpgipProject = pRpgipProject_
    , _rpgipResource = pRpgipResource_
    , _rpgipOptionsRequestedPolicyVersion = Nothing
    , _rpgipRegion = pRpgipRegion_
    }


-- | Project ID for this request.
rpgipProject :: Lens' ResourcePoliciesGetIAMPolicy Text
rpgipProject
  = lens _rpgipProject (\ s a -> s{_rpgipProject = a})

-- | Name or id of the resource for this request.
rpgipResource :: Lens' ResourcePoliciesGetIAMPolicy Text
rpgipResource
  = lens _rpgipResource
      (\ s a -> s{_rpgipResource = a})

-- | Requested IAM Policy version.
rpgipOptionsRequestedPolicyVersion :: Lens' ResourcePoliciesGetIAMPolicy (Maybe Int32)
rpgipOptionsRequestedPolicyVersion
  = lens _rpgipOptionsRequestedPolicyVersion
      (\ s a -> s{_rpgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | The name of the region for this request.
rpgipRegion :: Lens' ResourcePoliciesGetIAMPolicy Text
rpgipRegion
  = lens _rpgipRegion (\ s a -> s{_rpgipRegion = a})

instance GoogleRequest ResourcePoliciesGetIAMPolicy
         where
        type Rs ResourcePoliciesGetIAMPolicy = Policy
        type Scopes ResourcePoliciesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ResourcePoliciesGetIAMPolicy'{..}
          = go _rpgipProject _rpgipRegion _rpgipResource
              _rpgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesGetIAMPolicyResource)
                      mempty
