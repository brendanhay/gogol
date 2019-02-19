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
-- Module      : Network.Google.Resource.Compute.Firewalls.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.patch@.
module Network.Google.Resource.Compute.Firewalls.Patch
    (
    -- * REST Resource
      FirewallsPatchResource

    -- * Creating a Request
    , firewallsPatch
    , FirewallsPatch

    -- * Request Lenses
    , fpRequestId
    , fpProject
    , fpPayload
    , fpFirewall
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.firewalls.patch@ method which the
-- 'FirewallsPatch' request conforms to.
type FirewallsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Firewall :> Patch '[JSON] Operation

-- | Updates the specified firewall rule with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ 'firewallsPatch' smart constructor.
data FirewallsPatch =
  FirewallsPatch'
    { _fpRequestId :: !(Maybe Text)
    , _fpProject   :: !Text
    , _fpPayload   :: !Firewall
    , _fpFirewall  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FirewallsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpRequestId'
--
-- * 'fpProject'
--
-- * 'fpPayload'
--
-- * 'fpFirewall'
firewallsPatch
    :: Text -- ^ 'fpProject'
    -> Firewall -- ^ 'fpPayload'
    -> Text -- ^ 'fpFirewall'
    -> FirewallsPatch
firewallsPatch pFpProject_ pFpPayload_ pFpFirewall_ =
  FirewallsPatch'
    { _fpRequestId = Nothing
    , _fpProject = pFpProject_
    , _fpPayload = pFpPayload_
    , _fpFirewall = pFpFirewall_
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
fpRequestId :: Lens' FirewallsPatch (Maybe Text)
fpRequestId
  = lens _fpRequestId (\ s a -> s{_fpRequestId = a})

-- | Project ID for this request.
fpProject :: Lens' FirewallsPatch Text
fpProject
  = lens _fpProject (\ s a -> s{_fpProject = a})

-- | Multipart request metadata.
fpPayload :: Lens' FirewallsPatch Firewall
fpPayload
  = lens _fpPayload (\ s a -> s{_fpPayload = a})

-- | Name of the firewall rule to patch.
fpFirewall :: Lens' FirewallsPatch Text
fpFirewall
  = lens _fpFirewall (\ s a -> s{_fpFirewall = a})

instance GoogleRequest FirewallsPatch where
        type Rs FirewallsPatch = Operation
        type Scopes FirewallsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallsPatch'{..}
          = go _fpProject _fpFirewall _fpRequestId
              (Just AltJSON)
              _fpPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy FirewallsPatchResource)
                      mempty
