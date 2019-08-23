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
-- Module      : Network.Google.Resource.Compute.Subnetworks.SetPrivateIPGoogleAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set whether VMs in this subnet can access Google services without
-- assigning external IP addresses through Private Google Access.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.setPrivateIpGoogleAccess@.
module Network.Google.Resource.Compute.Subnetworks.SetPrivateIPGoogleAccess
    (
    -- * REST Resource
      SubnetworksSetPrivateIPGoogleAccessResource

    -- * Creating a Request
    , subnetworksSetPrivateIPGoogleAccess
    , SubnetworksSetPrivateIPGoogleAccess

    -- * Request Lenses
    , sspigaRequestId
    , sspigaProject
    , sspigaPayload
    , sspigaSubnetwork
    , sspigaRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.setPrivateIpGoogleAccess@ method which the
-- 'SubnetworksSetPrivateIPGoogleAccess' request conforms to.
type SubnetworksSetPrivateIPGoogleAccessResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "subnetwork" Text :>
                     "setPrivateIpGoogleAccess" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             SubnetworksSetPrivateIPGoogleAccessRequest
                             :> Post '[JSON] Operation

-- | Set whether VMs in this subnet can access Google services without
-- assigning external IP addresses through Private Google Access.
--
-- /See:/ 'subnetworksSetPrivateIPGoogleAccess' smart constructor.
data SubnetworksSetPrivateIPGoogleAccess =
  SubnetworksSetPrivateIPGoogleAccess'
    { _sspigaRequestId  :: !(Maybe Text)
    , _sspigaProject    :: !Text
    , _sspigaPayload    :: !SubnetworksSetPrivateIPGoogleAccessRequest
    , _sspigaSubnetwork :: !Text
    , _sspigaRegion     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksSetPrivateIPGoogleAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sspigaRequestId'
--
-- * 'sspigaProject'
--
-- * 'sspigaPayload'
--
-- * 'sspigaSubnetwork'
--
-- * 'sspigaRegion'
subnetworksSetPrivateIPGoogleAccess
    :: Text -- ^ 'sspigaProject'
    -> SubnetworksSetPrivateIPGoogleAccessRequest -- ^ 'sspigaPayload'
    -> Text -- ^ 'sspigaSubnetwork'
    -> Text -- ^ 'sspigaRegion'
    -> SubnetworksSetPrivateIPGoogleAccess
subnetworksSetPrivateIPGoogleAccess pSspigaProject_ pSspigaPayload_ pSspigaSubnetwork_ pSspigaRegion_ =
  SubnetworksSetPrivateIPGoogleAccess'
    { _sspigaRequestId = Nothing
    , _sspigaProject = pSspigaProject_
    , _sspigaPayload = pSspigaPayload_
    , _sspigaSubnetwork = pSspigaSubnetwork_
    , _sspigaRegion = pSspigaRegion_
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
sspigaRequestId :: Lens' SubnetworksSetPrivateIPGoogleAccess (Maybe Text)
sspigaRequestId
  = lens _sspigaRequestId
      (\ s a -> s{_sspigaRequestId = a})

-- | Project ID for this request.
sspigaProject :: Lens' SubnetworksSetPrivateIPGoogleAccess Text
sspigaProject
  = lens _sspigaProject
      (\ s a -> s{_sspigaProject = a})

-- | Multipart request metadata.
sspigaPayload :: Lens' SubnetworksSetPrivateIPGoogleAccess SubnetworksSetPrivateIPGoogleAccessRequest
sspigaPayload
  = lens _sspigaPayload
      (\ s a -> s{_sspigaPayload = a})

-- | Name of the Subnetwork resource.
sspigaSubnetwork :: Lens' SubnetworksSetPrivateIPGoogleAccess Text
sspigaSubnetwork
  = lens _sspigaSubnetwork
      (\ s a -> s{_sspigaSubnetwork = a})

-- | Name of the region scoping this request.
sspigaRegion :: Lens' SubnetworksSetPrivateIPGoogleAccess Text
sspigaRegion
  = lens _sspigaRegion (\ s a -> s{_sspigaRegion = a})

instance GoogleRequest
           SubnetworksSetPrivateIPGoogleAccess
         where
        type Rs SubnetworksSetPrivateIPGoogleAccess =
             Operation
        type Scopes SubnetworksSetPrivateIPGoogleAccess =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          SubnetworksSetPrivateIPGoogleAccess'{..}
          = go _sspigaProject _sspigaRegion _sspigaSubnetwork
              _sspigaRequestId
              (Just AltJSON)
              _sspigaPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SubnetworksSetPrivateIPGoogleAccessResource)
                      mempty
