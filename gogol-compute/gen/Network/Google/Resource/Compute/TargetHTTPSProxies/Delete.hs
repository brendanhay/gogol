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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.delete@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.Delete
    (
    -- * REST Resource
      TargetHTTPSProxiesDeleteResource

    -- * Creating a Request
    , targetHTTPSProxiesDelete
    , TargetHTTPSProxiesDelete

    -- * Request Lenses
    , thpdRequestId
    , thpdProject
    , thpdTargetHTTPSProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.delete@ method which the
-- 'TargetHTTPSProxiesDelete' request conforms to.
type TargetHTTPSProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 Capture "targetHttpsProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpsProxy resource.
--
-- /See:/ 'targetHTTPSProxiesDelete' smart constructor.
data TargetHTTPSProxiesDelete =
  TargetHTTPSProxiesDelete'
    { _thpdRequestId        :: !(Maybe Text)
    , _thpdProject          :: !Text
    , _thpdTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpdRequestId'
--
-- * 'thpdProject'
--
-- * 'thpdTargetHTTPSProxy'
targetHTTPSProxiesDelete
    :: Text -- ^ 'thpdProject'
    -> Text -- ^ 'thpdTargetHTTPSProxy'
    -> TargetHTTPSProxiesDelete
targetHTTPSProxiesDelete pThpdProject_ pThpdTargetHTTPSProxy_ =
  TargetHTTPSProxiesDelete'
    { _thpdRequestId = Nothing
    , _thpdProject = pThpdProject_
    , _thpdTargetHTTPSProxy = pThpdTargetHTTPSProxy_
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
thpdRequestId :: Lens' TargetHTTPSProxiesDelete (Maybe Text)
thpdRequestId
  = lens _thpdRequestId
      (\ s a -> s{_thpdRequestId = a})

-- | Project ID for this request.
thpdProject :: Lens' TargetHTTPSProxiesDelete Text
thpdProject
  = lens _thpdProject (\ s a -> s{_thpdProject = a})

-- | Name of the TargetHttpsProxy resource to delete.
thpdTargetHTTPSProxy :: Lens' TargetHTTPSProxiesDelete Text
thpdTargetHTTPSProxy
  = lens _thpdTargetHTTPSProxy
      (\ s a -> s{_thpdTargetHTTPSProxy = a})

instance GoogleRequest TargetHTTPSProxiesDelete where
        type Rs TargetHTTPSProxiesDelete = Operation
        type Scopes TargetHTTPSProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesDelete'{..}
          = go _thpdProject _thpdTargetHTTPSProxy
              _thpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesDeleteResource)
                      mempty
