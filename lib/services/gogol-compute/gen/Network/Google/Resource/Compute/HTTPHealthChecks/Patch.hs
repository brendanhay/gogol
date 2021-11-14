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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports PATCH semantics and
-- uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.patch@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Patch
    (
    -- * REST Resource
      HTTPHealthChecksPatchResource

    -- * Creating a Request
    , hTTPHealthChecksPatch
    , HTTPHealthChecksPatch

    -- * Request Lenses
    , httphcpRequestId
    , httphcpProject
    , httphcpPayload
    , httphcpHTTPHealthCheck
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.patch@ method which the
-- 'HTTPHealthChecksPatch' request conforms to.
type HTTPHealthChecksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HTTPHealthCheck :>
                         Patch '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports PATCH semantics and
-- uses the JSON merge patch format and processing rules.
--
-- /See:/ 'hTTPHealthChecksPatch' smart constructor.
data HTTPHealthChecksPatch =
  HTTPHealthChecksPatch'
    { _httphcpRequestId :: !(Maybe Text)
    , _httphcpProject :: !Text
    , _httphcpPayload :: !HTTPHealthCheck
    , _httphcpHTTPHealthCheck :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPHealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcpRequestId'
--
-- * 'httphcpProject'
--
-- * 'httphcpPayload'
--
-- * 'httphcpHTTPHealthCheck'
hTTPHealthChecksPatch
    :: Text -- ^ 'httphcpProject'
    -> HTTPHealthCheck -- ^ 'httphcpPayload'
    -> Text -- ^ 'httphcpHTTPHealthCheck'
    -> HTTPHealthChecksPatch
hTTPHealthChecksPatch pHttphcpProject_ pHttphcpPayload_ pHttphcpHTTPHealthCheck_ =
  HTTPHealthChecksPatch'
    { _httphcpRequestId = Nothing
    , _httphcpProject = pHttphcpProject_
    , _httphcpPayload = pHttphcpPayload_
    , _httphcpHTTPHealthCheck = pHttphcpHTTPHealthCheck_
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
httphcpRequestId :: Lens' HTTPHealthChecksPatch (Maybe Text)
httphcpRequestId
  = lens _httphcpRequestId
      (\ s a -> s{_httphcpRequestId = a})

-- | Project ID for this request.
httphcpProject :: Lens' HTTPHealthChecksPatch Text
httphcpProject
  = lens _httphcpProject
      (\ s a -> s{_httphcpProject = a})

-- | Multipart request metadata.
httphcpPayload :: Lens' HTTPHealthChecksPatch HTTPHealthCheck
httphcpPayload
  = lens _httphcpPayload
      (\ s a -> s{_httphcpPayload = a})

-- | Name of the HttpHealthCheck resource to patch.
httphcpHTTPHealthCheck :: Lens' HTTPHealthChecksPatch Text
httphcpHTTPHealthCheck
  = lens _httphcpHTTPHealthCheck
      (\ s a -> s{_httphcpHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksPatch where
        type Rs HTTPHealthChecksPatch = Operation
        type Scopes HTTPHealthChecksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPHealthChecksPatch'{..}
          = go _httphcpProject _httphcpHTTPHealthCheck
              _httphcpRequestId
              (Just AltJSON)
              _httphcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksPatchResource)
                      mempty
