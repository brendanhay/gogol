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
-- Module      : Network.Google.Resource.Compute.TargetGrpcProxies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetGrpcProxy in the given scope
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetGrpcProxies.delete@.
module Network.Google.Resource.Compute.TargetGrpcProxies.Delete
    (
    -- * REST Resource
      TargetGrpcProxiesDeleteResource

    -- * Creating a Request
    , targetGrpcProxiesDelete
    , TargetGrpcProxiesDelete

    -- * Request Lenses
    , tgpdRequestId
    , tgpdProject
    , tgpdTargetGrpcProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetGrpcProxies.delete@ method which the
-- 'TargetGrpcProxiesDelete' request conforms to.
type TargetGrpcProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetGrpcProxies" :>
                 Capture "targetGrpcProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetGrpcProxy in the given scope
--
-- /See:/ 'targetGrpcProxiesDelete' smart constructor.
data TargetGrpcProxiesDelete =
  TargetGrpcProxiesDelete'
    { _tgpdRequestId :: !(Maybe Text)
    , _tgpdProject :: !Text
    , _tgpdTargetGrpcProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetGrpcProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgpdRequestId'
--
-- * 'tgpdProject'
--
-- * 'tgpdTargetGrpcProxy'
targetGrpcProxiesDelete
    :: Text -- ^ 'tgpdProject'
    -> Text -- ^ 'tgpdTargetGrpcProxy'
    -> TargetGrpcProxiesDelete
targetGrpcProxiesDelete pTgpdProject_ pTgpdTargetGrpcProxy_ =
  TargetGrpcProxiesDelete'
    { _tgpdRequestId = Nothing
    , _tgpdProject = pTgpdProject_
    , _tgpdTargetGrpcProxy = pTgpdTargetGrpcProxy_
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
tgpdRequestId :: Lens' TargetGrpcProxiesDelete (Maybe Text)
tgpdRequestId
  = lens _tgpdRequestId
      (\ s a -> s{_tgpdRequestId = a})

-- | Project ID for this request.
tgpdProject :: Lens' TargetGrpcProxiesDelete Text
tgpdProject
  = lens _tgpdProject (\ s a -> s{_tgpdProject = a})

-- | Name of the TargetGrpcProxy resource to delete.
tgpdTargetGrpcProxy :: Lens' TargetGrpcProxiesDelete Text
tgpdTargetGrpcProxy
  = lens _tgpdTargetGrpcProxy
      (\ s a -> s{_tgpdTargetGrpcProxy = a})

instance GoogleRequest TargetGrpcProxiesDelete where
        type Rs TargetGrpcProxiesDelete = Operation
        type Scopes TargetGrpcProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetGrpcProxiesDelete'{..}
          = go _tgpdProject _tgpdTargetGrpcProxy _tgpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetGrpcProxiesDeleteResource)
                      mempty
