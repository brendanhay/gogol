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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetSslProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.delete@.
module Network.Google.Resource.Compute.TargetSSLProxies.Delete
    (
    -- * REST Resource
      TargetSSLProxiesDeleteResource

    -- * Creating a Request
    , targetSSLProxiesDelete
    , TargetSSLProxiesDelete

    -- * Request Lenses
    , tspdRequestId
    , tspdProject
    , tspdTargetSSLProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.delete@ method which the
-- 'TargetSSLProxiesDelete' request conforms to.
type TargetSSLProxiesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 Capture "targetSslProxy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetSslProxy resource.
--
-- /See:/ 'targetSSLProxiesDelete' smart constructor.
data TargetSSLProxiesDelete =
  TargetSSLProxiesDelete'
    { _tspdRequestId :: !(Maybe Text)
    , _tspdProject :: !Text
    , _tspdTargetSSLProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetSSLProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspdRequestId'
--
-- * 'tspdProject'
--
-- * 'tspdTargetSSLProxy'
targetSSLProxiesDelete
    :: Text -- ^ 'tspdProject'
    -> Text -- ^ 'tspdTargetSSLProxy'
    -> TargetSSLProxiesDelete
targetSSLProxiesDelete pTspdProject_ pTspdTargetSSLProxy_ =
  TargetSSLProxiesDelete'
    { _tspdRequestId = Nothing
    , _tspdProject = pTspdProject_
    , _tspdTargetSSLProxy = pTspdTargetSSLProxy_
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
tspdRequestId :: Lens' TargetSSLProxiesDelete (Maybe Text)
tspdRequestId
  = lens _tspdRequestId
      (\ s a -> s{_tspdRequestId = a})

-- | Project ID for this request.
tspdProject :: Lens' TargetSSLProxiesDelete Text
tspdProject
  = lens _tspdProject (\ s a -> s{_tspdProject = a})

-- | Name of the TargetSslProxy resource to delete.
tspdTargetSSLProxy :: Lens' TargetSSLProxiesDelete Text
tspdTargetSSLProxy
  = lens _tspdTargetSSLProxy
      (\ s a -> s{_tspdTargetSSLProxy = a})

instance GoogleRequest TargetSSLProxiesDelete where
        type Rs TargetSSLProxiesDelete = Operation
        type Scopes TargetSSLProxiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetSSLProxiesDelete'{..}
          = go _tspdProject _tspdTargetSSLProxy _tspdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesDeleteResource)
                      mempty
