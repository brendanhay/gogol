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
-- Module      : Network.Google.Resource.Compute.TargetGrpcProxies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified TargetGrpcProxy resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetGrpcProxies.patch@.
module Network.Google.Resource.Compute.TargetGrpcProxies.Patch
    (
    -- * REST Resource
      TargetGrpcProxiesPatchResource

    -- * Creating a Request
    , targetGrpcProxiesPatch
    , TargetGrpcProxiesPatch

    -- * Request Lenses
    , tgppRequestId
    , tgppProject
    , tgppPayload
    , tgppTargetGrpcProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetGrpcProxies.patch@ method which the
-- 'TargetGrpcProxiesPatch' request conforms to.
type TargetGrpcProxiesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetGrpcProxies" :>
                 Capture "targetGrpcProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetGrpcProxy :>
                         Patch '[JSON] Operation

-- | Patches the specified TargetGrpcProxy resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules.
--
-- /See:/ 'targetGrpcProxiesPatch' smart constructor.
data TargetGrpcProxiesPatch =
  TargetGrpcProxiesPatch'
    { _tgppRequestId :: !(Maybe Text)
    , _tgppProject :: !Text
    , _tgppPayload :: !TargetGrpcProxy
    , _tgppTargetGrpcProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetGrpcProxiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgppRequestId'
--
-- * 'tgppProject'
--
-- * 'tgppPayload'
--
-- * 'tgppTargetGrpcProxy'
targetGrpcProxiesPatch
    :: Text -- ^ 'tgppProject'
    -> TargetGrpcProxy -- ^ 'tgppPayload'
    -> Text -- ^ 'tgppTargetGrpcProxy'
    -> TargetGrpcProxiesPatch
targetGrpcProxiesPatch pTgppProject_ pTgppPayload_ pTgppTargetGrpcProxy_ =
  TargetGrpcProxiesPatch'
    { _tgppRequestId = Nothing
    , _tgppProject = pTgppProject_
    , _tgppPayload = pTgppPayload_
    , _tgppTargetGrpcProxy = pTgppTargetGrpcProxy_
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
tgppRequestId :: Lens' TargetGrpcProxiesPatch (Maybe Text)
tgppRequestId
  = lens _tgppRequestId
      (\ s a -> s{_tgppRequestId = a})

-- | Project ID for this request.
tgppProject :: Lens' TargetGrpcProxiesPatch Text
tgppProject
  = lens _tgppProject (\ s a -> s{_tgppProject = a})

-- | Multipart request metadata.
tgppPayload :: Lens' TargetGrpcProxiesPatch TargetGrpcProxy
tgppPayload
  = lens _tgppPayload (\ s a -> s{_tgppPayload = a})

-- | Name of the TargetGrpcProxy resource to patch.
tgppTargetGrpcProxy :: Lens' TargetGrpcProxiesPatch Text
tgppTargetGrpcProxy
  = lens _tgppTargetGrpcProxy
      (\ s a -> s{_tgppTargetGrpcProxy = a})

instance GoogleRequest TargetGrpcProxiesPatch where
        type Rs TargetGrpcProxiesPatch = Operation
        type Scopes TargetGrpcProxiesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetGrpcProxiesPatch'{..}
          = go _tgppProject _tgppTargetGrpcProxy _tgppRequestId
              (Just AltJSON)
              _tgppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetGrpcProxiesPatchResource)
                      mempty
