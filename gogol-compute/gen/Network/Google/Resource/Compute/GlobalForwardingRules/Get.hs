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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.get@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Get
    (
    -- * REST Resource
      GlobalForwardingRulesGetResource

    -- * Creating a Request
    , globalForwardingRulesGet
    , GlobalForwardingRulesGet

    -- * Request Lenses
    , gfrgProject
    , gfrgForwardingRule
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.get@ method which the
-- 'GlobalForwardingRulesGet' request conforms to.
type GlobalForwardingRulesGetResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           Capture "forwardingRule" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ForwardingRule

-- | Returns the specified ForwardingRule resource.
--
-- /See:/ 'globalForwardingRulesGet' smart constructor.
data GlobalForwardingRulesGet = GlobalForwardingRulesGet
    { _gfrgProject        :: !Text
    , _gfrgForwardingRule :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrgProject'
--
-- * 'gfrgForwardingRule'
globalForwardingRulesGet
    :: Text -- ^ 'gfrgProject'
    -> Text -- ^ 'gfrgForwardingRule'
    -> GlobalForwardingRulesGet
globalForwardingRulesGet pGfrgProject_ pGfrgForwardingRule_ =
    GlobalForwardingRulesGet
    { _gfrgProject = pGfrgProject_
    , _gfrgForwardingRule = pGfrgForwardingRule_
    }

-- | Name of the project scoping this request.
gfrgProject :: Lens' GlobalForwardingRulesGet Text
gfrgProject
  = lens _gfrgProject (\ s a -> s{_gfrgProject = a})

-- | Name of the ForwardingRule resource to return.
gfrgForwardingRule :: Lens' GlobalForwardingRulesGet Text
gfrgForwardingRule
  = lens _gfrgForwardingRule
      (\ s a -> s{_gfrgForwardingRule = a})

instance GoogleRequest GlobalForwardingRulesGet where
        type Rs GlobalForwardingRulesGet = ForwardingRule
        requestClient GlobalForwardingRulesGet{..}
          = go _gfrgProject _gfrgForwardingRule (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesGetResource)
                      mempty
