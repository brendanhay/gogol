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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.SetQuicOverride
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the QUIC override policy for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.setQuicOverride@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.SetQuicOverride
    (
    -- * REST Resource
      TargetHTTPSProxiesSetQuicOverrideResource

    -- * Creating a Request
    , targetHTTPSProxiesSetQuicOverride
    , TargetHTTPSProxiesSetQuicOverride

    -- * Request Lenses
    , thpsqoRequestId
    , thpsqoProject
    , thpsqoPayload
    , thpsqoTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.setQuicOverride@ method which the
-- 'TargetHTTPSProxiesSetQuicOverride' request conforms to.
type TargetHTTPSProxiesSetQuicOverrideResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   "setQuicOverride" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           TargetHTTPSProxiesSetQuicOverrideRequest
                           :> Post '[JSON] Operation

-- | Sets the QUIC override policy for TargetHttpsProxy.
--
-- /See:/ 'targetHTTPSProxiesSetQuicOverride' smart constructor.
data TargetHTTPSProxiesSetQuicOverride =
  TargetHTTPSProxiesSetQuicOverride'
    { _thpsqoRequestId :: !(Maybe Text)
    , _thpsqoProject :: !Text
    , _thpsqoPayload :: !TargetHTTPSProxiesSetQuicOverrideRequest
    , _thpsqoTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesSetQuicOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsqoRequestId'
--
-- * 'thpsqoProject'
--
-- * 'thpsqoPayload'
--
-- * 'thpsqoTargetHTTPSProxy'
targetHTTPSProxiesSetQuicOverride
    :: Text -- ^ 'thpsqoProject'
    -> TargetHTTPSProxiesSetQuicOverrideRequest -- ^ 'thpsqoPayload'
    -> Text -- ^ 'thpsqoTargetHTTPSProxy'
    -> TargetHTTPSProxiesSetQuicOverride
targetHTTPSProxiesSetQuicOverride pThpsqoProject_ pThpsqoPayload_ pThpsqoTargetHTTPSProxy_ =
  TargetHTTPSProxiesSetQuicOverride'
    { _thpsqoRequestId = Nothing
    , _thpsqoProject = pThpsqoProject_
    , _thpsqoPayload = pThpsqoPayload_
    , _thpsqoTargetHTTPSProxy = pThpsqoTargetHTTPSProxy_
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
thpsqoRequestId :: Lens' TargetHTTPSProxiesSetQuicOverride (Maybe Text)
thpsqoRequestId
  = lens _thpsqoRequestId
      (\ s a -> s{_thpsqoRequestId = a})

-- | Project ID for this request.
thpsqoProject :: Lens' TargetHTTPSProxiesSetQuicOverride Text
thpsqoProject
  = lens _thpsqoProject
      (\ s a -> s{_thpsqoProject = a})

-- | Multipart request metadata.
thpsqoPayload :: Lens' TargetHTTPSProxiesSetQuicOverride TargetHTTPSProxiesSetQuicOverrideRequest
thpsqoPayload
  = lens _thpsqoPayload
      (\ s a -> s{_thpsqoPayload = a})

-- | Name of the TargetHttpsProxy resource to set the QUIC override policy
-- for. The name should conform to RFC1035.
thpsqoTargetHTTPSProxy :: Lens' TargetHTTPSProxiesSetQuicOverride Text
thpsqoTargetHTTPSProxy
  = lens _thpsqoTargetHTTPSProxy
      (\ s a -> s{_thpsqoTargetHTTPSProxy = a})

instance GoogleRequest
           TargetHTTPSProxiesSetQuicOverride
         where
        type Rs TargetHTTPSProxiesSetQuicOverride = Operation
        type Scopes TargetHTTPSProxiesSetQuicOverride =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesSetQuicOverride'{..}
          = go _thpsqoProject _thpsqoTargetHTTPSProxy
              _thpsqoRequestId
              (Just AltJSON)
              _thpsqoPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPSProxiesSetQuicOverrideResource)
                      mempty
