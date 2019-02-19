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
-- Module      : Network.Google.Resource.Compute.Interconnects.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified interconnect with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.patch@.
module Network.Google.Resource.Compute.Interconnects.Patch
    (
    -- * REST Resource
      InterconnectsPatchResource

    -- * Creating a Request
    , interconnectsPatch
    , InterconnectsPatch

    -- * Request Lenses
    , ipRequestId
    , ipProject
    , ipPayload
    , ipInterconnect
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnects.patch@ method which the
-- 'InterconnectsPatch' request conforms to.
type InterconnectsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 Capture "interconnect" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Interconnect :>
                         Patch '[JSON] Operation

-- | Updates the specified interconnect with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ 'interconnectsPatch' smart constructor.
data InterconnectsPatch =
  InterconnectsPatch'
    { _ipRequestId    :: !(Maybe Text)
    , _ipProject      :: !Text
    , _ipPayload      :: !Interconnect
    , _ipInterconnect :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InterconnectsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipRequestId'
--
-- * 'ipProject'
--
-- * 'ipPayload'
--
-- * 'ipInterconnect'
interconnectsPatch
    :: Text -- ^ 'ipProject'
    -> Interconnect -- ^ 'ipPayload'
    -> Text -- ^ 'ipInterconnect'
    -> InterconnectsPatch
interconnectsPatch pIpProject_ pIpPayload_ pIpInterconnect_ =
  InterconnectsPatch'
    { _ipRequestId = Nothing
    , _ipProject = pIpProject_
    , _ipPayload = pIpPayload_
    , _ipInterconnect = pIpInterconnect_
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
ipRequestId :: Lens' InterconnectsPatch (Maybe Text)
ipRequestId
  = lens _ipRequestId (\ s a -> s{_ipRequestId = a})

-- | Project ID for this request.
ipProject :: Lens' InterconnectsPatch Text
ipProject
  = lens _ipProject (\ s a -> s{_ipProject = a})

-- | Multipart request metadata.
ipPayload :: Lens' InterconnectsPatch Interconnect
ipPayload
  = lens _ipPayload (\ s a -> s{_ipPayload = a})

-- | Name of the interconnect to update.
ipInterconnect :: Lens' InterconnectsPatch Text
ipInterconnect
  = lens _ipInterconnect
      (\ s a -> s{_ipInterconnect = a})

instance GoogleRequest InterconnectsPatch where
        type Rs InterconnectsPatch = Operation
        type Scopes InterconnectsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectsPatch'{..}
          = go _ipProject _ipInterconnect _ipRequestId
              (Just AltJSON)
              _ipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsPatchResource)
                      mempty
