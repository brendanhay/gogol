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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified TargetHttpsProxy resource with the data included
-- in the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules. (== suppress_warning
-- http-rest-shadowed ==)
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.patch@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.Patch
    (
    -- * REST Resource
      TargetHTTPSProxiesPatchResource

    -- * Creating a Request
    , targetHTTPSProxiesPatch
    , TargetHTTPSProxiesPatch

    -- * Request Lenses
    , thppRequestId
    , thppProject
    , thppPayload
    , thppTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.patch@ method which the
-- 'TargetHTTPSProxiesPatch' request conforms to.
type TargetHTTPSProxiesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetHTTPSProxy :>
                         Patch '[JSON] Operation

-- | Patches the specified TargetHttpsProxy resource with the data included
-- in the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules. (== suppress_warning
-- http-rest-shadowed ==)
--
-- /See:/ 'targetHTTPSProxiesPatch' smart constructor.
data TargetHTTPSProxiesPatch =
  TargetHTTPSProxiesPatch'
    { _thppRequestId :: !(Maybe Text)
    , _thppProject :: !Text
    , _thppPayload :: !TargetHTTPSProxy
    , _thppTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thppRequestId'
--
-- * 'thppProject'
--
-- * 'thppPayload'
--
-- * 'thppTargetHTTPSProxy'
targetHTTPSProxiesPatch
    :: Text -- ^ 'thppProject'
    -> TargetHTTPSProxy -- ^ 'thppPayload'
    -> Text -- ^ 'thppTargetHTTPSProxy'
    -> TargetHTTPSProxiesPatch
targetHTTPSProxiesPatch pThppProject_ pThppPayload_ pThppTargetHTTPSProxy_ =
  TargetHTTPSProxiesPatch'
    { _thppRequestId = Nothing
    , _thppProject = pThppProject_
    , _thppPayload = pThppPayload_
    , _thppTargetHTTPSProxy = pThppTargetHTTPSProxy_
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
thppRequestId :: Lens' TargetHTTPSProxiesPatch (Maybe Text)
thppRequestId
  = lens _thppRequestId
      (\ s a -> s{_thppRequestId = a})

-- | Project ID for this request.
thppProject :: Lens' TargetHTTPSProxiesPatch Text
thppProject
  = lens _thppProject (\ s a -> s{_thppProject = a})

-- | Multipart request metadata.
thppPayload :: Lens' TargetHTTPSProxiesPatch TargetHTTPSProxy
thppPayload
  = lens _thppPayload (\ s a -> s{_thppPayload = a})

-- | Name of the TargetHttpsProxy resource to patch.
thppTargetHTTPSProxy :: Lens' TargetHTTPSProxiesPatch Text
thppTargetHTTPSProxy
  = lens _thppTargetHTTPSProxy
      (\ s a -> s{_thppTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesPatch where
        type Rs TargetHTTPSProxiesPatch = Operation
        type Scopes TargetHTTPSProxiesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesPatch'{..}
          = go _thppProject _thppTargetHTTPSProxy
              _thppRequestId
              (Just AltJSON)
              _thppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesPatchResource)
                      mempty
