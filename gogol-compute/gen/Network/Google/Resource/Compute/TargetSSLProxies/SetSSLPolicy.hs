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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.SetSSLPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the SSL policy for TargetSslProxy. The SSL policy specifies the
-- server-side support for SSL features. This affects connections between
-- clients and the SSL proxy load balancer. They do not affect the
-- connection between the load balancer and the backends.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.setSslPolicy@.
module Network.Google.Resource.Compute.TargetSSLProxies.SetSSLPolicy
    (
    -- * REST Resource
      TargetSSLProxiesSetSSLPolicyResource

    -- * Creating a Request
    , targetSSLProxiesSetSSLPolicy
    , TargetSSLProxiesSetSSLPolicy

    -- * Request Lenses
    , tspsspRequestId
    , tspsspProject
    , tspsspPayload
    , tspsspTargetSSLProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.setSslPolicy@ method which the
-- 'TargetSSLProxiesSetSSLPolicy' request conforms to.
type TargetSSLProxiesSetSSLPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   "setSslPolicy" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SSLPolicyReference :>
                           Post '[JSON] Operation

-- | Sets the SSL policy for TargetSslProxy. The SSL policy specifies the
-- server-side support for SSL features. This affects connections between
-- clients and the SSL proxy load balancer. They do not affect the
-- connection between the load balancer and the backends.
--
-- /See:/ 'targetSSLProxiesSetSSLPolicy' smart constructor.
data TargetSSLProxiesSetSSLPolicy =
  TargetSSLProxiesSetSSLPolicy'
    { _tspsspRequestId      :: !(Maybe Text)
    , _tspsspProject        :: !Text
    , _tspsspPayload        :: !SSLPolicyReference
    , _tspsspTargetSSLProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetSSLProxiesSetSSLPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsspRequestId'
--
-- * 'tspsspProject'
--
-- * 'tspsspPayload'
--
-- * 'tspsspTargetSSLProxy'
targetSSLProxiesSetSSLPolicy
    :: Text -- ^ 'tspsspProject'
    -> SSLPolicyReference -- ^ 'tspsspPayload'
    -> Text -- ^ 'tspsspTargetSSLProxy'
    -> TargetSSLProxiesSetSSLPolicy
targetSSLProxiesSetSSLPolicy pTspsspProject_ pTspsspPayload_ pTspsspTargetSSLProxy_ =
  TargetSSLProxiesSetSSLPolicy'
    { _tspsspRequestId = Nothing
    , _tspsspProject = pTspsspProject_
    , _tspsspPayload = pTspsspPayload_
    , _tspsspTargetSSLProxy = pTspsspTargetSSLProxy_
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
tspsspRequestId :: Lens' TargetSSLProxiesSetSSLPolicy (Maybe Text)
tspsspRequestId
  = lens _tspsspRequestId
      (\ s a -> s{_tspsspRequestId = a})

-- | Project ID for this request.
tspsspProject :: Lens' TargetSSLProxiesSetSSLPolicy Text
tspsspProject
  = lens _tspsspProject
      (\ s a -> s{_tspsspProject = a})

-- | Multipart request metadata.
tspsspPayload :: Lens' TargetSSLProxiesSetSSLPolicy SSLPolicyReference
tspsspPayload
  = lens _tspsspPayload
      (\ s a -> s{_tspsspPayload = a})

-- | Name of the TargetSslProxy resource whose SSL policy is to be set. The
-- name must be 1-63 characters long, and comply with RFC1035.
tspsspTargetSSLProxy :: Lens' TargetSSLProxiesSetSSLPolicy Text
tspsspTargetSSLProxy
  = lens _tspsspTargetSSLProxy
      (\ s a -> s{_tspsspTargetSSLProxy = a})

instance GoogleRequest TargetSSLProxiesSetSSLPolicy
         where
        type Rs TargetSSLProxiesSetSSLPolicy = Operation
        type Scopes TargetSSLProxiesSetSSLPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesSetSSLPolicy'{..}
          = go _tspsspProject _tspsspTargetSSLProxy
              _tspsspRequestId
              (Just AltJSON)
              _tspsspPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesSetSSLPolicyResource)
                      mempty
