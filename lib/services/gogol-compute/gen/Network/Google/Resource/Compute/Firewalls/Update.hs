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
-- Module      : Network.Google.Resource.Compute.Firewalls.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule with the data included in the
-- request. Note that all fields will be updated if using PUT, even fields
-- that are not specified. To update individual fields, please use PATCH
-- instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.update@.
module Network.Google.Resource.Compute.Firewalls.Update
    (
    -- * REST Resource
      FirewallsUpdateResource

    -- * Creating a Request
    , firewallsUpdate
    , FirewallsUpdate

    -- * Request Lenses
    , fuRequestId
    , fuProject
    , fuPayload
    , fuFirewall
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewalls.update@ method which the
-- 'FirewallsUpdate' request conforms to.
type FirewallsUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Firewall :> Put '[JSON] Operation

-- | Updates the specified firewall rule with the data included in the
-- request. Note that all fields will be updated if using PUT, even fields
-- that are not specified. To update individual fields, please use PATCH
-- instead.
--
-- /See:/ 'firewallsUpdate' smart constructor.
data FirewallsUpdate =
  FirewallsUpdate'
    { _fuRequestId :: !(Maybe Text)
    , _fuProject :: !Text
    , _fuPayload :: !Firewall
    , _fuFirewall :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuRequestId'
--
-- * 'fuProject'
--
-- * 'fuPayload'
--
-- * 'fuFirewall'
firewallsUpdate
    :: Text -- ^ 'fuProject'
    -> Firewall -- ^ 'fuPayload'
    -> Text -- ^ 'fuFirewall'
    -> FirewallsUpdate
firewallsUpdate pFuProject_ pFuPayload_ pFuFirewall_ =
  FirewallsUpdate'
    { _fuRequestId = Nothing
    , _fuProject = pFuProject_
    , _fuPayload = pFuPayload_
    , _fuFirewall = pFuFirewall_
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
fuRequestId :: Lens' FirewallsUpdate (Maybe Text)
fuRequestId
  = lens _fuRequestId (\ s a -> s{_fuRequestId = a})

-- | Project ID for this request.
fuProject :: Lens' FirewallsUpdate Text
fuProject
  = lens _fuProject (\ s a -> s{_fuProject = a})

-- | Multipart request metadata.
fuPayload :: Lens' FirewallsUpdate Firewall
fuPayload
  = lens _fuPayload (\ s a -> s{_fuPayload = a})

-- | Name of the firewall rule to update.
fuFirewall :: Lens' FirewallsUpdate Text
fuFirewall
  = lens _fuFirewall (\ s a -> s{_fuFirewall = a})

instance GoogleRequest FirewallsUpdate where
        type Rs FirewallsUpdate = Operation
        type Scopes FirewallsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallsUpdate'{..}
          = go _fuProject _fuFirewall _fuRequestId
              (Just AltJSON)
              _fuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsUpdateResource)
                      mempty
