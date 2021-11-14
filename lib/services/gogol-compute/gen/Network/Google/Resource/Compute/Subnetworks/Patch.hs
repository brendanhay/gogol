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
-- Module      : Network.Google.Resource.Compute.Subnetworks.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified subnetwork with the data included in the request.
-- Only certain fields can be updated with a patch request as indicated in
-- the field descriptions. You must specify the current fingerprint of the
-- subnetwork resource being patched.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.patch@.
module Network.Google.Resource.Compute.Subnetworks.Patch
    (
    -- * REST Resource
      SubnetworksPatchResource

    -- * Creating a Request
    , subnetworksPatch
    , SubnetworksPatch

    -- * Request Lenses
    , spRequestId
    , spProject
    , spDrainTimeoutSeconds
    , spPayload
    , spSubnetwork
    , spRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.patch@ method which the
-- 'SubnetworksPatch' request conforms to.
type SubnetworksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   Capture "subnetwork" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "drainTimeoutSeconds" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Subnetwork :> Patch '[JSON] Operation

-- | Patches the specified subnetwork with the data included in the request.
-- Only certain fields can be updated with a patch request as indicated in
-- the field descriptions. You must specify the current fingerprint of the
-- subnetwork resource being patched.
--
-- /See:/ 'subnetworksPatch' smart constructor.
data SubnetworksPatch =
  SubnetworksPatch'
    { _spRequestId :: !(Maybe Text)
    , _spProject :: !Text
    , _spDrainTimeoutSeconds :: !(Maybe (Textual Int32))
    , _spPayload :: !Subnetwork
    , _spSubnetwork :: !Text
    , _spRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spRequestId'
--
-- * 'spProject'
--
-- * 'spDrainTimeoutSeconds'
--
-- * 'spPayload'
--
-- * 'spSubnetwork'
--
-- * 'spRegion'
subnetworksPatch
    :: Text -- ^ 'spProject'
    -> Subnetwork -- ^ 'spPayload'
    -> Text -- ^ 'spSubnetwork'
    -> Text -- ^ 'spRegion'
    -> SubnetworksPatch
subnetworksPatch pSpProject_ pSpPayload_ pSpSubnetwork_ pSpRegion_ =
  SubnetworksPatch'
    { _spRequestId = Nothing
    , _spProject = pSpProject_
    , _spDrainTimeoutSeconds = Nothing
    , _spPayload = pSpPayload_
    , _spSubnetwork = pSpSubnetwork_
    , _spRegion = pSpRegion_
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
spRequestId :: Lens' SubnetworksPatch (Maybe Text)
spRequestId
  = lens _spRequestId (\ s a -> s{_spRequestId = a})

-- | Project ID for this request.
spProject :: Lens' SubnetworksPatch Text
spProject
  = lens _spProject (\ s a -> s{_spProject = a})

-- | The drain timeout specifies the upper bound in seconds on the amount of
-- time allowed to drain connections from the current ACTIVE subnetwork to
-- the current BACKUP subnetwork. The drain timeout is only applicable when
-- the following conditions are true: - the subnetwork being patched has
-- purpose = INTERNAL_HTTPS_LOAD_BALANCER - the subnetwork being patched
-- has role = BACKUP - the patch request is setting the role to ACTIVE.
-- Note that after this patch operation the roles of the ACTIVE and BACKUP
-- subnetworks will be swapped.
spDrainTimeoutSeconds :: Lens' SubnetworksPatch (Maybe Int32)
spDrainTimeoutSeconds
  = lens _spDrainTimeoutSeconds
      (\ s a -> s{_spDrainTimeoutSeconds = a})
      . mapping _Coerce

-- | Multipart request metadata.
spPayload :: Lens' SubnetworksPatch Subnetwork
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Name of the Subnetwork resource to patch.
spSubnetwork :: Lens' SubnetworksPatch Text
spSubnetwork
  = lens _spSubnetwork (\ s a -> s{_spSubnetwork = a})

-- | Name of the region scoping this request.
spRegion :: Lens' SubnetworksPatch Text
spRegion = lens _spRegion (\ s a -> s{_spRegion = a})

instance GoogleRequest SubnetworksPatch where
        type Rs SubnetworksPatch = Operation
        type Scopes SubnetworksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SubnetworksPatch'{..}
          = go _spProject _spRegion _spSubnetwork _spRequestId
              _spDrainTimeoutSeconds
              (Just AltJSON)
              _spPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksPatchResource)
                      mempty
