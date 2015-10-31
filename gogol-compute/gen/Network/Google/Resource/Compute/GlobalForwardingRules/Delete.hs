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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.delete@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Delete
    (
    -- * REST Resource
      GlobalForwardingRulesDeleteResource

    -- * Creating a Request
    , globalForwardingRulesDelete
    , GlobalForwardingRulesDelete

    -- * Request Lenses
    , gfrdProject
    , gfrdForwardingRule
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.delete@ method which the
-- 'GlobalForwardingRulesDelete' request conforms to.
type GlobalForwardingRulesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ 'globalForwardingRulesDelete' smart constructor.
data GlobalForwardingRulesDelete = GlobalForwardingRulesDelete
    { _gfrdProject        :: !Text
    , _gfrdForwardingRule :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrdProject'
--
-- * 'gfrdForwardingRule'
globalForwardingRulesDelete
    :: Text -- ^ 'gfrdProject'
    -> Text -- ^ 'gfrdForwardingRule'
    -> GlobalForwardingRulesDelete
globalForwardingRulesDelete pGfrdProject_ pGfrdForwardingRule_ =
    GlobalForwardingRulesDelete
    { _gfrdProject = pGfrdProject_
    , _gfrdForwardingRule = pGfrdForwardingRule_
    }

-- | Project ID for this request.
gfrdProject :: Lens' GlobalForwardingRulesDelete Text
gfrdProject
  = lens _gfrdProject (\ s a -> s{_gfrdProject = a})

-- | Name of the ForwardingRule resource to delete.
gfrdForwardingRule :: Lens' GlobalForwardingRulesDelete Text
gfrdForwardingRule
  = lens _gfrdForwardingRule
      (\ s a -> s{_gfrdForwardingRule = a})

instance GoogleRequest GlobalForwardingRulesDelete
         where
        type Rs GlobalForwardingRulesDelete = Operation
        type Scopes GlobalForwardingRulesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalForwardingRulesDelete{..}
          = go _gfrdProject _gfrdForwardingRule (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesDeleteResource)
                      mempty
