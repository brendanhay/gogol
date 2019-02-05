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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetTcpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.insert@.
module Network.Google.Resource.Compute.TargetTCPProxies.Insert
    (
    -- * REST Resource
      TargetTCPProxiesInsertResource

    -- * Creating a Request
    , targetTCPProxiesInsert
    , TargetTCPProxiesInsert

    -- * Request Lenses
    , ttpiRequestId
    , ttpiProject
    , ttpiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.insert@ method which the
-- 'TargetTCPProxiesInsert' request conforms to.
type TargetTCPProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TargetTCPProxy :>
                       Post '[JSON] Operation

-- | Creates a TargetTcpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetTCPProxiesInsert' smart constructor.
data TargetTCPProxiesInsert = TargetTCPProxiesInsert'
    { _ttpiRequestId :: !(Maybe Text)
    , _ttpiProject   :: !Text
    , _ttpiPayload   :: !TargetTCPProxy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetTCPProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpiRequestId'
--
-- * 'ttpiProject'
--
-- * 'ttpiPayload'
targetTCPProxiesInsert
    :: Text -- ^ 'ttpiProject'
    -> TargetTCPProxy -- ^ 'ttpiPayload'
    -> TargetTCPProxiesInsert
targetTCPProxiesInsert pTtpiProject_ pTtpiPayload_ =
    TargetTCPProxiesInsert'
    { _ttpiRequestId = Nothing
    , _ttpiProject = pTtpiProject_
    , _ttpiPayload = pTtpiPayload_
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
ttpiRequestId :: Lens' TargetTCPProxiesInsert (Maybe Text)
ttpiRequestId
  = lens _ttpiRequestId
      (\ s a -> s{_ttpiRequestId = a})

-- | Project ID for this request.
ttpiProject :: Lens' TargetTCPProxiesInsert Text
ttpiProject
  = lens _ttpiProject (\ s a -> s{_ttpiProject = a})

-- | Multipart request metadata.
ttpiPayload :: Lens' TargetTCPProxiesInsert TargetTCPProxy
ttpiPayload
  = lens _ttpiPayload (\ s a -> s{_ttpiPayload = a})

instance GoogleRequest TargetTCPProxiesInsert where
        type Rs TargetTCPProxiesInsert = Operation
        type Scopes TargetTCPProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetTCPProxiesInsert'{..}
          = go _ttpiProject _ttpiRequestId (Just AltJSON)
              _ttpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetTCPProxiesInsertResource)
                      mempty
