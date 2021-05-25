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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the instances in the managed instance group. Each instance
-- in the list has a currentAction, which indicates the action that the
-- managed instance group is performing on the instance. For example, if
-- the group is still creating an instance, the currentAction is CREATING.
-- If a previous action failed, the list displays the errors for that
-- failed action. The orderBy query parameter is not supported.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.listManagedInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
    (
    -- * REST Resource
      InstanceGroupManagersListManagedInstancesResource

    -- * Creating a Request
    , instanceGroupManagersListManagedInstances
    , InstanceGroupManagersListManagedInstances

    -- * Request Lenses
    , igmlmiReturnPartialSuccess
    , igmlmiOrderBy
    , igmlmiProject
    , igmlmiInstanceGroupManager
    , igmlmiZone
    , igmlmiFilter
    , igmlmiPageToken
    , igmlmiMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.listManagedInstances@ method which the
-- 'InstanceGroupManagersListManagedInstances' request conforms to.
type InstanceGroupManagersListManagedInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listManagedInstances" :>
                       QueryParam "returnPartialSuccess" Bool :>
                         QueryParam "orderBy" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON]
                                     InstanceGroupManagersListManagedInstancesResponse

-- | Lists all of the instances in the managed instance group. Each instance
-- in the list has a currentAction, which indicates the action that the
-- managed instance group is performing on the instance. For example, if
-- the group is still creating an instance, the currentAction is CREATING.
-- If a previous action failed, the list displays the errors for that
-- failed action. The orderBy query parameter is not supported.
--
-- /See:/ 'instanceGroupManagersListManagedInstances' smart constructor.
data InstanceGroupManagersListManagedInstances =
  InstanceGroupManagersListManagedInstances'
    { _igmlmiReturnPartialSuccess :: !(Maybe Bool)
    , _igmlmiOrderBy :: !(Maybe Text)
    , _igmlmiProject :: !Text
    , _igmlmiInstanceGroupManager :: !Text
    , _igmlmiZone :: !Text
    , _igmlmiFilter :: !(Maybe Text)
    , _igmlmiPageToken :: !(Maybe Text)
    , _igmlmiMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersListManagedInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlmiReturnPartialSuccess'
--
-- * 'igmlmiOrderBy'
--
-- * 'igmlmiProject'
--
-- * 'igmlmiInstanceGroupManager'
--
-- * 'igmlmiZone'
--
-- * 'igmlmiFilter'
--
-- * 'igmlmiPageToken'
--
-- * 'igmlmiMaxResults'
instanceGroupManagersListManagedInstances
    :: Text -- ^ 'igmlmiProject'
    -> Text -- ^ 'igmlmiInstanceGroupManager'
    -> Text -- ^ 'igmlmiZone'
    -> InstanceGroupManagersListManagedInstances
instanceGroupManagersListManagedInstances pIgmlmiProject_ pIgmlmiInstanceGroupManager_ pIgmlmiZone_ =
  InstanceGroupManagersListManagedInstances'
    { _igmlmiReturnPartialSuccess = Nothing
    , _igmlmiOrderBy = Nothing
    , _igmlmiProject = pIgmlmiProject_
    , _igmlmiInstanceGroupManager = pIgmlmiInstanceGroupManager_
    , _igmlmiZone = pIgmlmiZone_
    , _igmlmiFilter = Nothing
    , _igmlmiPageToken = Nothing
    , _igmlmiMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
igmlmiReturnPartialSuccess :: Lens' InstanceGroupManagersListManagedInstances (Maybe Bool)
igmlmiReturnPartialSuccess
  = lens _igmlmiReturnPartialSuccess
      (\ s a -> s{_igmlmiReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
igmlmiOrderBy :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiOrderBy
  = lens _igmlmiOrderBy
      (\ s a -> s{_igmlmiOrderBy = a})

-- | Project ID for this request.
igmlmiProject :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiProject
  = lens _igmlmiProject
      (\ s a -> s{_igmlmiProject = a})

-- | The name of the managed instance group.
igmlmiInstanceGroupManager :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiInstanceGroupManager
  = lens _igmlmiInstanceGroupManager
      (\ s a -> s{_igmlmiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmlmiZone :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiZone
  = lens _igmlmiZone (\ s a -> s{_igmlmiZone = a})

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
igmlmiFilter :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiFilter
  = lens _igmlmiFilter (\ s a -> s{_igmlmiFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
igmlmiPageToken :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiPageToken
  = lens _igmlmiPageToken
      (\ s a -> s{_igmlmiPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
igmlmiMaxResults :: Lens' InstanceGroupManagersListManagedInstances Word32
igmlmiMaxResults
  = lens _igmlmiMaxResults
      (\ s a -> s{_igmlmiMaxResults = a})
      . _Coerce

instance GoogleRequest
           InstanceGroupManagersListManagedInstances
         where
        type Rs InstanceGroupManagersListManagedInstances =
             InstanceGroupManagersListManagedInstancesResponse
        type Scopes InstanceGroupManagersListManagedInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstanceGroupManagersListManagedInstances'{..}
          = go _igmlmiProject _igmlmiZone
              _igmlmiInstanceGroupManager
              _igmlmiReturnPartialSuccess
              _igmlmiOrderBy
              _igmlmiFilter
              _igmlmiPageToken
              (Just _igmlmiMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersListManagedInstancesResource)
                      mempty
