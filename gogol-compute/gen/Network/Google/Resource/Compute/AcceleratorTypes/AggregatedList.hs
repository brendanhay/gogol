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
-- Module      : Network.Google.Resource.Compute.AcceleratorTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of accelerator types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.acceleratorTypes.aggregatedList@.
module Network.Google.Resource.Compute.AcceleratorTypes.AggregatedList
    (
    -- * REST Resource
      AcceleratorTypesAggregatedListResource

    -- * Creating a Request
    , acceleratorTypesAggregatedList
    , AcceleratorTypesAggregatedList

    -- * Request Lenses
    , atalOrderBy
    , atalProject
    , atalFilter
    , atalPageToken
    , atalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.acceleratorTypes.aggregatedList@ method which the
-- 'AcceleratorTypesAggregatedList' request conforms to.
type AcceleratorTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "acceleratorTypes" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AcceleratorTypeAggregatedList

-- | Retrieves an aggregated list of accelerator types.
--
-- /See:/ 'acceleratorTypesAggregatedList' smart constructor.
data AcceleratorTypesAggregatedList = AcceleratorTypesAggregatedList'
    { _atalOrderBy    :: !(Maybe Text)
    , _atalProject    :: !Text
    , _atalFilter     :: !(Maybe Text)
    , _atalPageToken  :: !(Maybe Text)
    , _atalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AcceleratorTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atalOrderBy'
--
-- * 'atalProject'
--
-- * 'atalFilter'
--
-- * 'atalPageToken'
--
-- * 'atalMaxResults'
acceleratorTypesAggregatedList
    :: Text -- ^ 'atalProject'
    -> AcceleratorTypesAggregatedList
acceleratorTypesAggregatedList pAtalProject_ =
    AcceleratorTypesAggregatedList'
    { _atalOrderBy = Nothing
    , _atalProject = pAtalProject_
    , _atalFilter = Nothing
    , _atalPageToken = Nothing
    , _atalMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
atalOrderBy :: Lens' AcceleratorTypesAggregatedList (Maybe Text)
atalOrderBy
  = lens _atalOrderBy (\ s a -> s{_atalOrderBy = a})

-- | Project ID for this request.
atalProject :: Lens' AcceleratorTypesAggregatedList Text
atalProject
  = lens _atalProject (\ s a -> s{_atalProject = a})

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
atalFilter :: Lens' AcceleratorTypesAggregatedList (Maybe Text)
atalFilter
  = lens _atalFilter (\ s a -> s{_atalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
atalPageToken :: Lens' AcceleratorTypesAggregatedList (Maybe Text)
atalPageToken
  = lens _atalPageToken
      (\ s a -> s{_atalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
atalMaxResults :: Lens' AcceleratorTypesAggregatedList Word32
atalMaxResults
  = lens _atalMaxResults
      (\ s a -> s{_atalMaxResults = a})
      . _Coerce

instance GoogleRequest AcceleratorTypesAggregatedList
         where
        type Rs AcceleratorTypesAggregatedList =
             AcceleratorTypeAggregatedList
        type Scopes AcceleratorTypesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AcceleratorTypesAggregatedList'{..}
          = go _atalProject _atalOrderBy _atalFilter
              _atalPageToken
              (Just _atalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AcceleratorTypesAggregatedListResource)
                      mempty
