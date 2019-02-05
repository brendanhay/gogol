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
-- Module      : Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expands the IP CIDR range of the subnetwork to a specified value.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.expandIpCidrRange@.
module Network.Google.Resource.Compute.Subnetworks.ExpandIPCIdRRange
    (
    -- * REST Resource
      SubnetworksExpandIPCIdRRangeResource

    -- * Creating a Request
    , subnetworksExpandIPCIdRRange
    , SubnetworksExpandIPCIdRRange

    -- * Request Lenses
    , seicirrRequestId
    , seicirrProject
    , seicirrPayload
    , seicirrSubnetwork
    , seicirrRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.expandIpCidrRange@ method which the
-- 'SubnetworksExpandIPCIdRRange' request conforms to.
type SubnetworksExpandIPCIdRRangeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "subnetwork" Text :>
                     "expandIpCidrRange" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SubnetworksExpandIPCIdRRangeRequest
                             :> Post '[JSON] Operation

-- | Expands the IP CIDR range of the subnetwork to a specified value.
--
-- /See:/ 'subnetworksExpandIPCIdRRange' smart constructor.
data SubnetworksExpandIPCIdRRange = SubnetworksExpandIPCIdRRange'
    { _seicirrRequestId  :: !(Maybe Text)
    , _seicirrProject    :: !Text
    , _seicirrPayload    :: !SubnetworksExpandIPCIdRRangeRequest
    , _seicirrSubnetwork :: !Text
    , _seicirrRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksExpandIPCIdRRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seicirrRequestId'
--
-- * 'seicirrProject'
--
-- * 'seicirrPayload'
--
-- * 'seicirrSubnetwork'
--
-- * 'seicirrRegion'
subnetworksExpandIPCIdRRange
    :: Text -- ^ 'seicirrProject'
    -> SubnetworksExpandIPCIdRRangeRequest -- ^ 'seicirrPayload'
    -> Text -- ^ 'seicirrSubnetwork'
    -> Text -- ^ 'seicirrRegion'
    -> SubnetworksExpandIPCIdRRange
subnetworksExpandIPCIdRRange pSeicirrProject_ pSeicirrPayload_ pSeicirrSubnetwork_ pSeicirrRegion_ =
    SubnetworksExpandIPCIdRRange'
    { _seicirrRequestId = Nothing
    , _seicirrProject = pSeicirrProject_
    , _seicirrPayload = pSeicirrPayload_
    , _seicirrSubnetwork = pSeicirrSubnetwork_
    , _seicirrRegion = pSeicirrRegion_
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
seicirrRequestId :: Lens' SubnetworksExpandIPCIdRRange (Maybe Text)
seicirrRequestId
  = lens _seicirrRequestId
      (\ s a -> s{_seicirrRequestId = a})

-- | Project ID for this request.
seicirrProject :: Lens' SubnetworksExpandIPCIdRRange Text
seicirrProject
  = lens _seicirrProject
      (\ s a -> s{_seicirrProject = a})

-- | Multipart request metadata.
seicirrPayload :: Lens' SubnetworksExpandIPCIdRRange SubnetworksExpandIPCIdRRangeRequest
seicirrPayload
  = lens _seicirrPayload
      (\ s a -> s{_seicirrPayload = a})

-- | Name of the Subnetwork resource to update.
seicirrSubnetwork :: Lens' SubnetworksExpandIPCIdRRange Text
seicirrSubnetwork
  = lens _seicirrSubnetwork
      (\ s a -> s{_seicirrSubnetwork = a})

-- | Name of the region scoping this request.
seicirrRegion :: Lens' SubnetworksExpandIPCIdRRange Text
seicirrRegion
  = lens _seicirrRegion
      (\ s a -> s{_seicirrRegion = a})

instance GoogleRequest SubnetworksExpandIPCIdRRange
         where
        type Rs SubnetworksExpandIPCIdRRange = Operation
        type Scopes SubnetworksExpandIPCIdRRange =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SubnetworksExpandIPCIdRRange'{..}
          = go _seicirrProject _seicirrRegion
              _seicirrSubnetwork
              _seicirrRequestId
              (Just AltJSON)
              _seicirrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksExpandIPCIdRRangeResource)
                      mempty
