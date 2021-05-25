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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified NodeTemplate resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.delete@.
module Network.Google.Resource.Compute.NodeTemplates.Delete
    (
    -- * REST Resource
      NodeTemplatesDeleteResource

    -- * Creating a Request
    , nodeTemplatesDelete
    , NodeTemplatesDelete

    -- * Request Lenses
    , ntdRequestId
    , ntdProject
    , ntdNodeTemplate
    , ntdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.delete@ method which the
-- 'NodeTemplatesDelete' request conforms to.
type NodeTemplatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   Capture "nodeTemplate" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified NodeTemplate resource.
--
-- /See:/ 'nodeTemplatesDelete' smart constructor.
data NodeTemplatesDelete =
  NodeTemplatesDelete'
    { _ntdRequestId :: !(Maybe Text)
    , _ntdProject :: !Text
    , _ntdNodeTemplate :: !Text
    , _ntdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntdRequestId'
--
-- * 'ntdProject'
--
-- * 'ntdNodeTemplate'
--
-- * 'ntdRegion'
nodeTemplatesDelete
    :: Text -- ^ 'ntdProject'
    -> Text -- ^ 'ntdNodeTemplate'
    -> Text -- ^ 'ntdRegion'
    -> NodeTemplatesDelete
nodeTemplatesDelete pNtdProject_ pNtdNodeTemplate_ pNtdRegion_ =
  NodeTemplatesDelete'
    { _ntdRequestId = Nothing
    , _ntdProject = pNtdProject_
    , _ntdNodeTemplate = pNtdNodeTemplate_
    , _ntdRegion = pNtdRegion_
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
ntdRequestId :: Lens' NodeTemplatesDelete (Maybe Text)
ntdRequestId
  = lens _ntdRequestId (\ s a -> s{_ntdRequestId = a})

-- | Project ID for this request.
ntdProject :: Lens' NodeTemplatesDelete Text
ntdProject
  = lens _ntdProject (\ s a -> s{_ntdProject = a})

-- | Name of the NodeTemplate resource to delete.
ntdNodeTemplate :: Lens' NodeTemplatesDelete Text
ntdNodeTemplate
  = lens _ntdNodeTemplate
      (\ s a -> s{_ntdNodeTemplate = a})

-- | The name of the region for this request.
ntdRegion :: Lens' NodeTemplatesDelete Text
ntdRegion
  = lens _ntdRegion (\ s a -> s{_ntdRegion = a})

instance GoogleRequest NodeTemplatesDelete where
        type Rs NodeTemplatesDelete = Operation
        type Scopes NodeTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeTemplatesDelete'{..}
          = go _ntdProject _ntdRegion _ntdNodeTemplate
              _ntdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesDeleteResource)
                      mempty
