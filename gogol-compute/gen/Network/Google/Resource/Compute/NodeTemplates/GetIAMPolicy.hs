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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.getIamPolicy@.
module Network.Google.Resource.Compute.NodeTemplates.GetIAMPolicy
    (
    -- * REST Resource
      NodeTemplatesGetIAMPolicyResource

    -- * Creating a Request
    , nodeTemplatesGetIAMPolicy
    , NodeTemplatesGetIAMPolicy

    -- * Request Lenses
    , ntgipProject
    , ntgipResource
    , ntgipRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.getIamPolicy@ method which the
-- 'NodeTemplatesGetIAMPolicy' request conforms to.
type NodeTemplatesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'nodeTemplatesGetIAMPolicy' smart constructor.
data NodeTemplatesGetIAMPolicy =
  NodeTemplatesGetIAMPolicy'
    { _ntgipProject  :: !Text
    , _ntgipResource :: !Text
    , _ntgipRegion   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntgipProject'
--
-- * 'ntgipResource'
--
-- * 'ntgipRegion'
nodeTemplatesGetIAMPolicy
    :: Text -- ^ 'ntgipProject'
    -> Text -- ^ 'ntgipResource'
    -> Text -- ^ 'ntgipRegion'
    -> NodeTemplatesGetIAMPolicy
nodeTemplatesGetIAMPolicy pNtgipProject_ pNtgipResource_ pNtgipRegion_ =
  NodeTemplatesGetIAMPolicy'
    { _ntgipProject = pNtgipProject_
    , _ntgipResource = pNtgipResource_
    , _ntgipRegion = pNtgipRegion_
    }


-- | Project ID for this request.
ntgipProject :: Lens' NodeTemplatesGetIAMPolicy Text
ntgipProject
  = lens _ntgipProject (\ s a -> s{_ntgipProject = a})

-- | Name or id of the resource for this request.
ntgipResource :: Lens' NodeTemplatesGetIAMPolicy Text
ntgipResource
  = lens _ntgipResource
      (\ s a -> s{_ntgipResource = a})

-- | The name of the region for this request.
ntgipRegion :: Lens' NodeTemplatesGetIAMPolicy Text
ntgipRegion
  = lens _ntgipRegion (\ s a -> s{_ntgipRegion = a})

instance GoogleRequest NodeTemplatesGetIAMPolicy
         where
        type Rs NodeTemplatesGetIAMPolicy = Policy
        type Scopes NodeTemplatesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTemplatesGetIAMPolicy'{..}
          = go _ntgipProject _ntgipRegion _ntgipResource
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesGetIAMPolicyResource)
                      mempty
