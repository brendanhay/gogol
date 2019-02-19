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
-- Module      : Network.Google.Resource.Compute.Addresses.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of addresses.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.aggregatedList@.
module Network.Google.Resource.Compute.Addresses.AggregatedList
    (
    -- * REST Resource
      AddressesAggregatedListResource

    -- * Creating a Request
    , addressesAggregatedList
    , AddressesAggregatedList

    -- * Request Lenses
    , aalOrderBy
    , aalProject
    , aalFilter
    , aalPageToken
    , aalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.addresses.aggregatedList@ method which the
-- 'AddressesAggregatedList' request conforms to.
type AddressesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "addresses" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AddressAggregatedList

-- | Retrieves an aggregated list of addresses.
--
-- /See:/ 'addressesAggregatedList' smart constructor.
data AddressesAggregatedList =
  AddressesAggregatedList'
    { _aalOrderBy    :: !(Maybe Text)
    , _aalProject    :: !Text
    , _aalFilter     :: !(Maybe Text)
    , _aalPageToken  :: !(Maybe Text)
    , _aalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddressesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalOrderBy'
--
-- * 'aalProject'
--
-- * 'aalFilter'
--
-- * 'aalPageToken'
--
-- * 'aalMaxResults'
addressesAggregatedList
    :: Text -- ^ 'aalProject'
    -> AddressesAggregatedList
addressesAggregatedList pAalProject_ =
  AddressesAggregatedList'
    { _aalOrderBy = Nothing
    , _aalProject = pAalProject_
    , _aalFilter = Nothing
    , _aalPageToken = Nothing
    , _aalMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
aalOrderBy :: Lens' AddressesAggregatedList (Maybe Text)
aalOrderBy
  = lens _aalOrderBy (\ s a -> s{_aalOrderBy = a})

-- | Project ID for this request.
aalProject :: Lens' AddressesAggregatedList Text
aalProject
  = lens _aalProject (\ s a -> s{_aalProject = a})

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
aalFilter :: Lens' AddressesAggregatedList (Maybe Text)
aalFilter
  = lens _aalFilter (\ s a -> s{_aalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
aalPageToken :: Lens' AddressesAggregatedList (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
aalMaxResults :: Lens' AddressesAggregatedList Word32
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})
      . _Coerce

instance GoogleRequest AddressesAggregatedList where
        type Rs AddressesAggregatedList =
             AddressAggregatedList
        type Scopes AddressesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AddressesAggregatedList'{..}
          = go _aalProject _aalOrderBy _aalFilter _aalPageToken
              (Just _aalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesAggregatedListResource)
                      mempty
