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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the SSL policy for TargetHttpsProxy. The SSL policy specifies the
-- server-side support for SSL features. This affects connections between
-- clients and the HTTPS proxy load balancer. They do not affect the
-- connection between the load balancer and the backends.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.setSslPolicy@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLPolicy
    (
    -- * REST Resource
      TargetHTTPSProxiesSetSSLPolicyResource

    -- * Creating a Request
    , targetHTTPSProxiesSetSSLPolicy
    , TargetHTTPSProxiesSetSSLPolicy

    -- * Request Lenses
    , thpsspRequestId
    , thpsspProject
    , thpsspPayload
    , thpsspTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.setSslPolicy@ method which the
-- 'TargetHTTPSProxiesSetSSLPolicy' request conforms to.
type TargetHTTPSProxiesSetSSLPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   "setSslPolicy" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SSLPolicyReference :>
                           Post '[JSON] Operation

-- | Sets the SSL policy for TargetHttpsProxy. The SSL policy specifies the
-- server-side support for SSL features. This affects connections between
-- clients and the HTTPS proxy load balancer. They do not affect the
-- connection between the load balancer and the backends.
--
-- /See:/ 'targetHTTPSProxiesSetSSLPolicy' smart constructor.
data TargetHTTPSProxiesSetSSLPolicy = TargetHTTPSProxiesSetSSLPolicy'
    { _thpsspRequestId        :: !(Maybe Text)
    , _thpsspProject          :: !Text
    , _thpsspPayload          :: !SSLPolicyReference
    , _thpsspTargetHTTPSProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesSetSSLPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsspRequestId'
--
-- * 'thpsspProject'
--
-- * 'thpsspPayload'
--
-- * 'thpsspTargetHTTPSProxy'
targetHTTPSProxiesSetSSLPolicy
    :: Text -- ^ 'thpsspProject'
    -> SSLPolicyReference -- ^ 'thpsspPayload'
    -> Text -- ^ 'thpsspTargetHTTPSProxy'
    -> TargetHTTPSProxiesSetSSLPolicy
targetHTTPSProxiesSetSSLPolicy pThpsspProject_ pThpsspPayload_ pThpsspTargetHTTPSProxy_ =
    TargetHTTPSProxiesSetSSLPolicy'
    { _thpsspRequestId = Nothing
    , _thpsspProject = pThpsspProject_
    , _thpsspPayload = pThpsspPayload_
    , _thpsspTargetHTTPSProxy = pThpsspTargetHTTPSProxy_
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
thpsspRequestId :: Lens' TargetHTTPSProxiesSetSSLPolicy (Maybe Text)
thpsspRequestId
  = lens _thpsspRequestId
      (\ s a -> s{_thpsspRequestId = a})

-- | Project ID for this request.
thpsspProject :: Lens' TargetHTTPSProxiesSetSSLPolicy Text
thpsspProject
  = lens _thpsspProject
      (\ s a -> s{_thpsspProject = a})

-- | Multipart request metadata.
thpsspPayload :: Lens' TargetHTTPSProxiesSetSSLPolicy SSLPolicyReference
thpsspPayload
  = lens _thpsspPayload
      (\ s a -> s{_thpsspPayload = a})

-- | Name of the TargetHttpsProxy resource whose SSL policy is to be set. The
-- name must be 1-63 characters long, and comply with RFC1035.
thpsspTargetHTTPSProxy :: Lens' TargetHTTPSProxiesSetSSLPolicy Text
thpsspTargetHTTPSProxy
  = lens _thpsspTargetHTTPSProxy
      (\ s a -> s{_thpsspTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesSetSSLPolicy
         where
        type Rs TargetHTTPSProxiesSetSSLPolicy = Operation
        type Scopes TargetHTTPSProxiesSetSSLPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesSetSSLPolicy'{..}
          = go _thpsspProject _thpsspTargetHTTPSProxy
              _thpsspRequestId
              (Just AltJSON)
              _thpsspPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPSProxiesSetSSLPolicyResource)
                      mempty
