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
-- Module      : Network.Google.Resource.Compute.HealthChecks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.list@.
module Network.Google.Resource.Compute.HealthChecks.List
    (
    -- * REST Resource
      HealthChecksListResource

    -- * Creating a Request
    , healthChecksList
    , HealthChecksList

    -- * Request Lenses
    , hclOrderBy
    , hclProject
    , hclFilter
    , hclPageToken
    , hclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.list@ method which the
-- 'HealthChecksList' request conforms to.
type HealthChecksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HealthCheckList

-- | Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ 'healthChecksList' smart constructor.
data HealthChecksList = HealthChecksList'
    { _hclOrderBy    :: !(Maybe Text)
    , _hclProject    :: !Text
    , _hclFilter     :: !(Maybe Text)
    , _hclPageToken  :: !(Maybe Text)
    , _hclMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hclOrderBy'
--
-- * 'hclProject'
--
-- * 'hclFilter'
--
-- * 'hclPageToken'
--
-- * 'hclMaxResults'
healthChecksList
    :: Text -- ^ 'hclProject'
    -> HealthChecksList
healthChecksList pHclProject_ =
    HealthChecksList'
    { _hclOrderBy = Nothing
    , _hclProject = pHclProject_
    , _hclFilter = Nothing
    , _hclPageToken = Nothing
    , _hclMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
hclOrderBy :: Lens' HealthChecksList (Maybe Text)
hclOrderBy
  = lens _hclOrderBy (\ s a -> s{_hclOrderBy = a})

-- | Project ID for this request.
hclProject :: Lens' HealthChecksList Text
hclProject
  = lens _hclProject (\ s a -> s{_hclProject = a})

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
hclFilter :: Lens' HealthChecksList (Maybe Text)
hclFilter
  = lens _hclFilter (\ s a -> s{_hclFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
hclPageToken :: Lens' HealthChecksList (Maybe Text)
hclPageToken
  = lens _hclPageToken (\ s a -> s{_hclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
hclMaxResults :: Lens' HealthChecksList Word32
hclMaxResults
  = lens _hclMaxResults
      (\ s a -> s{_hclMaxResults = a})
      . _Coerce

instance GoogleRequest HealthChecksList where
        type Rs HealthChecksList = HealthCheckList
        type Scopes HealthChecksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HealthChecksList'{..}
          = go _hclProject _hclOrderBy _hclFilter _hclPageToken
              (Just _hclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksListResource)
                      mempty
