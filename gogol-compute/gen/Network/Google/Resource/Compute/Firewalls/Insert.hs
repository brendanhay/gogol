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
-- Module      : Network.Google.Resource.Compute.Firewalls.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a firewall rule in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.insert@.
module Network.Google.Resource.Compute.Firewalls.Insert
    (
    -- * REST Resource
      FirewallsInsertResource

    -- * Creating a Request
    , firewallsInsert
    , FirewallsInsert

    -- * Request Lenses
    , fiRequestId
    , fiProject
    , fiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewalls.insert@ method which the
-- 'FirewallsInsert' request conforms to.
type FirewallsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Firewall :> Post '[JSON] Operation

-- | Creates a firewall rule in the specified project using the data included
-- in the request.
--
-- /See:/ 'firewallsInsert' smart constructor.
data FirewallsInsert =
  FirewallsInsert'
    { _fiRequestId :: !(Maybe Text)
    , _fiProject :: !Text
    , _fiPayload :: !Firewall
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiRequestId'
--
-- * 'fiProject'
--
-- * 'fiPayload'
firewallsInsert
    :: Text -- ^ 'fiProject'
    -> Firewall -- ^ 'fiPayload'
    -> FirewallsInsert
firewallsInsert pFiProject_ pFiPayload_ =
  FirewallsInsert'
    {_fiRequestId = Nothing, _fiProject = pFiProject_, _fiPayload = pFiPayload_}


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
fiRequestId :: Lens' FirewallsInsert (Maybe Text)
fiRequestId
  = lens _fiRequestId (\ s a -> s{_fiRequestId = a})

-- | Project ID for this request.
fiProject :: Lens' FirewallsInsert Text
fiProject
  = lens _fiProject (\ s a -> s{_fiProject = a})

-- | Multipart request metadata.
fiPayload :: Lens' FirewallsInsert Firewall
fiPayload
  = lens _fiPayload (\ s a -> s{_fiPayload = a})

instance GoogleRequest FirewallsInsert where
        type Rs FirewallsInsert = Operation
        type Scopes FirewallsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallsInsert'{..}
          = go _fiProject _fiRequestId (Just AltJSON)
              _fiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsInsertResource)
                      mempty
