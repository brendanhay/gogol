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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request. This method supports PATCH semantics and
-- uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.patch@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Patch
    (
    -- * REST Resource
      HTTPSHealthChecksPatchResource

    -- * Creating a Request
    , httpsHealthChecksPatch
    , HTTPSHealthChecksPatch

    -- * Request Lenses
    , hhcpRequestId
    , hhcpProject
    , hhcpPayload
    , hhcpHTTPSHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.patch@ method which the
-- 'HTTPSHealthChecksPatch' request conforms to.
type HTTPSHealthChecksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 Capture "httpsHealthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HTTPSHealthCheck :>
                         Patch '[JSON] Operation

-- | Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request. This method supports PATCH semantics and
-- uses the JSON merge patch format and processing rules.
--
-- /See:/ 'httpsHealthChecksPatch' smart constructor.
data HTTPSHealthChecksPatch = HTTPSHealthChecksPatch'
    { _hhcpRequestId        :: !(Maybe Text)
    , _hhcpProject          :: !Text
    , _hhcpPayload          :: !HTTPSHealthCheck
    , _hhcpHTTPSHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcpRequestId'
--
-- * 'hhcpProject'
--
-- * 'hhcpPayload'
--
-- * 'hhcpHTTPSHealthCheck'
httpsHealthChecksPatch
    :: Text -- ^ 'hhcpProject'
    -> HTTPSHealthCheck -- ^ 'hhcpPayload'
    -> Text -- ^ 'hhcpHTTPSHealthCheck'
    -> HTTPSHealthChecksPatch
httpsHealthChecksPatch pHhcpProject_ pHhcpPayload_ pHhcpHTTPSHealthCheck_ =
    HTTPSHealthChecksPatch'
    { _hhcpRequestId = Nothing
    , _hhcpProject = pHhcpProject_
    , _hhcpPayload = pHhcpPayload_
    , _hhcpHTTPSHealthCheck = pHhcpHTTPSHealthCheck_
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
hhcpRequestId :: Lens' HTTPSHealthChecksPatch (Maybe Text)
hhcpRequestId
  = lens _hhcpRequestId
      (\ s a -> s{_hhcpRequestId = a})

-- | Project ID for this request.
hhcpProject :: Lens' HTTPSHealthChecksPatch Text
hhcpProject
  = lens _hhcpProject (\ s a -> s{_hhcpProject = a})

-- | Multipart request metadata.
hhcpPayload :: Lens' HTTPSHealthChecksPatch HTTPSHealthCheck
hhcpPayload
  = lens _hhcpPayload (\ s a -> s{_hhcpPayload = a})

-- | Name of the HttpsHealthCheck resource to patch.
hhcpHTTPSHealthCheck :: Lens' HTTPSHealthChecksPatch Text
hhcpHTTPSHealthCheck
  = lens _hhcpHTTPSHealthCheck
      (\ s a -> s{_hhcpHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksPatch where
        type Rs HTTPSHealthChecksPatch = Operation
        type Scopes HTTPSHealthChecksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPSHealthChecksPatch'{..}
          = go _hhcpProject _hhcpHTTPSHealthCheck
              _hhcpRequestId
              (Just AltJSON)
              _hhcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksPatchResource)
                      mempty
