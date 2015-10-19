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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a firewall resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsInsert@.
module Network.Google.Resource.Compute.Firewalls.Insert
    (
    -- * REST Resource
      FirewallsInsertResource

    -- * Creating a Request
    , firewallsInsert'
    , FirewallsInsert'

    -- * Request Lenses
    , fiProject
    , fiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsInsert@ method which the
-- 'FirewallsInsert'' request conforms to.
type FirewallsInsertResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Firewall :> Post '[JSON] Operation

-- | Creates a firewall resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'firewallsInsert'' smart constructor.
data FirewallsInsert' = FirewallsInsert'
    { _fiProject :: !Text
    , _fiPayload :: !Firewall
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiProject'
--
-- * 'fiPayload'
firewallsInsert'
    :: Text -- ^ 'project'
    -> Firewall -- ^ 'payload'
    -> FirewallsInsert'
firewallsInsert' pFiProject_ pFiPayload_ =
    FirewallsInsert'
    { _fiProject = pFiProject_
    , _fiPayload = pFiPayload_
    }

-- | Project ID for this request.
fiProject :: Lens' FirewallsInsert' Text
fiProject
  = lens _fiProject (\ s a -> s{_fiProject = a})

-- | Multipart request metadata.
fiPayload :: Lens' FirewallsInsert' Firewall
fiPayload
  = lens _fiPayload (\ s a -> s{_fiPayload = a})

instance GoogleRequest FirewallsInsert' where
        type Rs FirewallsInsert' = Operation
        requestClient FirewallsInsert'{..}
          = go _fiProject (Just AltJSON) _fiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsInsertResource)
                      mempty
