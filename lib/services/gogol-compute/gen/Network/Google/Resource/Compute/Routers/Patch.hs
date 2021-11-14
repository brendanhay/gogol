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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified Router resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
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
    , rppRequestId
    , rppProject
    , rppRouter
    , rppPayload
    , rppRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Router :> Patch '[JSON] Operation

-- | Patches the specified Router resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
--
-- /See:/ 'routersPatch' smart constructor.
data RoutersPatch =
  RoutersPatch'
    { _rppRequestId :: !(Maybe Text)
    , _rppProject :: !Text
    , _rppRouter :: !Text
    , _rppPayload :: !Router
    , _rppRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppRequestId'
--
-- * 'rppProject'
--
-- * 'rppRouter'
--
-- * 'rppPayload'
--
-- * 'rppRegion'
routersPatch
    :: Text -- ^ 'rppProject'
    -> Text -- ^ 'rppRouter'
    -> Router -- ^ 'rppPayload'
    -> Text -- ^ 'rppRegion'
    -> RoutersPatch
routersPatch pRppProject_ pRppRouter_ pRppPayload_ pRppRegion_ =
  RoutersPatch'
    { _rppRequestId = Nothing
    , _rppProject = pRppProject_
    , _rppRouter = pRppRouter_
    , _rppPayload = pRppPayload_
    , _rppRegion = pRppRegion_
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
rppRequestId :: Lens' RoutersPatch (Maybe Text)
rppRequestId
  = lens _rppRequestId (\ s a -> s{_rppRequestId = a})

-- | Project ID for this request.
rppProject :: Lens' RoutersPatch Text
rppProject
  = lens _rppProject (\ s a -> s{_rppProject = a})

-- | Name of the Router resource to patch.
rppRouter :: Lens' RoutersPatch Text
rppRouter
  = lens _rppRouter (\ s a -> s{_rppRouter = a})

-- | Multipart request metadata.
rppPayload :: Lens' RoutersPatch Router
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | Name of the region for this request.
rppRegion :: Lens' RoutersPatch Text
rppRegion
  = lens _rppRegion (\ s a -> s{_rppRegion = a})

instance GoogleRequest RoutersPatch where
        type Rs RoutersPatch = Operation
        type Scopes RoutersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersPatch'{..}
          = go _rppProject _rppRegion _rppRouter _rppRequestId
              (Just AltJSON)
              _rppPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersPatchResource)
                      mempty
