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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URLMapReference :>
                       Post '[JSON] Operation

-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ 'targetHTTPProxiesSetURLMap' smart constructor.
data TargetHTTPProxiesSetURLMap = TargetHTTPProxiesSetURLMap
    { _thttppsumProject         :: !Text
    , _thttppsumPayload         :: !URLMapReference
    , _thttppsumTargetHTTPProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesSetURLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    TargetHTTPProxiesSetURLMap
    { _thttppsumProject = pThttppsumProject_
    , _thttppsumPayload = pThttppsumPayload_
    , _thttppsumTargetHTTPProxy = pThttppsumTargetHTTPProxy_
    }

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
        requestClient TargetHTTPProxiesSetURLMap{..}
          = go _thttppsumProject _thttppsumTargetHTTPProxy
              (Just AltJSON)
              _thttppsumPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesSetURLMapResource)
                      mempty
