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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.SetURLMap
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the URL map for TargetHttpsProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.setUrlMap@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.SetURLMap
    (
    -- * REST Resource
      TargetHTTPSProxiesSetURLMapResource

    -- * Creating a Request
    , targetHTTPSProxiesSetURLMap
    , TargetHTTPSProxiesSetURLMap

    -- * Request Lenses
    , thpsumRequestId
    , thpsumProject
    , thpsumPayload
    , thpsumTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.setUrlMap@ method which the
-- 'TargetHTTPSProxiesSetURLMap' request conforms to.
type TargetHTTPSProxiesSetURLMapResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "targetHttpsProxies" :>
               Capture "targetHttpsProxy" Text :>
                 "setUrlMap" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] URLMapReference :>
                         Post '[JSON] Operation

-- | Changes the URL map for TargetHttpsProxy.
--
-- /See:/ 'targetHTTPSProxiesSetURLMap' smart constructor.
data TargetHTTPSProxiesSetURLMap = TargetHTTPSProxiesSetURLMap'
    { _thpsumRequestId        :: !(Maybe Text)
    , _thpsumProject          :: !Text
    , _thpsumPayload          :: !URLMapReference
    , _thpsumTargetHTTPSProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesSetURLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsumRequestId'
--
-- * 'thpsumProject'
--
-- * 'thpsumPayload'
--
-- * 'thpsumTargetHTTPSProxy'
targetHTTPSProxiesSetURLMap
    :: Text -- ^ 'thpsumProject'
    -> URLMapReference -- ^ 'thpsumPayload'
    -> Text -- ^ 'thpsumTargetHTTPSProxy'
    -> TargetHTTPSProxiesSetURLMap
targetHTTPSProxiesSetURLMap pThpsumProject_ pThpsumPayload_ pThpsumTargetHTTPSProxy_ =
    TargetHTTPSProxiesSetURLMap'
    { _thpsumRequestId = Nothing
    , _thpsumProject = pThpsumProject_
    , _thpsumPayload = pThpsumPayload_
    , _thpsumTargetHTTPSProxy = pThpsumTargetHTTPSProxy_
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
thpsumRequestId :: Lens' TargetHTTPSProxiesSetURLMap (Maybe Text)
thpsumRequestId
  = lens _thpsumRequestId
      (\ s a -> s{_thpsumRequestId = a})

-- | Project ID for this request.
thpsumProject :: Lens' TargetHTTPSProxiesSetURLMap Text
thpsumProject
  = lens _thpsumProject
      (\ s a -> s{_thpsumProject = a})

-- | Multipart request metadata.
thpsumPayload :: Lens' TargetHTTPSProxiesSetURLMap URLMapReference
thpsumPayload
  = lens _thpsumPayload
      (\ s a -> s{_thpsumPayload = a})

-- | Name of the TargetHttpsProxy resource whose URL map is to be set.
thpsumTargetHTTPSProxy :: Lens' TargetHTTPSProxiesSetURLMap Text
thpsumTargetHTTPSProxy
  = lens _thpsumTargetHTTPSProxy
      (\ s a -> s{_thpsumTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesSetURLMap
         where
        type Rs TargetHTTPSProxiesSetURLMap = Operation
        type Scopes TargetHTTPSProxiesSetURLMap =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesSetURLMap'{..}
          = go _thpsumProject _thpsumTargetHTTPSProxy
              _thpsumRequestId
              (Just AltJSON)
              _thpsumPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesSetURLMapResource)
                      mempty
