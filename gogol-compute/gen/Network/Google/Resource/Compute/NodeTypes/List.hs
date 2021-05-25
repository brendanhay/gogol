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
-- Module      : Network.Google.Resource.Compute.NodeTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of node types available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTypes.list@.
module Network.Google.Resource.Compute.NodeTypes.List
    (
    -- * REST Resource
      NodeTypesListResource

    -- * Creating a Request
    , nodeTypesList
    , NodeTypesList

    -- * Request Lenses
    , ntltReturnPartialSuccess
    , ntltOrderBy
    , ntltProject
    , ntltZone
    , ntltFilter
    , ntltPageToken
    , ntltMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTypes.list@ method which the
-- 'NodeTypesList' request conforms to.
type NodeTypesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeTypes" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NodeTypeList

-- | Retrieves a list of node types available to the specified project.
--
-- /See:/ 'nodeTypesList' smart constructor.
data NodeTypesList =
  NodeTypesList'
    { _ntltReturnPartialSuccess :: !(Maybe Bool)
    , _ntltOrderBy :: !(Maybe Text)
    , _ntltProject :: !Text
    , _ntltZone :: !Text
    , _ntltFilter :: !(Maybe Text)
    , _ntltPageToken :: !(Maybe Text)
    , _ntltMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntltReturnPartialSuccess'
--
-- * 'ntltOrderBy'
--
-- * 'ntltProject'
--
-- * 'ntltZone'
--
-- * 'ntltFilter'
--
-- * 'ntltPageToken'
--
-- * 'ntltMaxResults'
nodeTypesList
    :: Text -- ^ 'ntltProject'
    -> Text -- ^ 'ntltZone'
    -> NodeTypesList
nodeTypesList pNtltProject_ pNtltZone_ =
  NodeTypesList'
    { _ntltReturnPartialSuccess = Nothing
    , _ntltOrderBy = Nothing
    , _ntltProject = pNtltProject_
    , _ntltZone = pNtltZone_
    , _ntltFilter = Nothing
    , _ntltPageToken = Nothing
    , _ntltMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ntltReturnPartialSuccess :: Lens' NodeTypesList (Maybe Bool)
ntltReturnPartialSuccess
  = lens _ntltReturnPartialSuccess
      (\ s a -> s{_ntltReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ntltOrderBy :: Lens' NodeTypesList (Maybe Text)
ntltOrderBy
  = lens _ntltOrderBy (\ s a -> s{_ntltOrderBy = a})

-- | Project ID for this request.
ntltProject :: Lens' NodeTypesList Text
ntltProject
  = lens _ntltProject (\ s a -> s{_ntltProject = a})

-- | The name of the zone for this request.
ntltZone :: Lens' NodeTypesList Text
ntltZone = lens _ntltZone (\ s a -> s{_ntltZone = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
ntltFilter :: Lens' NodeTypesList (Maybe Text)
ntltFilter
  = lens _ntltFilter (\ s a -> s{_ntltFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ntltPageToken :: Lens' NodeTypesList (Maybe Text)
ntltPageToken
  = lens _ntltPageToken
      (\ s a -> s{_ntltPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ntltMaxResults :: Lens' NodeTypesList Word32
ntltMaxResults
  = lens _ntltMaxResults
      (\ s a -> s{_ntltMaxResults = a})
      . _Coerce

instance GoogleRequest NodeTypesList where
        type Rs NodeTypesList = NodeTypeList
        type Scopes NodeTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTypesList'{..}
          = go _ntltProject _ntltZone _ntltReturnPartialSuccess
              _ntltOrderBy
              _ntltFilter
              _ntltPageToken
              (Just _ntltMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NodeTypesListResource)
                      mempty
