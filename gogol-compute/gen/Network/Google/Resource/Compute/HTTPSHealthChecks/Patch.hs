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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPSHealthCheck :>
                       Patch '[JSON] Operation

-- | Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request. This method supports patch semantics.
--
-- /See:/ 'httpsHealthChecksPatch' smart constructor.
data HTTPSHealthChecksPatch = HTTPSHealthChecksPatch
    { _hhcpProject          :: !Text
    , _hhcpPayload          :: !HTTPSHealthCheck
    , _hhcpHTTPSHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    HTTPSHealthChecksPatch
    { _hhcpProject = pHhcpProject_
    , _hhcpPayload = pHhcpPayload_
    , _hhcpHTTPSHealthCheck = pHhcpHTTPSHealthCheck_
    }

-- | Name of the project scoping this request.
hhcpProject :: Lens' HTTPSHealthChecksPatch Text
hhcpProject
  = lens _hhcpProject (\ s a -> s{_hhcpProject = a})

-- | Multipart request metadata.
hhcpPayload :: Lens' HTTPSHealthChecksPatch HTTPSHealthCheck
hhcpPayload
  = lens _hhcpPayload (\ s a -> s{_hhcpPayload = a})

-- | Name of the HttpsHealthCheck resource to update.
hhcpHTTPSHealthCheck :: Lens' HTTPSHealthChecksPatch Text
hhcpHTTPSHealthCheck
  = lens _hhcpHTTPSHealthCheck
      (\ s a -> s{_hhcpHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksPatch where
        type Rs HTTPSHealthChecksPatch = Operation
        requestClient HTTPSHealthChecksPatch{..}
          = go _hhcpProject _hhcpHTTPSHealthCheck
              (Just AltJSON)
              _hhcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksPatchResource)
                      mempty
