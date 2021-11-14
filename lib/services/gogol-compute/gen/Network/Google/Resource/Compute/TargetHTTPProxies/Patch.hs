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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified TargetHttpProxy resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules. (== suppress_warning
-- http-rest-shadowed ==)
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.patch@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Patch
    (
    -- * REST Resource
      TargetHTTPProxiesPatchResource

    -- * Creating a Request
    , targetHTTPProxiesPatch
    , TargetHTTPProxiesPatch

    -- * Request Lenses
    , thttpppRequestId
    , thttpppProject
    , thttpppPayload
    , thttpppTargetHTTPProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.patch@ method which the
-- 'TargetHTTPProxiesPatch' request conforms to.
type TargetHTTPProxiesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 Capture "targetHttpProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetHTTPProxy :>
                         Patch '[JSON] Operation

-- | Patches the specified TargetHttpProxy resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules. (== suppress_warning
-- http-rest-shadowed ==)
--
-- /See:/ 'targetHTTPProxiesPatch' smart constructor.
data TargetHTTPProxiesPatch =
  TargetHTTPProxiesPatch'
    { _thttpppRequestId :: !(Maybe Text)
    , _thttpppProject :: !Text
    , _thttpppPayload :: !TargetHTTPProxy
    , _thttpppTargetHTTPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPProxiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttpppRequestId'
--
-- * 'thttpppProject'
--
-- * 'thttpppPayload'
--
-- * 'thttpppTargetHTTPProxy'
targetHTTPProxiesPatch
    :: Text -- ^ 'thttpppProject'
    -> TargetHTTPProxy -- ^ 'thttpppPayload'
    -> Text -- ^ 'thttpppTargetHTTPProxy'
    -> TargetHTTPProxiesPatch
targetHTTPProxiesPatch pThttpppProject_ pThttpppPayload_ pThttpppTargetHTTPProxy_ =
  TargetHTTPProxiesPatch'
    { _thttpppRequestId = Nothing
    , _thttpppProject = pThttpppProject_
    , _thttpppPayload = pThttpppPayload_
    , _thttpppTargetHTTPProxy = pThttpppTargetHTTPProxy_
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
thttpppRequestId :: Lens' TargetHTTPProxiesPatch (Maybe Text)
thttpppRequestId
  = lens _thttpppRequestId
      (\ s a -> s{_thttpppRequestId = a})

-- | Project ID for this request.
thttpppProject :: Lens' TargetHTTPProxiesPatch Text
thttpppProject
  = lens _thttpppProject
      (\ s a -> s{_thttpppProject = a})

-- | Multipart request metadata.
thttpppPayload :: Lens' TargetHTTPProxiesPatch TargetHTTPProxy
thttpppPayload
  = lens _thttpppPayload
      (\ s a -> s{_thttpppPayload = a})

-- | Name of the TargetHttpProxy resource to patch.
thttpppTargetHTTPProxy :: Lens' TargetHTTPProxiesPatch Text
thttpppTargetHTTPProxy
  = lens _thttpppTargetHTTPProxy
      (\ s a -> s{_thttpppTargetHTTPProxy = a})

instance GoogleRequest TargetHTTPProxiesPatch where
        type Rs TargetHTTPProxiesPatch = Operation
        type Scopes TargetHTTPProxiesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPProxiesPatch'{..}
          = go _thttpppProject _thttpppTargetHTTPProxy
              _thttpppRequestId
              (Just AltJSON)
              _thttpppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesPatchResource)
                      mempty
