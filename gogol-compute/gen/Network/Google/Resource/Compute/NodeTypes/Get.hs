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
-- Module      : Network.Google.Resource.Compute.NodeTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified node type. Gets a list of available node types by
-- making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTypes.get@.
module Network.Google.Resource.Compute.NodeTypes.Get
    (
    -- * REST Resource
      NodeTypesGetResource

    -- * Creating a Request
    , nodeTypesGet
    , NodeTypesGet

    -- * Request Lenses
    , ntgProject
    , ntgZone
    , ntgNodeType
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeTypes.get@ method which the
-- 'NodeTypesGet' request conforms to.
type NodeTypesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeTypes" :>
                   Capture "nodeType" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] NodeType

-- | Returns the specified node type. Gets a list of available node types by
-- making a list() request.
--
-- /See:/ 'nodeTypesGet' smart constructor.
data NodeTypesGet = NodeTypesGet'
    { _ntgProject  :: !Text
    , _ntgZone     :: !Text
    , _ntgNodeType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntgProject'
--
-- * 'ntgZone'
--
-- * 'ntgNodeType'
nodeTypesGet
    :: Text -- ^ 'ntgProject'
    -> Text -- ^ 'ntgZone'
    -> Text -- ^ 'ntgNodeType'
    -> NodeTypesGet
nodeTypesGet pNtgProject_ pNtgZone_ pNtgNodeType_ =
    NodeTypesGet'
    { _ntgProject = pNtgProject_
    , _ntgZone = pNtgZone_
    , _ntgNodeType = pNtgNodeType_
    }

-- | Project ID for this request.
ntgProject :: Lens' NodeTypesGet Text
ntgProject
  = lens _ntgProject (\ s a -> s{_ntgProject = a})

-- | The name of the zone for this request.
ntgZone :: Lens' NodeTypesGet Text
ntgZone = lens _ntgZone (\ s a -> s{_ntgZone = a})

-- | Name of the node type to return.
ntgNodeType :: Lens' NodeTypesGet Text
ntgNodeType
  = lens _ntgNodeType (\ s a -> s{_ntgNodeType = a})

instance GoogleRequest NodeTypesGet where
        type Rs NodeTypesGet = NodeType
        type Scopes NodeTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTypesGet'{..}
          = go _ntgProject _ntgZone _ntgNodeType (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NodeTypesGetResource)
                      mempty
