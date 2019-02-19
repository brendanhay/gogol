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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.insert@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Insert
    (
    -- * REST Resource
      TargetHTTPProxiesInsertResource

    -- * Creating a Request
    , targetHTTPProxiesInsert
    , TargetHTTPProxiesInsert

    -- * Request Lenses
    , thttppiRequestId
    , thttppiProject
    , thttppiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.insert@ method which the
-- 'TargetHTTPProxiesInsert' request conforms to.
type TargetHTTPProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TargetHTTPProxy :>
                       Post '[JSON] Operation

-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetHTTPProxiesInsert' smart constructor.
data TargetHTTPProxiesInsert =
  TargetHTTPProxiesInsert'
    { _thttppiRequestId :: !(Maybe Text)
    , _thttppiProject   :: !Text
    , _thttppiPayload   :: !TargetHTTPProxy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppiRequestId'
--
-- * 'thttppiProject'
--
-- * 'thttppiPayload'
targetHTTPProxiesInsert
    :: Text -- ^ 'thttppiProject'
    -> TargetHTTPProxy -- ^ 'thttppiPayload'
    -> TargetHTTPProxiesInsert
targetHTTPProxiesInsert pThttppiProject_ pThttppiPayload_ =
  TargetHTTPProxiesInsert'
    { _thttppiRequestId = Nothing
    , _thttppiProject = pThttppiProject_
    , _thttppiPayload = pThttppiPayload_
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
thttppiRequestId :: Lens' TargetHTTPProxiesInsert (Maybe Text)
thttppiRequestId
  = lens _thttppiRequestId
      (\ s a -> s{_thttppiRequestId = a})

-- | Project ID for this request.
thttppiProject :: Lens' TargetHTTPProxiesInsert Text
thttppiProject
  = lens _thttppiProject
      (\ s a -> s{_thttppiProject = a})

-- | Multipart request metadata.
thttppiPayload :: Lens' TargetHTTPProxiesInsert TargetHTTPProxy
thttppiPayload
  = lens _thttppiPayload
      (\ s a -> s{_thttppiPayload = a})

instance GoogleRequest TargetHTTPProxiesInsert where
        type Rs TargetHTTPProxiesInsert = Operation
        type Scopes TargetHTTPProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetHTTPProxiesInsert'{..}
          = go _thttppiProject _thttppiRequestId (Just AltJSON)
              _thttppiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesInsertResource)
                      mempty
