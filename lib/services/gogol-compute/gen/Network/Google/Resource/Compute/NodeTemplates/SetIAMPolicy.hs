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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.setIamPolicy@.
module Network.Google.Resource.Compute.NodeTemplates.SetIAMPolicy
    (
    -- * REST Resource
      NodeTemplatesSetIAMPolicyResource

    -- * Creating a Request
    , nodeTemplatesSetIAMPolicy
    , NodeTemplatesSetIAMPolicy

    -- * Request Lenses
    , ntsipProject
    , ntsipPayload
    , ntsipResource
    , ntsipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.setIamPolicy@ method which the
-- 'NodeTemplatesSetIAMPolicy' request conforms to.
type NodeTemplatesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'nodeTemplatesSetIAMPolicy' smart constructor.
data NodeTemplatesSetIAMPolicy =
  NodeTemplatesSetIAMPolicy'
    { _ntsipProject :: !Text
    , _ntsipPayload :: !RegionSetPolicyRequest
    , _ntsipResource :: !Text
    , _ntsipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntsipProject'
--
-- * 'ntsipPayload'
--
-- * 'ntsipResource'
--
-- * 'ntsipRegion'
nodeTemplatesSetIAMPolicy
    :: Text -- ^ 'ntsipProject'
    -> RegionSetPolicyRequest -- ^ 'ntsipPayload'
    -> Text -- ^ 'ntsipResource'
    -> Text -- ^ 'ntsipRegion'
    -> NodeTemplatesSetIAMPolicy
nodeTemplatesSetIAMPolicy pNtsipProject_ pNtsipPayload_ pNtsipResource_ pNtsipRegion_ =
  NodeTemplatesSetIAMPolicy'
    { _ntsipProject = pNtsipProject_
    , _ntsipPayload = pNtsipPayload_
    , _ntsipResource = pNtsipResource_
    , _ntsipRegion = pNtsipRegion_
    }


-- | Project ID for this request.
ntsipProject :: Lens' NodeTemplatesSetIAMPolicy Text
ntsipProject
  = lens _ntsipProject (\ s a -> s{_ntsipProject = a})

-- | Multipart request metadata.
ntsipPayload :: Lens' NodeTemplatesSetIAMPolicy RegionSetPolicyRequest
ntsipPayload
  = lens _ntsipPayload (\ s a -> s{_ntsipPayload = a})

-- | Name or id of the resource for this request.
ntsipResource :: Lens' NodeTemplatesSetIAMPolicy Text
ntsipResource
  = lens _ntsipResource
      (\ s a -> s{_ntsipResource = a})

-- | The name of the region for this request.
ntsipRegion :: Lens' NodeTemplatesSetIAMPolicy Text
ntsipRegion
  = lens _ntsipRegion (\ s a -> s{_ntsipRegion = a})

instance GoogleRequest NodeTemplatesSetIAMPolicy
         where
        type Rs NodeTemplatesSetIAMPolicy = Policy
        type Scopes NodeTemplatesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeTemplatesSetIAMPolicy'{..}
          = go _ntsipProject _ntsipRegion _ntsipResource
              (Just AltJSON)
              _ntsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesSetIAMPolicyResource)
                      mempty
