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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes target URL for forwarding rule. The new target should be of the
-- same type as the old target.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.setTarget@.
module Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
    (
    -- * REST Resource
      GlobalForwardingRulesSetTargetResource

    -- * Creating a Request
    , globalForwardingRulesSetTarget
    , GlobalForwardingRulesSetTarget

    -- * Request Lenses
    , gfrstProject
    , gfrstForwardingRule
    , gfrstPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.setTarget@ method which the
-- 'GlobalForwardingRulesSetTarget' request conforms to.
type GlobalForwardingRulesSetTargetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   "setTarget" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetReference :>
                         Post '[JSON] Operation

-- | Changes target URL for forwarding rule. The new target should be of the
-- same type as the old target.
--
-- /See:/ 'globalForwardingRulesSetTarget' smart constructor.
data GlobalForwardingRulesSetTarget = GlobalForwardingRulesSetTarget'
    { _gfrstProject        :: !Text
    , _gfrstForwardingRule :: !Text
    , _gfrstPayload        :: !TargetReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesSetTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrstProject'
--
-- * 'gfrstForwardingRule'
--
-- * 'gfrstPayload'
globalForwardingRulesSetTarget
    :: Text -- ^ 'gfrstProject'
    -> Text -- ^ 'gfrstForwardingRule'
    -> TargetReference -- ^ 'gfrstPayload'
    -> GlobalForwardingRulesSetTarget
globalForwardingRulesSetTarget pGfrstProject_ pGfrstForwardingRule_ pGfrstPayload_ =
    GlobalForwardingRulesSetTarget'
    { _gfrstProject = pGfrstProject_
    , _gfrstForwardingRule = pGfrstForwardingRule_
    , _gfrstPayload = pGfrstPayload_
    }

-- | Project ID for this request.
gfrstProject :: Lens' GlobalForwardingRulesSetTarget Text
gfrstProject
  = lens _gfrstProject (\ s a -> s{_gfrstProject = a})

-- | Name of the ForwardingRule resource in which target is to be set.
gfrstForwardingRule :: Lens' GlobalForwardingRulesSetTarget Text
gfrstForwardingRule
  = lens _gfrstForwardingRule
      (\ s a -> s{_gfrstForwardingRule = a})

-- | Multipart request metadata.
gfrstPayload :: Lens' GlobalForwardingRulesSetTarget TargetReference
gfrstPayload
  = lens _gfrstPayload (\ s a -> s{_gfrstPayload = a})

instance GoogleRequest GlobalForwardingRulesSetTarget
         where
        type Rs GlobalForwardingRulesSetTarget = Operation
        type Scopes GlobalForwardingRulesSetTarget =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalForwardingRulesSetTarget'{..}
          = go _gfrstProject _gfrstForwardingRule
              (Just AltJSON)
              _gfrstPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalForwardingRulesSetTargetResource)
                      mempty
