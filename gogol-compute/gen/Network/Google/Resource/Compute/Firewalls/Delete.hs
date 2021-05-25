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
-- Module      : Network.Google.Resource.Compute.Firewalls.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified firewall.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.delete@.
module Network.Google.Resource.Compute.Firewalls.Delete
    (
    -- * REST Resource
      FirewallsDeleteResource

    -- * Creating a Request
    , firewallsDelete
    , FirewallsDelete

    -- * Request Lenses
    , fdRequestId
    , fdProject
    , fdFirewall
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewalls.delete@ method which the
-- 'FirewallsDelete' request conforms to.
type FirewallsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified firewall.
--
-- /See:/ 'firewallsDelete' smart constructor.
data FirewallsDelete =
  FirewallsDelete'
    { _fdRequestId :: !(Maybe Text)
    , _fdProject :: !Text
    , _fdFirewall :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdRequestId'
--
-- * 'fdProject'
--
-- * 'fdFirewall'
firewallsDelete
    :: Text -- ^ 'fdProject'
    -> Text -- ^ 'fdFirewall'
    -> FirewallsDelete
firewallsDelete pFdProject_ pFdFirewall_ =
  FirewallsDelete'
    { _fdRequestId = Nothing
    , _fdProject = pFdProject_
    , _fdFirewall = pFdFirewall_
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
fdRequestId :: Lens' FirewallsDelete (Maybe Text)
fdRequestId
  = lens _fdRequestId (\ s a -> s{_fdRequestId = a})

-- | Project ID for this request.
fdProject :: Lens' FirewallsDelete Text
fdProject
  = lens _fdProject (\ s a -> s{_fdProject = a})

-- | Name of the firewall rule to delete.
fdFirewall :: Lens' FirewallsDelete Text
fdFirewall
  = lens _fdFirewall (\ s a -> s{_fdFirewall = a})

instance GoogleRequest FirewallsDelete where
        type Rs FirewallsDelete = Operation
        type Scopes FirewallsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallsDelete'{..}
          = go _fdProject _fdFirewall _fdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsDeleteResource)
                      mempty
