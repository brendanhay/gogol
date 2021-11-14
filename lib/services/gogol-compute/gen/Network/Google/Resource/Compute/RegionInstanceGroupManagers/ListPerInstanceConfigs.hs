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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListPerInstanceConfigs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the per-instance configs defined for the managed instance
-- group. The orderBy query parameter is not supported.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.listPerInstanceConfigs@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListPerInstanceConfigs
    (
    -- * REST Resource
      RegionInstanceGroupManagersListPerInstanceConfigsResource

    -- * Creating a Request
    , regionInstanceGroupManagersListPerInstanceConfigs
    , RegionInstanceGroupManagersListPerInstanceConfigs

    -- * Request Lenses
    , rigmlpicReturnPartialSuccess
    , rigmlpicOrderBy
    , rigmlpicProject
    , rigmlpicInstanceGroupManager
    , rigmlpicFilter
    , rigmlpicRegion
    , rigmlpicPageToken
    , rigmlpicMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.listPerInstanceConfigs@ method which the
-- 'RegionInstanceGroupManagersListPerInstanceConfigs' request conforms to.
type RegionInstanceGroupManagersListPerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listPerInstanceConfigs" :>
                       QueryParam "returnPartialSuccess" Bool :>
                         QueryParam "orderBy" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON]
                                     RegionInstanceGroupManagersListInstanceConfigsResp

-- | Lists all of the per-instance configs defined for the managed instance
-- group. The orderBy query parameter is not supported.
--
-- /See:/ 'regionInstanceGroupManagersListPerInstanceConfigs' smart constructor.
data RegionInstanceGroupManagersListPerInstanceConfigs =
  RegionInstanceGroupManagersListPerInstanceConfigs'
    { _rigmlpicReturnPartialSuccess :: !(Maybe Bool)
    , _rigmlpicOrderBy :: !(Maybe Text)
    , _rigmlpicProject :: !Text
    , _rigmlpicInstanceGroupManager :: !Text
    , _rigmlpicFilter :: !(Maybe Text)
    , _rigmlpicRegion :: !Text
    , _rigmlpicPageToken :: !(Maybe Text)
    , _rigmlpicMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersListPerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlpicReturnPartialSuccess'
--
-- * 'rigmlpicOrderBy'
--
-- * 'rigmlpicProject'
--
-- * 'rigmlpicInstanceGroupManager'
--
-- * 'rigmlpicFilter'
--
-- * 'rigmlpicRegion'
--
-- * 'rigmlpicPageToken'
--
-- * 'rigmlpicMaxResults'
regionInstanceGroupManagersListPerInstanceConfigs
    :: Text -- ^ 'rigmlpicProject'
    -> Text -- ^ 'rigmlpicInstanceGroupManager'
    -> Text -- ^ 'rigmlpicRegion'
    -> RegionInstanceGroupManagersListPerInstanceConfigs
regionInstanceGroupManagersListPerInstanceConfigs pRigmlpicProject_ pRigmlpicInstanceGroupManager_ pRigmlpicRegion_ =
  RegionInstanceGroupManagersListPerInstanceConfigs'
    { _rigmlpicReturnPartialSuccess = Nothing
    , _rigmlpicOrderBy = Nothing
    , _rigmlpicProject = pRigmlpicProject_
    , _rigmlpicInstanceGroupManager = pRigmlpicInstanceGroupManager_
    , _rigmlpicFilter = Nothing
    , _rigmlpicRegion = pRigmlpicRegion_
    , _rigmlpicPageToken = Nothing
    , _rigmlpicMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rigmlpicReturnPartialSuccess :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs (Maybe Bool)
rigmlpicReturnPartialSuccess
  = lens _rigmlpicReturnPartialSuccess
      (\ s a -> s{_rigmlpicReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rigmlpicOrderBy :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs (Maybe Text)
rigmlpicOrderBy
  = lens _rigmlpicOrderBy
      (\ s a -> s{_rigmlpicOrderBy = a})

-- | Project ID for this request.
rigmlpicProject :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs Text
rigmlpicProject
  = lens _rigmlpicProject
      (\ s a -> s{_rigmlpicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
rigmlpicInstanceGroupManager :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs Text
rigmlpicInstanceGroupManager
  = lens _rigmlpicInstanceGroupManager
      (\ s a -> s{_rigmlpicInstanceGroupManager = a})

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
rigmlpicFilter :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs (Maybe Text)
rigmlpicFilter
  = lens _rigmlpicFilter
      (\ s a -> s{_rigmlpicFilter = a})

-- | Name of the region scoping this request, should conform to RFC1035.
rigmlpicRegion :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs Text
rigmlpicRegion
  = lens _rigmlpicRegion
      (\ s a -> s{_rigmlpicRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rigmlpicPageToken :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs (Maybe Text)
rigmlpicPageToken
  = lens _rigmlpicPageToken
      (\ s a -> s{_rigmlpicPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rigmlpicMaxResults :: Lens' RegionInstanceGroupManagersListPerInstanceConfigs Word32
rigmlpicMaxResults
  = lens _rigmlpicMaxResults
      (\ s a -> s{_rigmlpicMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionInstanceGroupManagersListPerInstanceConfigs
         where
        type Rs
               RegionInstanceGroupManagersListPerInstanceConfigs
             = RegionInstanceGroupManagersListInstanceConfigsResp
        type Scopes
               RegionInstanceGroupManagersListPerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          RegionInstanceGroupManagersListPerInstanceConfigs'{..}
          = go _rigmlpicProject _rigmlpicRegion
              _rigmlpicInstanceGroupManager
              _rigmlpicReturnPartialSuccess
              _rigmlpicOrderBy
              _rigmlpicFilter
              _rigmlpicPageToken
              (Just _rigmlpicMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersListPerInstanceConfigsResource)
                      mempty
