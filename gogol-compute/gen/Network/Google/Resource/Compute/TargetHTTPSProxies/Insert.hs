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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetHttpsProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.insert@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.Insert
    (
    -- * REST Resource
      TargetHTTPSProxiesInsertResource

    -- * Creating a Request
    , targetHTTPSProxiesInsert
    , TargetHTTPSProxiesInsert

    -- * Request Lenses
    , thpiRequestId
    , thpiProject
    , thpiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.insert@ method which the
-- 'TargetHTTPSProxiesInsert' request conforms to.
type TargetHTTPSProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpsProxies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TargetHTTPSProxy :>
                       Post '[JSON] Operation

-- | Creates a TargetHttpsProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetHTTPSProxiesInsert' smart constructor.
data TargetHTTPSProxiesInsert =
  TargetHTTPSProxiesInsert'
    { _thpiRequestId :: !(Maybe Text)
    , _thpiProject :: !Text
    , _thpiPayload :: !TargetHTTPSProxy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpiRequestId'
--
-- * 'thpiProject'
--
-- * 'thpiPayload'
targetHTTPSProxiesInsert
    :: Text -- ^ 'thpiProject'
    -> TargetHTTPSProxy -- ^ 'thpiPayload'
    -> TargetHTTPSProxiesInsert
targetHTTPSProxiesInsert pThpiProject_ pThpiPayload_ =
  TargetHTTPSProxiesInsert'
    { _thpiRequestId = Nothing
    , _thpiProject = pThpiProject_
    , _thpiPayload = pThpiPayload_
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
thpiRequestId :: Lens' TargetHTTPSProxiesInsert (Maybe Text)
thpiRequestId
  = lens _thpiRequestId
      (\ s a -> s{_thpiRequestId = a})

-- | Project ID for this request.
thpiProject :: Lens' TargetHTTPSProxiesInsert Text
thpiProject
  = lens _thpiProject (\ s a -> s{_thpiProject = a})

-- | Multipart request metadata.
thpiPayload :: Lens' TargetHTTPSProxiesInsert TargetHTTPSProxy
thpiPayload
  = lens _thpiPayload (\ s a -> s{_thpiPayload = a})

instance GoogleRequest TargetHTTPSProxiesInsert where
        type Rs TargetHTTPSProxiesInsert = Operation
        type Scopes TargetHTTPSProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPSProxiesInsert'{..}
          = go _thpiProject _thpiRequestId (Just AltJSON)
              _thpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesInsertResource)
                      mempty
