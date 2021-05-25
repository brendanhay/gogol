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
-- Module      : Network.Google.Resource.Compute.TargetGrpcProxies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetGrpcProxy resource in the given scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetGrpcProxies.get@.
module Network.Google.Resource.Compute.TargetGrpcProxies.Get
    (
    -- * REST Resource
      TargetGrpcProxiesGetResource

    -- * Creating a Request
    , targetGrpcProxiesGet
    , TargetGrpcProxiesGet

    -- * Request Lenses
    , tgpgProject
    , tgpgTargetGrpcProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetGrpcProxies.get@ method which the
-- 'TargetGrpcProxiesGet' request conforms to.
type TargetGrpcProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetGrpcProxies" :>
                 Capture "targetGrpcProxy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TargetGrpcProxy

-- | Returns the specified TargetGrpcProxy resource in the given scope.
--
-- /See:/ 'targetGrpcProxiesGet' smart constructor.
data TargetGrpcProxiesGet =
  TargetGrpcProxiesGet'
    { _tgpgProject :: !Text
    , _tgpgTargetGrpcProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetGrpcProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgpgProject'
--
-- * 'tgpgTargetGrpcProxy'
targetGrpcProxiesGet
    :: Text -- ^ 'tgpgProject'
    -> Text -- ^ 'tgpgTargetGrpcProxy'
    -> TargetGrpcProxiesGet
targetGrpcProxiesGet pTgpgProject_ pTgpgTargetGrpcProxy_ =
  TargetGrpcProxiesGet'
    {_tgpgProject = pTgpgProject_, _tgpgTargetGrpcProxy = pTgpgTargetGrpcProxy_}


-- | Project ID for this request.
tgpgProject :: Lens' TargetGrpcProxiesGet Text
tgpgProject
  = lens _tgpgProject (\ s a -> s{_tgpgProject = a})

-- | Name of the TargetGrpcProxy resource to return.
tgpgTargetGrpcProxy :: Lens' TargetGrpcProxiesGet Text
tgpgTargetGrpcProxy
  = lens _tgpgTargetGrpcProxy
      (\ s a -> s{_tgpgTargetGrpcProxy = a})

instance GoogleRequest TargetGrpcProxiesGet where
        type Rs TargetGrpcProxiesGet = TargetGrpcProxy
        type Scopes TargetGrpcProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetGrpcProxiesGet'{..}
          = go _tgpgProject _tgpgTargetGrpcProxy (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetGrpcProxiesGetResource)
                      mempty
