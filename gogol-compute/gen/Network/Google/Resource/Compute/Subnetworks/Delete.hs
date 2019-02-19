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
    , sdRequestId
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
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified subnetwork.
--
-- /See:/ 'subnetworksDelete' smart constructor.
data SubnetworksDelete =
  SubnetworksDelete'
    { _sdRequestId  :: !(Maybe Text)
    , _sdProject    :: !Text
    , _sdSubnetwork :: !Text
    , _sdRegion     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubnetworksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdRequestId'
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
    { _sdRequestId = Nothing
    , _sdProject = pSdProject_
    , _sdSubnetwork = pSdSubnetwork_
    , _sdRegion = pSdRegion_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
sdRequestId :: Lens' SubnetworksDelete (Maybe Text)
sdRequestId
  = lens _sdRequestId (\ s a -> s{_sdRequestId = a})

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
          = go _sdProject _sdRegion _sdSubnetwork _sdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksDeleteResource)
                      mempty
