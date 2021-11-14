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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified node template. Gets a list of available node
-- templates by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.get@.
module Network.Google.Resource.Compute.NodeTemplates.Get
    (
    -- * REST Resource
      NodeTemplatesGetResource

    -- * Creating a Request
    , nodeTemplatesGet
    , NodeTemplatesGet

    -- * Request Lenses
    , nodProject
    , nodNodeTemplate
    , nodRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.get@ method which the
-- 'NodeTemplatesGet' request conforms to.
type NodeTemplatesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   Capture "nodeTemplate" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] NodeTemplate

-- | Returns the specified node template. Gets a list of available node
-- templates by making a list() request.
--
-- /See:/ 'nodeTemplatesGet' smart constructor.
data NodeTemplatesGet =
  NodeTemplatesGet'
    { _nodProject :: !Text
    , _nodNodeTemplate :: !Text
    , _nodRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nodProject'
--
-- * 'nodNodeTemplate'
--
-- * 'nodRegion'
nodeTemplatesGet
    :: Text -- ^ 'nodProject'
    -> Text -- ^ 'nodNodeTemplate'
    -> Text -- ^ 'nodRegion'
    -> NodeTemplatesGet
nodeTemplatesGet pNodProject_ pNodNodeTemplate_ pNodRegion_ =
  NodeTemplatesGet'
    { _nodProject = pNodProject_
    , _nodNodeTemplate = pNodNodeTemplate_
    , _nodRegion = pNodRegion_
    }


-- | Project ID for this request.
nodProject :: Lens' NodeTemplatesGet Text
nodProject
  = lens _nodProject (\ s a -> s{_nodProject = a})

-- | Name of the node template to return.
nodNodeTemplate :: Lens' NodeTemplatesGet Text
nodNodeTemplate
  = lens _nodNodeTemplate
      (\ s a -> s{_nodNodeTemplate = a})

-- | The name of the region for this request.
nodRegion :: Lens' NodeTemplatesGet Text
nodRegion
  = lens _nodRegion (\ s a -> s{_nodRegion = a})

instance GoogleRequest NodeTemplatesGet where
        type Rs NodeTemplatesGet = NodeTemplate
        type Scopes NodeTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTemplatesGet'{..}
          = go _nodProject _nodRegion _nodNodeTemplate
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesGetResource)
                      mempty
