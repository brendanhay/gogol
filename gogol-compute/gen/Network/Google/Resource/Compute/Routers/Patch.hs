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
-- Module      : Network.Google.Resource.Compute.Routers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Router resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.patch@.
module Network.Google.Resource.Compute.Routers.Patch
    (
    -- * REST Resource
      RoutersPatchResource

    -- * Creating a Request
    , routersPatch
    , RoutersPatch

    -- * Request Lenses
    , rpProject
    , rpRouter
    , rpPayload
    , rpRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.patch@ method which the
-- 'RoutersPatch' request conforms to.
type RoutersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Router :> Patch '[JSON] Operation

-- | Updates the specified Router resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ 'routersPatch' smart constructor.
data RoutersPatch = RoutersPatch'
    { _rpProject :: !Text
    , _rpRouter  :: !Text
    , _rpPayload :: !Router
    , _rpRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpProject'
--
-- * 'rpRouter'
--
-- * 'rpPayload'
--
-- * 'rpRegion'
routersPatch
    :: Text -- ^ 'rpProject'
    -> Text -- ^ 'rpRouter'
    -> Router -- ^ 'rpPayload'
    -> Text -- ^ 'rpRegion'
    -> RoutersPatch
routersPatch pRpProject_ pRpRouter_ pRpPayload_ pRpRegion_ =
    RoutersPatch'
    { _rpProject = pRpProject_
    , _rpRouter = pRpRouter_
    , _rpPayload = pRpPayload_
    , _rpRegion = pRpRegion_
    }

-- | Project ID for this request.
rpProject :: Lens' RoutersPatch Text
rpProject
  = lens _rpProject (\ s a -> s{_rpProject = a})

-- | Name of the Router resource to update.
rpRouter :: Lens' RoutersPatch Text
rpRouter = lens _rpRouter (\ s a -> s{_rpRouter = a})

-- | Multipart request metadata.
rpPayload :: Lens' RoutersPatch Router
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | Name of the region for this request.
rpRegion :: Lens' RoutersPatch Text
rpRegion = lens _rpRegion (\ s a -> s{_rpRegion = a})

instance GoogleRequest RoutersPatch where
        type Rs RoutersPatch = Operation
        type Scopes RoutersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersPatch'{..}
          = go _rpProject _rpRegion _rpRouter (Just AltJSON)
              _rpPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersPatchResource)
                      mempty
