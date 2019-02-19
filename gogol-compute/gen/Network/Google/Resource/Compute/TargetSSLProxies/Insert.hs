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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetSslProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.insert@.
module Network.Google.Resource.Compute.TargetSSLProxies.Insert
    (
    -- * REST Resource
      TargetSSLProxiesInsertResource

    -- * Creating a Request
    , targetSSLProxiesInsert
    , TargetSSLProxiesInsert

    -- * Request Lenses
    , tspiRequestId
    , tspiProject
    , tspiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.insert@ method which the
-- 'TargetSSLProxiesInsert' request conforms to.
type TargetSSLProxiesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TargetSSLProxy :>
                       Post '[JSON] Operation

-- | Creates a TargetSslProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetSSLProxiesInsert' smart constructor.
data TargetSSLProxiesInsert =
  TargetSSLProxiesInsert'
    { _tspiRequestId :: !(Maybe Text)
    , _tspiProject   :: !Text
    , _tspiPayload   :: !TargetSSLProxy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetSSLProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspiRequestId'
--
-- * 'tspiProject'
--
-- * 'tspiPayload'
targetSSLProxiesInsert
    :: Text -- ^ 'tspiProject'
    -> TargetSSLProxy -- ^ 'tspiPayload'
    -> TargetSSLProxiesInsert
targetSSLProxiesInsert pTspiProject_ pTspiPayload_ =
  TargetSSLProxiesInsert'
    { _tspiRequestId = Nothing
    , _tspiProject = pTspiProject_
    , _tspiPayload = pTspiPayload_
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
tspiRequestId :: Lens' TargetSSLProxiesInsert (Maybe Text)
tspiRequestId
  = lens _tspiRequestId
      (\ s a -> s{_tspiRequestId = a})

-- | Project ID for this request.
tspiProject :: Lens' TargetSSLProxiesInsert Text
tspiProject
  = lens _tspiProject (\ s a -> s{_tspiProject = a})

-- | Multipart request metadata.
tspiPayload :: Lens' TargetSSLProxiesInsert TargetSSLProxy
tspiPayload
  = lens _tspiPayload (\ s a -> s{_tspiPayload = a})

instance GoogleRequest TargetSSLProxiesInsert where
        type Rs TargetSSLProxiesInsert = Operation
        type Scopes TargetSSLProxiesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesInsert'{..}
          = go _tspiProject _tspiRequestId (Just AltJSON)
              _tspiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesInsertResource)
                      mempty
