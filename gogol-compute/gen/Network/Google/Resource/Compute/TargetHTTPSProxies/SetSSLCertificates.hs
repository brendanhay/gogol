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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.setSslCertificates@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.SetSSLCertificates
    (
    -- * REST Resource
      TargetHTTPSProxiesSetSSLCertificatesResource

    -- * Creating a Request
    , targetHTTPSProxiesSetSSLCertificates
    , TargetHTTPSProxiesSetSSLCertificates

    -- * Request Lenses
    , thpsscRequestId
    , thpsscProject
    , thpsscPayload
    , thpsscTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.setSslCertificates@ method which the
-- 'TargetHTTPSProxiesSetSSLCertificates' request conforms to.
type TargetHTTPSProxiesSetSSLCertificatesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "targetHttpsProxies" :>
               Capture "targetHttpsProxy" Text :>
                 "setSslCertificates" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         TargetHTTPSProxiesSetSSLCertificatesRequest
                         :> Post '[JSON] Operation

-- | Replaces SslCertificates for TargetHttpsProxy.
--
-- /See:/ 'targetHTTPSProxiesSetSSLCertificates' smart constructor.
data TargetHTTPSProxiesSetSSLCertificates =
  TargetHTTPSProxiesSetSSLCertificates'
    { _thpsscRequestId        :: !(Maybe Text)
    , _thpsscProject          :: !Text
    , _thpsscPayload          :: !TargetHTTPSProxiesSetSSLCertificatesRequest
    , _thpsscTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesSetSSLCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsscRequestId'
--
-- * 'thpsscProject'
--
-- * 'thpsscPayload'
--
-- * 'thpsscTargetHTTPSProxy'
targetHTTPSProxiesSetSSLCertificates
    :: Text -- ^ 'thpsscProject'
    -> TargetHTTPSProxiesSetSSLCertificatesRequest -- ^ 'thpsscPayload'
    -> Text -- ^ 'thpsscTargetHTTPSProxy'
    -> TargetHTTPSProxiesSetSSLCertificates
targetHTTPSProxiesSetSSLCertificates pThpsscProject_ pThpsscPayload_ pThpsscTargetHTTPSProxy_ =
  TargetHTTPSProxiesSetSSLCertificates'
    { _thpsscRequestId = Nothing
    , _thpsscProject = pThpsscProject_
    , _thpsscPayload = pThpsscPayload_
    , _thpsscTargetHTTPSProxy = pThpsscTargetHTTPSProxy_
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
thpsscRequestId :: Lens' TargetHTTPSProxiesSetSSLCertificates (Maybe Text)
thpsscRequestId
  = lens _thpsscRequestId
      (\ s a -> s{_thpsscRequestId = a})

-- | Project ID for this request.
thpsscProject :: Lens' TargetHTTPSProxiesSetSSLCertificates Text
thpsscProject
  = lens _thpsscProject
      (\ s a -> s{_thpsscProject = a})

-- | Multipart request metadata.
thpsscPayload :: Lens' TargetHTTPSProxiesSetSSLCertificates TargetHTTPSProxiesSetSSLCertificatesRequest
thpsscPayload
  = lens _thpsscPayload
      (\ s a -> s{_thpsscPayload = a})

-- | Name of the TargetHttpsProxy resource to set an SslCertificates resource
-- for.
thpsscTargetHTTPSProxy :: Lens' TargetHTTPSProxiesSetSSLCertificates Text
thpsscTargetHTTPSProxy
  = lens _thpsscTargetHTTPSProxy
      (\ s a -> s{_thpsscTargetHTTPSProxy = a})

instance GoogleRequest
           TargetHTTPSProxiesSetSSLCertificates
         where
        type Rs TargetHTTPSProxiesSetSSLCertificates =
             Operation
        type Scopes TargetHTTPSProxiesSetSSLCertificates =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          TargetHTTPSProxiesSetSSLCertificates'{..}
          = go _thpsscProject _thpsscTargetHTTPSProxy
              _thpsscRequestId
              (Just AltJSON)
              _thpsscPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPSProxiesSetSSLCertificatesResource)
                      mempty
