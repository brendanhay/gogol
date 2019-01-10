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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a NodeTemplate resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.insert@.
module Network.Google.Resource.Compute.NodeTemplates.Insert
    (
    -- * REST Resource
      NodeTemplatesInsertResource

    -- * Creating a Request
    , nodeTemplatesInsert
    , NodeTemplatesInsert

    -- * Request Lenses
    , ntiRequestId
    , ntiProject
    , ntiPayload
    , ntiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.insert@ method which the
-- 'NodeTemplatesInsert' request conforms to.
type NodeTemplatesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NodeTemplate :>
                         Post '[JSON] Operation

-- | Creates a NodeTemplate resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'nodeTemplatesInsert' smart constructor.
data NodeTemplatesInsert = NodeTemplatesInsert'
    { _ntiRequestId :: !(Maybe Text)
    , _ntiProject   :: !Text
    , _ntiPayload   :: !NodeTemplate
    , _ntiRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeTemplatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntiRequestId'
--
-- * 'ntiProject'
--
-- * 'ntiPayload'
--
-- * 'ntiRegion'
nodeTemplatesInsert
    :: Text -- ^ 'ntiProject'
    -> NodeTemplate -- ^ 'ntiPayload'
    -> Text -- ^ 'ntiRegion'
    -> NodeTemplatesInsert
nodeTemplatesInsert pNtiProject_ pNtiPayload_ pNtiRegion_ =
    NodeTemplatesInsert'
    { _ntiRequestId = Nothing
    , _ntiProject = pNtiProject_
    , _ntiPayload = pNtiPayload_
    , _ntiRegion = pNtiRegion_
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
ntiRequestId :: Lens' NodeTemplatesInsert (Maybe Text)
ntiRequestId
  = lens _ntiRequestId (\ s a -> s{_ntiRequestId = a})

-- | Project ID for this request.
ntiProject :: Lens' NodeTemplatesInsert Text
ntiProject
  = lens _ntiProject (\ s a -> s{_ntiProject = a})

-- | Multipart request metadata.
ntiPayload :: Lens' NodeTemplatesInsert NodeTemplate
ntiPayload
  = lens _ntiPayload (\ s a -> s{_ntiPayload = a})

-- | The name of the region for this request.
ntiRegion :: Lens' NodeTemplatesInsert Text
ntiRegion
  = lens _ntiRegion (\ s a -> s{_ntiRegion = a})

instance GoogleRequest NodeTemplatesInsert where
        type Rs NodeTemplatesInsert = Operation
        type Scopes NodeTemplatesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeTemplatesInsert'{..}
          = go _ntiProject _ntiRegion _ntiRequestId
              (Just AltJSON)
              _ntiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesInsertResource)
                      mempty
