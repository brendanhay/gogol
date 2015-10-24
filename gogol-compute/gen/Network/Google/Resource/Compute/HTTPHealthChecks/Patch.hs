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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
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
    , httphcpProject
    , httphcpPayload
    , httphcpHTTPHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPHealthCheck :>
                       Patch '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ 'hTTPHealthChecksPatch' smart constructor.
data HTTPHealthChecksPatch = HTTPHealthChecksPatch
    { _httphcpProject         :: !Text
    , _httphcpPayload         :: !HTTPHealthCheck
    , _httphcpHTTPHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    HTTPHealthChecksPatch
    { _httphcpProject = pHttphcpProject_
    , _httphcpPayload = pHttphcpPayload_
    , _httphcpHTTPHealthCheck = pHttphcpHTTPHealthCheck_
    }

-- | Name of the project scoping this request.
httphcpProject :: Lens' HTTPHealthChecksPatch Text
httphcpProject
  = lens _httphcpProject
      (\ s a -> s{_httphcpProject = a})

-- | Multipart request metadata.
httphcpPayload :: Lens' HTTPHealthChecksPatch HTTPHealthCheck
httphcpPayload
  = lens _httphcpPayload
      (\ s a -> s{_httphcpPayload = a})

-- | Name of the HttpHealthCheck resource to update.
httphcpHTTPHealthCheck :: Lens' HTTPHealthChecksPatch Text
httphcpHTTPHealthCheck
  = lens _httphcpHTTPHealthCheck
      (\ s a -> s{_httphcpHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksPatch where
        type Rs HTTPHealthChecksPatch = Operation
        requestClient HTTPHealthChecksPatch{..}
          = go _httphcpProject _httphcpHTTPHealthCheck
              (Just AltJSON)
              _httphcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksPatchResource)
                      mempty
