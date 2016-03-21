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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.get@.
module Network.Google.Resource.Compute.ForwardingRules.Get
    (
    -- * REST Resource
      ForwardingRulesGetResource

    -- * Creating a Request
    , forwardingRulesGet
    , ForwardingRulesGet

    -- * Request Lenses
    , frgProject
    , frgForwardingRule
    , frgRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.get@ method which the
-- 'ForwardingRulesGet' request conforms to.
type ForwardingRulesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ForwardingRule

-- | Returns the specified ForwardingRule resource.
--
-- /See:/ 'forwardingRulesGet' smart constructor.
data ForwardingRulesGet = ForwardingRulesGet'
    { _frgProject        :: !Text
    , _frgForwardingRule :: !Text
    , _frgRegion         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frgProject'
--
-- * 'frgForwardingRule'
--
-- * 'frgRegion'
forwardingRulesGet
    :: Text -- ^ 'frgProject'
    -> Text -- ^ 'frgForwardingRule'
    -> Text -- ^ 'frgRegion'
    -> ForwardingRulesGet
forwardingRulesGet pFrgProject_ pFrgForwardingRule_ pFrgRegion_ =
    ForwardingRulesGet'
    { _frgProject = pFrgProject_
    , _frgForwardingRule = pFrgForwardingRule_
    , _frgRegion = pFrgRegion_
    }

-- | Project ID for this request.
frgProject :: Lens' ForwardingRulesGet Text
frgProject
  = lens _frgProject (\ s a -> s{_frgProject = a})

-- | Name of the ForwardingRule resource to return.
frgForwardingRule :: Lens' ForwardingRulesGet Text
frgForwardingRule
  = lens _frgForwardingRule
      (\ s a -> s{_frgForwardingRule = a})

-- | Name of the region scoping this request.
frgRegion :: Lens' ForwardingRulesGet Text
frgRegion
  = lens _frgRegion (\ s a -> s{_frgRegion = a})

instance GoogleRequest ForwardingRulesGet where
        type Rs ForwardingRulesGet = ForwardingRule
        type Scopes ForwardingRulesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ForwardingRulesGet'{..}
          = go _frgProject _frgRegion _frgForwardingRule
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesGetResource)
                      mempty
