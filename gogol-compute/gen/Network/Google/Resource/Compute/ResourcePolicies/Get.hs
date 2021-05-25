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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all information of the specified resource policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.get@.
module Network.Google.Resource.Compute.ResourcePolicies.Get
    (
    -- * REST Resource
      ResourcePoliciesGetResource

    -- * Creating a Request
    , resourcePoliciesGet
    , ResourcePoliciesGet

    -- * Request Lenses
    , rpgResourcePolicy
    , rpgProject
    , rpgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.get@ method which the
-- 'ResourcePoliciesGet' request conforms to.
type ResourcePoliciesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   Capture "resourcePolicy" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ResourcePolicy

-- | Retrieves all information of the specified resource policy.
--
-- /See:/ 'resourcePoliciesGet' smart constructor.
data ResourcePoliciesGet =
  ResourcePoliciesGet'
    { _rpgResourcePolicy :: !Text
    , _rpgProject :: !Text
    , _rpgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgResourcePolicy'
--
-- * 'rpgProject'
--
-- * 'rpgRegion'
resourcePoliciesGet
    :: Text -- ^ 'rpgResourcePolicy'
    -> Text -- ^ 'rpgProject'
    -> Text -- ^ 'rpgRegion'
    -> ResourcePoliciesGet
resourcePoliciesGet pRpgResourcePolicy_ pRpgProject_ pRpgRegion_ =
  ResourcePoliciesGet'
    { _rpgResourcePolicy = pRpgResourcePolicy_
    , _rpgProject = pRpgProject_
    , _rpgRegion = pRpgRegion_
    }


-- | Name of the resource policy to retrieve.
rpgResourcePolicy :: Lens' ResourcePoliciesGet Text
rpgResourcePolicy
  = lens _rpgResourcePolicy
      (\ s a -> s{_rpgResourcePolicy = a})

-- | Project ID for this request.
rpgProject :: Lens' ResourcePoliciesGet Text
rpgProject
  = lens _rpgProject (\ s a -> s{_rpgProject = a})

-- | Name of the region for this request.
rpgRegion :: Lens' ResourcePoliciesGet Text
rpgRegion
  = lens _rpgRegion (\ s a -> s{_rpgRegion = a})

instance GoogleRequest ResourcePoliciesGet where
        type Rs ResourcePoliciesGet = ResourcePolicy
        type Scopes ResourcePoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ResourcePoliciesGet'{..}
          = go _rpgProject _rpgRegion _rpgResourcePolicy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesGetResource)
                      mempty
