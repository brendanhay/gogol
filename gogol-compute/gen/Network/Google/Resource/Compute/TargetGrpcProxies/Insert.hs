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
-- Module      : Network.Google.Resource.Compute.TargetGrpcProxies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetGrpcProxy in the specified project in the given scope
-- using the parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetGrpcProxies.insert@.
module Network.Google.Resource.Compute.TargetGrpcProxies.Insert
    (
    -- * REST Resource
      TargetGrpcProxiesInsertResource

    -- * Creating a Request
    , targetGrpcProxiesInsert
    , TargetGrpcProxiesInsert

    -- * Request Lenses
    , tgpiRequestId
    , tgpiProject
    , tgpiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetGrpcProxies.insert@ method which the
-- 'TargetGrpcProxiesInsert' request conforms to.
type TargetGrpcProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetGrpcProxies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TargetGrpcProxy :>
                       Post '[JSON] Operation

-- | Creates a TargetGrpcProxy in the specified project in the given scope
-- using the parameters that are included in the request.
--
-- /See:/ 'targetGrpcProxiesInsert' smart constructor.
data TargetGrpcProxiesInsert =
  TargetGrpcProxiesInsert'
    { _tgpiRequestId :: !(Maybe Text)
    , _tgpiProject :: !Text
    , _tgpiPayload :: !TargetGrpcProxy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetGrpcProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgpiRequestId'
--
-- * 'tgpiProject'
--
-- * 'tgpiPayload'
targetGrpcProxiesInsert
    :: Text -- ^ 'tgpiProject'
    -> TargetGrpcProxy -- ^ 'tgpiPayload'
    -> TargetGrpcProxiesInsert
targetGrpcProxiesInsert pTgpiProject_ pTgpiPayload_ =
  TargetGrpcProxiesInsert'
    { _tgpiRequestId = Nothing
    , _tgpiProject = pTgpiProject_
    , _tgpiPayload = pTgpiPayload_
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
tgpiRequestId :: Lens' TargetGrpcProxiesInsert (Maybe Text)
tgpiRequestId
  = lens _tgpiRequestId
      (\ s a -> s{_tgpiRequestId = a})

-- | Project ID for this request.
tgpiProject :: Lens' TargetGrpcProxiesInsert Text
tgpiProject
  = lens _tgpiProject (\ s a -> s{_tgpiProject = a})

-- | Multipart request metadata.
tgpiPayload :: Lens' TargetGrpcProxiesInsert TargetGrpcProxy
tgpiPayload
  = lens _tgpiPayload (\ s a -> s{_tgpiPayload = a})

instance GoogleRequest TargetGrpcProxiesInsert where
        type Rs TargetGrpcProxiesInsert = Operation
        type Scopes TargetGrpcProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetGrpcProxiesInsert'{..}
          = go _tgpiProject _tgpiRequestId (Just AltJSON)
              _tgpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetGrpcProxiesInsertResource)
                      mempty
