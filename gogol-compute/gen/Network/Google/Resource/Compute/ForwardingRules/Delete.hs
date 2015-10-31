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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.delete@.
module Network.Google.Resource.Compute.ForwardingRules.Delete
    (
    -- * REST Resource
      ForwardingRulesDeleteResource

    -- * Creating a Request
    , forwardingRulesDelete
    , ForwardingRulesDelete

    -- * Request Lenses
    , frdProject
    , frdForwardingRule
    , frdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.delete@ method which the
-- 'ForwardingRulesDelete' request conforms to.
type ForwardingRulesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ 'forwardingRulesDelete' smart constructor.
data ForwardingRulesDelete = ForwardingRulesDelete
    { _frdProject        :: !Text
    , _frdForwardingRule :: !Text
    , _frdRegion         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frdProject'
--
-- * 'frdForwardingRule'
--
-- * 'frdRegion'
forwardingRulesDelete
    :: Text -- ^ 'frdProject'
    -> Text -- ^ 'frdForwardingRule'
    -> Text -- ^ 'frdRegion'
    -> ForwardingRulesDelete
forwardingRulesDelete pFrdProject_ pFrdForwardingRule_ pFrdRegion_ =
    ForwardingRulesDelete
    { _frdProject = pFrdProject_
    , _frdForwardingRule = pFrdForwardingRule_
    , _frdRegion = pFrdRegion_
    }

-- | Project ID for this request.
frdProject :: Lens' ForwardingRulesDelete Text
frdProject
  = lens _frdProject (\ s a -> s{_frdProject = a})

-- | Name of the ForwardingRule resource to delete.
frdForwardingRule :: Lens' ForwardingRulesDelete Text
frdForwardingRule
  = lens _frdForwardingRule
      (\ s a -> s{_frdForwardingRule = a})

-- | Name of the region scoping this request.
frdRegion :: Lens' ForwardingRulesDelete Text
frdRegion
  = lens _frdRegion (\ s a -> s{_frdRegion = a})

instance GoogleRequest ForwardingRulesDelete where
        type Rs ForwardingRulesDelete = Operation
        type Scopes ForwardingRulesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ForwardingRulesDelete{..}
          = go _frdProject _frdRegion _frdForwardingRule
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesDeleteResource)
                      mempty
