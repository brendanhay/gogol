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
-- Module      : Network.Google.Resource.Compute.Subnetworks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified subnetwork.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.delete@.
module Network.Google.Resource.Compute.Subnetworks.Delete
    (
    -- * REST Resource
      SubnetworksDeleteResource

    -- * Creating a Request
    , subnetworksDelete
    , SubnetworksDelete

    -- * Request Lenses
    , sdProject
    , sdSubnetwork
    , sdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.delete@ method which the
-- 'SubnetworksDelete' request conforms to.
type SubnetworksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "subnetwork" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified subnetwork.
--
-- /See:/ 'subnetworksDelete' smart constructor.
data SubnetworksDelete = SubnetworksDelete'
    { _sdProject    :: !Text
    , _sdSubnetwork :: !Text
    , _sdRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdProject'
--
-- * 'sdSubnetwork'
--
-- * 'sdRegion'
subnetworksDelete
    :: Text -- ^ 'sdProject'
    -> Text -- ^ 'sdSubnetwork'
    -> Text -- ^ 'sdRegion'
    -> SubnetworksDelete
subnetworksDelete pSdProject_ pSdSubnetwork_ pSdRegion_ =
    SubnetworksDelete'
    { _sdProject = pSdProject_
    , _sdSubnetwork = pSdSubnetwork_
    , _sdRegion = pSdRegion_
    }

-- | Project ID for this request.
sdProject :: Lens' SubnetworksDelete Text
sdProject
  = lens _sdProject (\ s a -> s{_sdProject = a})

-- | Name of the Subnetwork resource to delete.
sdSubnetwork :: Lens' SubnetworksDelete Text
sdSubnetwork
  = lens _sdSubnetwork (\ s a -> s{_sdSubnetwork = a})

-- | Name of the region scoping this request.
sdRegion :: Lens' SubnetworksDelete Text
sdRegion = lens _sdRegion (\ s a -> s{_sdRegion = a})

instance GoogleRequest SubnetworksDelete where
        type Rs SubnetworksDelete = Operation
        type Scopes SubnetworksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SubnetworksDelete'{..}
          = go _sdProject _sdRegion _sdSubnetwork
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksDeleteResource)
                      mempty
