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
-- Module      : Network.Google.Resource.Compute.NodeGroups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified node group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.patch@.
module Network.Google.Resource.Compute.NodeGroups.Patch
    (
    -- * REST Resource
      NodeGroupsPatchResource

    -- * Creating a Request
    , nodeGroupsPatch
    , NodeGroupsPatch

    -- * Request Lenses
    , ngpRequestId
    , ngpNodeGroup
    , ngpProject
    , ngpZone
    , ngpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.patch@ method which the
-- 'NodeGroupsPatch' request conforms to.
type NodeGroupsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NodeGroup :> Patch '[JSON] Operation

-- | Updates the specified node group.
--
-- /See:/ 'nodeGroupsPatch' smart constructor.
data NodeGroupsPatch =
  NodeGroupsPatch'
    { _ngpRequestId :: !(Maybe Text)
    , _ngpNodeGroup :: !Text
    , _ngpProject :: !Text
    , _ngpZone :: !Text
    , _ngpPayload :: !NodeGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngpRequestId'
--
-- * 'ngpNodeGroup'
--
-- * 'ngpProject'
--
-- * 'ngpZone'
--
-- * 'ngpPayload'
nodeGroupsPatch
    :: Text -- ^ 'ngpNodeGroup'
    -> Text -- ^ 'ngpProject'
    -> Text -- ^ 'ngpZone'
    -> NodeGroup -- ^ 'ngpPayload'
    -> NodeGroupsPatch
nodeGroupsPatch pNgpNodeGroup_ pNgpProject_ pNgpZone_ pNgpPayload_ =
  NodeGroupsPatch'
    { _ngpRequestId = Nothing
    , _ngpNodeGroup = pNgpNodeGroup_
    , _ngpProject = pNgpProject_
    , _ngpZone = pNgpZone_
    , _ngpPayload = pNgpPayload_
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
ngpRequestId :: Lens' NodeGroupsPatch (Maybe Text)
ngpRequestId
  = lens _ngpRequestId (\ s a -> s{_ngpRequestId = a})

-- | Name of the NodeGroup resource to update.
ngpNodeGroup :: Lens' NodeGroupsPatch Text
ngpNodeGroup
  = lens _ngpNodeGroup (\ s a -> s{_ngpNodeGroup = a})

-- | Project ID for this request.
ngpProject :: Lens' NodeGroupsPatch Text
ngpProject
  = lens _ngpProject (\ s a -> s{_ngpProject = a})

-- | The name of the zone for this request.
ngpZone :: Lens' NodeGroupsPatch Text
ngpZone = lens _ngpZone (\ s a -> s{_ngpZone = a})

-- | Multipart request metadata.
ngpPayload :: Lens' NodeGroupsPatch NodeGroup
ngpPayload
  = lens _ngpPayload (\ s a -> s{_ngpPayload = a})

instance GoogleRequest NodeGroupsPatch where
        type Rs NodeGroupsPatch = Operation
        type Scopes NodeGroupsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsPatch'{..}
          = go _ngpProject _ngpZone _ngpNodeGroup _ngpRequestId
              (Just AltJSON)
              _ngpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsPatchResource)
                      mempty
