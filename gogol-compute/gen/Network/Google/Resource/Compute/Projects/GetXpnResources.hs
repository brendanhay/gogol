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
-- Module      : Network.Google.Resource.Compute.Projects.GetXpnResources
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets service resources (a.k.a service project) associated with this host
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.getXpnResources@.
module Network.Google.Resource.Compute.Projects.GetXpnResources
    (
    -- * REST Resource
      ProjectsGetXpnResourcesResource

    -- * Creating a Request
    , projectsGetXpnResources'
    , ProjectsGetXpnResources'

    -- * Request Lenses
    , pgxrProject
    , pgxrOrderBy
    , pgxrFilter
    , pgxrPageToken
    , pgxrMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.getXpnResources@ method which the
-- 'ProjectsGetXpnResources'' request conforms to.
type ProjectsGetXpnResourcesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "getXpnResources" :>
               QueryParam "order_by" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ProjectsGetXpnResources

-- | Gets service resources (a.k.a service project) associated with this host
-- project.
--
-- /See:/ 'projectsGetXpnResources'' smart constructor.
data ProjectsGetXpnResources' = ProjectsGetXpnResources''
    { _pgxrProject    :: !Text
    , _pgxrOrderBy    :: !(Maybe Text)
    , _pgxrFilter     :: !(Maybe Text)
    , _pgxrPageToken  :: !(Maybe Text)
    , _pgxrMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetXpnResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgxrProject'
--
-- * 'pgxrOrderBy'
--
-- * 'pgxrFilter'
--
-- * 'pgxrPageToken'
--
-- * 'pgxrMaxResults'
projectsGetXpnResources'
    :: Text -- ^ 'pgxrProject'
    -> ProjectsGetXpnResources'
projectsGetXpnResources' pPgxrProject_ =
    ProjectsGetXpnResources''
    { _pgxrProject = pPgxrProject_
    , _pgxrOrderBy = Nothing
    , _pgxrFilter = Nothing
    , _pgxrPageToken = Nothing
    , _pgxrMaxResults = 500
    }

-- | Project ID for this request.
pgxrProject :: Lens' ProjectsGetXpnResources' Text
pgxrProject
  = lens _pgxrProject (\ s a -> s{_pgxrProject = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
pgxrOrderBy :: Lens' ProjectsGetXpnResources' (Maybe Text)
pgxrOrderBy
  = lens _pgxrOrderBy (\ s a -> s{_pgxrOrderBy = a})

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
pgxrFilter :: Lens' ProjectsGetXpnResources' (Maybe Text)
pgxrFilter
  = lens _pgxrFilter (\ s a -> s{_pgxrFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
pgxrPageToken :: Lens' ProjectsGetXpnResources' (Maybe Text)
pgxrPageToken
  = lens _pgxrPageToken
      (\ s a -> s{_pgxrPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
pgxrMaxResults :: Lens' ProjectsGetXpnResources' Word32
pgxrMaxResults
  = lens _pgxrMaxResults
      (\ s a -> s{_pgxrMaxResults = a})
      . _Coerce

instance GoogleRequest ProjectsGetXpnResources' where
        type Rs ProjectsGetXpnResources' =
             ProjectsGetXpnResources
        type Scopes ProjectsGetXpnResources' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsGetXpnResources''{..}
          = go _pgxrProject _pgxrOrderBy _pgxrFilter
              _pgxrPageToken
              (Just _pgxrMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetXpnResourcesResource)
                      mempty
