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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of forwarding rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.aggregatedList@.
module Network.Google.Resource.Compute.ForwardingRules.AggregatedList
    (
    -- * REST Resource
      ForwardingRulesAggregatedListResource

    -- * Creating a Request
    , forwardingRulesAggregatedList
    , ForwardingRulesAggregatedList

    -- * Request Lenses
    , fralOrderBy
    , fralProject
    , fralFilter
    , fralPageToken
    , fralMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.aggregatedList@ method which the
-- 'ForwardingRulesAggregatedList' request conforms to.
type ForwardingRulesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "forwardingRules" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ForwardingRuleAggregatedList

-- | Retrieves an aggregated list of forwarding rules.
--
-- /See:/ 'forwardingRulesAggregatedList' smart constructor.
data ForwardingRulesAggregatedList =
  ForwardingRulesAggregatedList'
    { _fralOrderBy    :: !(Maybe Text)
    , _fralProject    :: !Text
    , _fralFilter     :: !(Maybe Text)
    , _fralPageToken  :: !(Maybe Text)
    , _fralMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ForwardingRulesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fralOrderBy'
--
-- * 'fralProject'
--
-- * 'fralFilter'
--
-- * 'fralPageToken'
--
-- * 'fralMaxResults'
forwardingRulesAggregatedList
    :: Text -- ^ 'fralProject'
    -> ForwardingRulesAggregatedList
forwardingRulesAggregatedList pFralProject_ =
  ForwardingRulesAggregatedList'
    { _fralOrderBy = Nothing
    , _fralProject = pFralProject_
    , _fralFilter = Nothing
    , _fralPageToken = Nothing
    , _fralMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
fralOrderBy :: Lens' ForwardingRulesAggregatedList (Maybe Text)
fralOrderBy
  = lens _fralOrderBy (\ s a -> s{_fralOrderBy = a})

-- | Project ID for this request.
fralProject :: Lens' ForwardingRulesAggregatedList Text
fralProject
  = lens _fralProject (\ s a -> s{_fralProject = a})

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
fralFilter :: Lens' ForwardingRulesAggregatedList (Maybe Text)
fralFilter
  = lens _fralFilter (\ s a -> s{_fralFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
fralPageToken :: Lens' ForwardingRulesAggregatedList (Maybe Text)
fralPageToken
  = lens _fralPageToken
      (\ s a -> s{_fralPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
fralMaxResults :: Lens' ForwardingRulesAggregatedList Word32
fralMaxResults
  = lens _fralMaxResults
      (\ s a -> s{_fralMaxResults = a})
      . _Coerce

instance GoogleRequest ForwardingRulesAggregatedList
         where
        type Rs ForwardingRulesAggregatedList =
             ForwardingRuleAggregatedList
        type Scopes ForwardingRulesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ForwardingRulesAggregatedList'{..}
          = go _fralProject _fralOrderBy _fralFilter
              _fralPageToken
              (Just _fralMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ForwardingRulesAggregatedListResource)
                      mempty
