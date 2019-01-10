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
-- Module      : Network.Google.Resource.Compute.NodeGroups.SetNodeTemplate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the node template of the node group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.setNodeTemplate@.
module Network.Google.Resource.Compute.NodeGroups.SetNodeTemplate
    (
    -- * REST Resource
      NodeGroupsSetNodeTemplateResource

    -- * Creating a Request
    , nodeGroupsSetNodeTemplate
    , NodeGroupsSetNodeTemplate

    -- * Request Lenses
    , ngsntRequestId
    , ngsntNodeGroup
    , ngsntProject
    , ngsntZone
    , ngsntPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.setNodeTemplate@ method which the
-- 'NodeGroupsSetNodeTemplate' request conforms to.
type NodeGroupsSetNodeTemplateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     "setNodeTemplate" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] NodeGroupsSetNodeTemplateRequest :>
                             Post '[JSON] Operation

-- | Updates the node template of the node group.
--
-- /See:/ 'nodeGroupsSetNodeTemplate' smart constructor.
data NodeGroupsSetNodeTemplate = NodeGroupsSetNodeTemplate'
    { _ngsntRequestId :: !(Maybe Text)
    , _ngsntNodeGroup :: !Text
    , _ngsntProject   :: !Text
    , _ngsntZone      :: !Text
    , _ngsntPayload   :: !NodeGroupsSetNodeTemplateRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeGroupsSetNodeTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngsntRequestId'
--
-- * 'ngsntNodeGroup'
--
-- * 'ngsntProject'
--
-- * 'ngsntZone'
--
-- * 'ngsntPayload'
nodeGroupsSetNodeTemplate
    :: Text -- ^ 'ngsntNodeGroup'
    -> Text -- ^ 'ngsntProject'
    -> Text -- ^ 'ngsntZone'
    -> NodeGroupsSetNodeTemplateRequest -- ^ 'ngsntPayload'
    -> NodeGroupsSetNodeTemplate
nodeGroupsSetNodeTemplate pNgsntNodeGroup_ pNgsntProject_ pNgsntZone_ pNgsntPayload_ =
    NodeGroupsSetNodeTemplate'
    { _ngsntRequestId = Nothing
    , _ngsntNodeGroup = pNgsntNodeGroup_
    , _ngsntProject = pNgsntProject_
    , _ngsntZone = pNgsntZone_
    , _ngsntPayload = pNgsntPayload_
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
ngsntRequestId :: Lens' NodeGroupsSetNodeTemplate (Maybe Text)
ngsntRequestId
  = lens _ngsntRequestId
      (\ s a -> s{_ngsntRequestId = a})

-- | Name of the NodeGroup resource to delete.
ngsntNodeGroup :: Lens' NodeGroupsSetNodeTemplate Text
ngsntNodeGroup
  = lens _ngsntNodeGroup
      (\ s a -> s{_ngsntNodeGroup = a})

-- | Project ID for this request.
ngsntProject :: Lens' NodeGroupsSetNodeTemplate Text
ngsntProject
  = lens _ngsntProject (\ s a -> s{_ngsntProject = a})

-- | The name of the zone for this request.
ngsntZone :: Lens' NodeGroupsSetNodeTemplate Text
ngsntZone
  = lens _ngsntZone (\ s a -> s{_ngsntZone = a})

-- | Multipart request metadata.
ngsntPayload :: Lens' NodeGroupsSetNodeTemplate NodeGroupsSetNodeTemplateRequest
ngsntPayload
  = lens _ngsntPayload (\ s a -> s{_ngsntPayload = a})

instance GoogleRequest NodeGroupsSetNodeTemplate
         where
        type Rs NodeGroupsSetNodeTemplate = Operation
        type Scopes NodeGroupsSetNodeTemplate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsSetNodeTemplate'{..}
          = go _ngsntProject _ngsntZone _ngsntNodeGroup
              _ngsntRequestId
              (Just AltJSON)
              _ngsntPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsSetNodeTemplateResource)
                      mempty
