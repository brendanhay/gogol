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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , tspdProject
    , tspdTargetSSLProxy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetSslProxy resource.
--
-- /See:/ 'targetSSLProxiesDelete' smart constructor.
data TargetSSLProxiesDelete = TargetSSLProxiesDelete'
    { _tspdProject        :: !Text
    , _tspdTargetSSLProxy :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _tspdProject = pTspdProject_
    , _tspdTargetSSLProxy = pTspdTargetSSLProxy_
    }

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
          = go _tspdProject _tspdTargetSSLProxy (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesDeleteResource)
                      mempty
