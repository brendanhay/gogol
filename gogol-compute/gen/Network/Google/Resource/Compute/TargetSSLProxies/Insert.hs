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
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] TargetSSLProxy :>
                     Post '[JSON] Operation

-- | Creates a TargetSslProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetSSLProxiesInsert' smart constructor.
data TargetSSLProxiesInsert = TargetSSLProxiesInsert'
    { _tspiProject :: !Text
    , _tspiPayload :: !TargetSSLProxy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _tspiProject = pTspiProject_
    , _tspiPayload = pTspiPayload_
    }

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
          = go _tspiProject (Just AltJSON) _tspiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesInsertResource)
                      mempty
