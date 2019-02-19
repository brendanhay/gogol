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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of node templates available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.list@.
module Network.Google.Resource.Compute.NodeTemplates.List
    (
    -- * REST Resource
      NodeTemplatesListResource

    -- * Creating a Request
    , nodeTemplatesList
    , NodeTemplatesList

    -- * Request Lenses
    , ntlOrderBy
    , ntlProject
    , ntlFilter
    , ntlRegion
    , ntlPageToken
    , ntlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.list@ method which the
-- 'NodeTemplatesList' request conforms to.
type NodeTemplatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] NodeTemplateList

-- | Retrieves a list of node templates available to the specified project.
--
-- /See:/ 'nodeTemplatesList' smart constructor.
data NodeTemplatesList =
  NodeTemplatesList'
    { _ntlOrderBy    :: !(Maybe Text)
    , _ntlProject    :: !Text
    , _ntlFilter     :: !(Maybe Text)
    , _ntlRegion     :: !Text
    , _ntlPageToken  :: !(Maybe Text)
    , _ntlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntlOrderBy'
--
-- * 'ntlProject'
--
-- * 'ntlFilter'
--
-- * 'ntlRegion'
--
-- * 'ntlPageToken'
--
-- * 'ntlMaxResults'
nodeTemplatesList
    :: Text -- ^ 'ntlProject'
    -> Text -- ^ 'ntlRegion'
    -> NodeTemplatesList
nodeTemplatesList pNtlProject_ pNtlRegion_ =
  NodeTemplatesList'
    { _ntlOrderBy = Nothing
    , _ntlProject = pNtlProject_
    , _ntlFilter = Nothing
    , _ntlRegion = pNtlRegion_
    , _ntlPageToken = Nothing
    , _ntlMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
ntlOrderBy :: Lens' NodeTemplatesList (Maybe Text)
ntlOrderBy
  = lens _ntlOrderBy (\ s a -> s{_ntlOrderBy = a})

-- | Project ID for this request.
ntlProject :: Lens' NodeTemplatesList Text
ntlProject
  = lens _ntlProject (\ s a -> s{_ntlProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
ntlFilter :: Lens' NodeTemplatesList (Maybe Text)
ntlFilter
  = lens _ntlFilter (\ s a -> s{_ntlFilter = a})

-- | The name of the region for this request.
ntlRegion :: Lens' NodeTemplatesList Text
ntlRegion
  = lens _ntlRegion (\ s a -> s{_ntlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ntlPageToken :: Lens' NodeTemplatesList (Maybe Text)
ntlPageToken
  = lens _ntlPageToken (\ s a -> s{_ntlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
ntlMaxResults :: Lens' NodeTemplatesList Word32
ntlMaxResults
  = lens _ntlMaxResults
      (\ s a -> s{_ntlMaxResults = a})
      . _Coerce

instance GoogleRequest NodeTemplatesList where
        type Rs NodeTemplatesList = NodeTemplateList
        type Scopes NodeTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTemplatesList'{..}
          = go _ntlProject _ntlRegion _ntlOrderBy _ntlFilter
              _ntlPageToken
              (Just _ntlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTemplatesListResource)
                      mempty
