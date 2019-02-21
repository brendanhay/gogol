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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetTcpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.delete@.
module Network.Google.Resource.Compute.TargetTCPProxies.Delete
    (
    -- * REST Resource
      TargetTCPProxiesDeleteResource

    -- * Creating a Request
    , targetTCPProxiesDelete
    , TargetTCPProxiesDelete

    -- * Request Lenses
    , ttpdRequestId
    , ttpdProject
    , ttpdTargetTCPProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.delete@ method which the
-- 'TargetTCPProxiesDelete' request conforms to.
type TargetTCPProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 Capture "targetTcpProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetTcpProxy resource.
--
-- /See:/ 'targetTCPProxiesDelete' smart constructor.
data TargetTCPProxiesDelete =
  TargetTCPProxiesDelete'
    { _ttpdRequestId      :: !(Maybe Text)
    , _ttpdProject        :: !Text
    , _ttpdTargetTCPProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetTCPProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpdRequestId'
--
-- * 'ttpdProject'
--
-- * 'ttpdTargetTCPProxy'
targetTCPProxiesDelete
    :: Text -- ^ 'ttpdProject'
    -> Text -- ^ 'ttpdTargetTCPProxy'
    -> TargetTCPProxiesDelete
targetTCPProxiesDelete pTtpdProject_ pTtpdTargetTCPProxy_ =
  TargetTCPProxiesDelete'
    { _ttpdRequestId = Nothing
    , _ttpdProject = pTtpdProject_
    , _ttpdTargetTCPProxy = pTtpdTargetTCPProxy_
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
ttpdRequestId :: Lens' TargetTCPProxiesDelete (Maybe Text)
ttpdRequestId
  = lens _ttpdRequestId
      (\ s a -> s{_ttpdRequestId = a})

-- | Project ID for this request.
ttpdProject :: Lens' TargetTCPProxiesDelete Text
ttpdProject
  = lens _ttpdProject (\ s a -> s{_ttpdProject = a})

-- | Name of the TargetTcpProxy resource to delete.
ttpdTargetTCPProxy :: Lens' TargetTCPProxiesDelete Text
ttpdTargetTCPProxy
  = lens _ttpdTargetTCPProxy
      (\ s a -> s{_ttpdTargetTCPProxy = a})

instance GoogleRequest TargetTCPProxiesDelete where
        type Rs TargetTCPProxiesDelete = Operation
        type Scopes TargetTCPProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetTCPProxiesDelete'{..}
          = go _ttpdProject _ttpdTargetTCPProxy _ttpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetTCPProxiesDeleteResource)
                      mempty
