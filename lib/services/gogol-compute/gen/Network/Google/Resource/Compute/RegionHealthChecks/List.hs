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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.list@.
module Network.Google.Resource.Compute.RegionHealthChecks.List
    (
    -- * REST Resource
      RegionHealthChecksListResource

    -- * Creating a Request
    , regionHealthChecksList
    , RegionHealthChecksList

    -- * Request Lenses
    , rhclReturnPartialSuccess
    , rhclOrderBy
    , rhclProject
    , rhclFilter
    , rhclRegion
    , rhclPageToken
    , rhclMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.list@ method which the
-- 'RegionHealthChecksList' request conforms to.
type RegionHealthChecksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthChecks" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] HealthCheckList

-- | Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ 'regionHealthChecksList' smart constructor.
data RegionHealthChecksList =
  RegionHealthChecksList'
    { _rhclReturnPartialSuccess :: !(Maybe Bool)
    , _rhclOrderBy :: !(Maybe Text)
    , _rhclProject :: !Text
    , _rhclFilter :: !(Maybe Text)
    , _rhclRegion :: !Text
    , _rhclPageToken :: !(Maybe Text)
    , _rhclMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhclReturnPartialSuccess'
--
-- * 'rhclOrderBy'
--
-- * 'rhclProject'
--
-- * 'rhclFilter'
--
-- * 'rhclRegion'
--
-- * 'rhclPageToken'
--
-- * 'rhclMaxResults'
regionHealthChecksList
    :: Text -- ^ 'rhclProject'
    -> Text -- ^ 'rhclRegion'
    -> RegionHealthChecksList
regionHealthChecksList pRhclProject_ pRhclRegion_ =
  RegionHealthChecksList'
    { _rhclReturnPartialSuccess = Nothing
    , _rhclOrderBy = Nothing
    , _rhclProject = pRhclProject_
    , _rhclFilter = Nothing
    , _rhclRegion = pRhclRegion_
    , _rhclPageToken = Nothing
    , _rhclMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rhclReturnPartialSuccess :: Lens' RegionHealthChecksList (Maybe Bool)
rhclReturnPartialSuccess
  = lens _rhclReturnPartialSuccess
      (\ s a -> s{_rhclReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rhclOrderBy :: Lens' RegionHealthChecksList (Maybe Text)
rhclOrderBy
  = lens _rhclOrderBy (\ s a -> s{_rhclOrderBy = a})

-- | Project ID for this request.
rhclProject :: Lens' RegionHealthChecksList Text
rhclProject
  = lens _rhclProject (\ s a -> s{_rhclProject = a})

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
rhclFilter :: Lens' RegionHealthChecksList (Maybe Text)
rhclFilter
  = lens _rhclFilter (\ s a -> s{_rhclFilter = a})

-- | Name of the region scoping this request.
rhclRegion :: Lens' RegionHealthChecksList Text
rhclRegion
  = lens _rhclRegion (\ s a -> s{_rhclRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rhclPageToken :: Lens' RegionHealthChecksList (Maybe Text)
rhclPageToken
  = lens _rhclPageToken
      (\ s a -> s{_rhclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rhclMaxResults :: Lens' RegionHealthChecksList Word32
rhclMaxResults
  = lens _rhclMaxResults
      (\ s a -> s{_rhclMaxResults = a})
      . _Coerce

instance GoogleRequest RegionHealthChecksList where
        type Rs RegionHealthChecksList = HealthCheckList
        type Scopes RegionHealthChecksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionHealthChecksList'{..}
          = go _rhclProject _rhclRegion
              _rhclReturnPartialSuccess
              _rhclOrderBy
              _rhclFilter
              _rhclPageToken
              (Just _rhclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksListResource)
                      mempty
