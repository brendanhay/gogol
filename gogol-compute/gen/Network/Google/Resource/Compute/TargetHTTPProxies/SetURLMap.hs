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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the URL map for TargetHttpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.setUrlMap@.
module Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
    (
    -- * REST Resource
      TargetHTTPProxiesSetURLMapResource

    -- * Creating a Request
    , targetHTTPProxiesSetURLMap
    , TargetHTTPProxiesSetURLMap

    -- * Request Lenses
    , thttppsumRequestId
    , thttppsumProject
    , thttppsumPayload
    , thttppsumTargetHTTPProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.setUrlMap@ method which the
-- 'TargetHTTPProxiesSetURLMap' request conforms to.
type TargetHTTPProxiesSetURLMapResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "targetHttpProxies" :>
               Capture "targetHttpProxy" Text :>
                 "setUrlMap" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] URLMapReference :>
                         Post '[JSON] Operation

-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ 'targetHTTPProxiesSetURLMap' smart constructor.
data TargetHTTPProxiesSetURLMap =
  TargetHTTPProxiesSetURLMap'
    { _thttppsumRequestId       :: !(Maybe Text)
    , _thttppsumProject         :: !Text
    , _thttppsumPayload         :: !URLMapReference
    , _thttppsumTargetHTTPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPProxiesSetURLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppsumRequestId'
--
-- * 'thttppsumProject'
--
-- * 'thttppsumPayload'
--
-- * 'thttppsumTargetHTTPProxy'
targetHTTPProxiesSetURLMap
    :: Text -- ^ 'thttppsumProject'
    -> URLMapReference -- ^ 'thttppsumPayload'
    -> Text -- ^ 'thttppsumTargetHTTPProxy'
    -> TargetHTTPProxiesSetURLMap
targetHTTPProxiesSetURLMap pThttppsumProject_ pThttppsumPayload_ pThttppsumTargetHTTPProxy_ =
  TargetHTTPProxiesSetURLMap'
    { _thttppsumRequestId = Nothing
    , _thttppsumProject = pThttppsumProject_
    , _thttppsumPayload = pThttppsumPayload_
    , _thttppsumTargetHTTPProxy = pThttppsumTargetHTTPProxy_
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
thttppsumRequestId :: Lens' TargetHTTPProxiesSetURLMap (Maybe Text)
thttppsumRequestId
  = lens _thttppsumRequestId
      (\ s a -> s{_thttppsumRequestId = a})

-- | Project ID for this request.
thttppsumProject :: Lens' TargetHTTPProxiesSetURLMap Text
thttppsumProject
  = lens _thttppsumProject
      (\ s a -> s{_thttppsumProject = a})

-- | Multipart request metadata.
thttppsumPayload :: Lens' TargetHTTPProxiesSetURLMap URLMapReference
thttppsumPayload
  = lens _thttppsumPayload
      (\ s a -> s{_thttppsumPayload = a})

-- | Name of the TargetHttpProxy to set a URL map for.
thttppsumTargetHTTPProxy :: Lens' TargetHTTPProxiesSetURLMap Text
thttppsumTargetHTTPProxy
  = lens _thttppsumTargetHTTPProxy
      (\ s a -> s{_thttppsumTargetHTTPProxy = a})

instance GoogleRequest TargetHTTPProxiesSetURLMap
         where
        type Rs TargetHTTPProxiesSetURLMap = Operation
        type Scopes TargetHTTPProxiesSetURLMap =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPProxiesSetURLMap'{..}
          = go _thttppsumProject _thttppsumTargetHTTPProxy
              _thttppsumRequestId
              (Just AltJSON)
              _thttppsumPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesSetURLMapResource)
                      mempty
