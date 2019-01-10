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
-- Module      : Network.Google.Resource.Compute.Regions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regions.list@.
module Network.Google.Resource.Compute.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList
    , RegionsList

    -- * Request Lenses
    , regOrderBy
    , regProject
    , regFilter
    , regPageToken
    , regMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regions.list@ method which the
-- 'RegionsList' request conforms to.
type RegionsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               QueryParam "orderBy" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] RegionList

-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ 'regionsList' smart constructor.
data RegionsList = RegionsList'
    { _regOrderBy    :: !(Maybe Text)
    , _regProject    :: !Text
    , _regFilter     :: !(Maybe Text)
    , _regPageToken  :: !(Maybe Text)
    , _regMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regOrderBy'
--
-- * 'regProject'
--
-- * 'regFilter'
--
-- * 'regPageToken'
--
-- * 'regMaxResults'
regionsList
    :: Text -- ^ 'regProject'
    -> RegionsList
regionsList pRegProject_ =
    RegionsList'
    { _regOrderBy = Nothing
    , _regProject = pRegProject_
    , _regFilter = Nothing
    , _regPageToken = Nothing
    , _regMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
regOrderBy :: Lens' RegionsList (Maybe Text)
regOrderBy
  = lens _regOrderBy (\ s a -> s{_regOrderBy = a})

-- | Project ID for this request.
regProject :: Lens' RegionsList Text
regProject
  = lens _regProject (\ s a -> s{_regProject = a})

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
regFilter :: Lens' RegionsList (Maybe Text)
regFilter
  = lens _regFilter (\ s a -> s{_regFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
regPageToken :: Lens' RegionsList (Maybe Text)
regPageToken
  = lens _regPageToken (\ s a -> s{_regPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
regMaxResults :: Lens' RegionsList Word32
regMaxResults
  = lens _regMaxResults
      (\ s a -> s{_regMaxResults = a})
      . _Coerce

instance GoogleRequest RegionsList where
        type Rs RegionsList = RegionList
        type Scopes RegionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionsList'{..}
          = go _regProject _regOrderBy _regFilter _regPageToken
              (Just _regMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
