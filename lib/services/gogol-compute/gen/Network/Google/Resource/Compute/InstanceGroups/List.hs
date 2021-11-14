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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of zonal instance group resources contained within
-- the specified zone. For managed instance groups, use the
-- instanceGroupManagers or regionInstanceGroupManagers methods instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.list@.
module Network.Google.Resource.Compute.InstanceGroups.List
    (
    -- * REST Resource
      InstanceGroupsListResource

    -- * Creating a Request
    , instanceGroupsList
    , InstanceGroupsList

    -- * Request Lenses
    , iglReturnPartialSuccess
    , iglOrderBy
    , iglProject
    , iglZone
    , iglFilter
    , iglPageToken
    , iglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.list@ method which the
-- 'InstanceGroupsList' request conforms to.
type InstanceGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstanceGroupList

-- | Retrieves the list of zonal instance group resources contained within
-- the specified zone. For managed instance groups, use the
-- instanceGroupManagers or regionInstanceGroupManagers methods instead.
--
-- /See:/ 'instanceGroupsList' smart constructor.
data InstanceGroupsList =
  InstanceGroupsList'
    { _iglReturnPartialSuccess :: !(Maybe Bool)
    , _iglOrderBy :: !(Maybe Text)
    , _iglProject :: !Text
    , _iglZone :: !Text
    , _iglFilter :: !(Maybe Text)
    , _iglPageToken :: !(Maybe Text)
    , _iglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglReturnPartialSuccess'
--
-- * 'iglOrderBy'
--
-- * 'iglProject'
--
-- * 'iglZone'
--
-- * 'iglFilter'
--
-- * 'iglPageToken'
--
-- * 'iglMaxResults'
instanceGroupsList
    :: Text -- ^ 'iglProject'
    -> Text -- ^ 'iglZone'
    -> InstanceGroupsList
instanceGroupsList pIglProject_ pIglZone_ =
  InstanceGroupsList'
    { _iglReturnPartialSuccess = Nothing
    , _iglOrderBy = Nothing
    , _iglProject = pIglProject_
    , _iglZone = pIglZone_
    , _iglFilter = Nothing
    , _iglPageToken = Nothing
    , _iglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
iglReturnPartialSuccess :: Lens' InstanceGroupsList (Maybe Bool)
iglReturnPartialSuccess
  = lens _iglReturnPartialSuccess
      (\ s a -> s{_iglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
iglOrderBy :: Lens' InstanceGroupsList (Maybe Text)
iglOrderBy
  = lens _iglOrderBy (\ s a -> s{_iglOrderBy = a})

-- | Project ID for this request.
iglProject :: Lens' InstanceGroupsList Text
iglProject
  = lens _iglProject (\ s a -> s{_iglProject = a})

-- | The name of the zone where the instance group is located.
iglZone :: Lens' InstanceGroupsList Text
iglZone = lens _iglZone (\ s a -> s{_iglZone = a})

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
iglFilter :: Lens' InstanceGroupsList (Maybe Text)
iglFilter
  = lens _iglFilter (\ s a -> s{_iglFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
iglPageToken :: Lens' InstanceGroupsList (Maybe Text)
iglPageToken
  = lens _iglPageToken (\ s a -> s{_iglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
iglMaxResults :: Lens' InstanceGroupsList Word32
iglMaxResults
  = lens _iglMaxResults
      (\ s a -> s{_iglMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceGroupsList where
        type Rs InstanceGroupsList = InstanceGroupList
        type Scopes InstanceGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupsList'{..}
          = go _iglProject _iglZone _iglReturnPartialSuccess
              _iglOrderBy
              _iglFilter
              _iglPageToken
              (Just _iglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsListResource)
                      mempty
