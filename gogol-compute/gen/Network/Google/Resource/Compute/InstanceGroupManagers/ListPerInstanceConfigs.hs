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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ListPerInstanceConfigs
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the per-instance configs defined for the managed instance
-- group. The orderBy query parameter is not supported.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.listPerInstanceConfigs@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ListPerInstanceConfigs
    (
    -- * REST Resource
      InstanceGroupManagersListPerInstanceConfigsResource

    -- * Creating a Request
    , instanceGroupManagersListPerInstanceConfigs
    , InstanceGroupManagersListPerInstanceConfigs

    -- * Request Lenses
    , igmlpicReturnPartialSuccess
    , igmlpicOrderBy
    , igmlpicProject
    , igmlpicInstanceGroupManager
    , igmlpicZone
    , igmlpicFilter
    , igmlpicPageToken
    , igmlpicMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.listPerInstanceConfigs@ method which the
-- 'InstanceGroupManagersListPerInstanceConfigs' request conforms to.
type InstanceGroupManagersListPerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
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
                                     InstanceGroupManagersListPerInstanceConfigsResp

-- | Lists all of the per-instance configs defined for the managed instance
-- group. The orderBy query parameter is not supported.
--
-- /See:/ 'instanceGroupManagersListPerInstanceConfigs' smart constructor.
data InstanceGroupManagersListPerInstanceConfigs =
  InstanceGroupManagersListPerInstanceConfigs'
    { _igmlpicReturnPartialSuccess :: !(Maybe Bool)
    , _igmlpicOrderBy :: !(Maybe Text)
    , _igmlpicProject :: !Text
    , _igmlpicInstanceGroupManager :: !Text
    , _igmlpicZone :: !Text
    , _igmlpicFilter :: !(Maybe Text)
    , _igmlpicPageToken :: !(Maybe Text)
    , _igmlpicMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersListPerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlpicReturnPartialSuccess'
--
-- * 'igmlpicOrderBy'
--
-- * 'igmlpicProject'
--
-- * 'igmlpicInstanceGroupManager'
--
-- * 'igmlpicZone'
--
-- * 'igmlpicFilter'
--
-- * 'igmlpicPageToken'
--
-- * 'igmlpicMaxResults'
instanceGroupManagersListPerInstanceConfigs
    :: Text -- ^ 'igmlpicProject'
    -> Text -- ^ 'igmlpicInstanceGroupManager'
    -> Text -- ^ 'igmlpicZone'
    -> InstanceGroupManagersListPerInstanceConfigs
instanceGroupManagersListPerInstanceConfigs pIgmlpicProject_ pIgmlpicInstanceGroupManager_ pIgmlpicZone_ =
  InstanceGroupManagersListPerInstanceConfigs'
    { _igmlpicReturnPartialSuccess = Nothing
    , _igmlpicOrderBy = Nothing
    , _igmlpicProject = pIgmlpicProject_
    , _igmlpicInstanceGroupManager = pIgmlpicInstanceGroupManager_
    , _igmlpicZone = pIgmlpicZone_
    , _igmlpicFilter = Nothing
    , _igmlpicPageToken = Nothing
    , _igmlpicMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
igmlpicReturnPartialSuccess :: Lens' InstanceGroupManagersListPerInstanceConfigs (Maybe Bool)
igmlpicReturnPartialSuccess
  = lens _igmlpicReturnPartialSuccess
      (\ s a -> s{_igmlpicReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
igmlpicOrderBy :: Lens' InstanceGroupManagersListPerInstanceConfigs (Maybe Text)
igmlpicOrderBy
  = lens _igmlpicOrderBy
      (\ s a -> s{_igmlpicOrderBy = a})

-- | Project ID for this request.
igmlpicProject :: Lens' InstanceGroupManagersListPerInstanceConfigs Text
igmlpicProject
  = lens _igmlpicProject
      (\ s a -> s{_igmlpicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
igmlpicInstanceGroupManager :: Lens' InstanceGroupManagersListPerInstanceConfigs Text
igmlpicInstanceGroupManager
  = lens _igmlpicInstanceGroupManager
      (\ s a -> s{_igmlpicInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmlpicZone :: Lens' InstanceGroupManagersListPerInstanceConfigs Text
igmlpicZone
  = lens _igmlpicZone (\ s a -> s{_igmlpicZone = a})

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
igmlpicFilter :: Lens' InstanceGroupManagersListPerInstanceConfigs (Maybe Text)
igmlpicFilter
  = lens _igmlpicFilter
      (\ s a -> s{_igmlpicFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
igmlpicPageToken :: Lens' InstanceGroupManagersListPerInstanceConfigs (Maybe Text)
igmlpicPageToken
  = lens _igmlpicPageToken
      (\ s a -> s{_igmlpicPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
igmlpicMaxResults :: Lens' InstanceGroupManagersListPerInstanceConfigs Word32
igmlpicMaxResults
  = lens _igmlpicMaxResults
      (\ s a -> s{_igmlpicMaxResults = a})
      . _Coerce

instance GoogleRequest
           InstanceGroupManagersListPerInstanceConfigs
         where
        type Rs InstanceGroupManagersListPerInstanceConfigs =
             InstanceGroupManagersListPerInstanceConfigsResp
        type Scopes
               InstanceGroupManagersListPerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstanceGroupManagersListPerInstanceConfigs'{..}
          = go _igmlpicProject _igmlpicZone
              _igmlpicInstanceGroupManager
              _igmlpicReturnPartialSuccess
              _igmlpicOrderBy
              _igmlpicFilter
              _igmlpicPageToken
              (Just _igmlpicMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersListPerInstanceConfigsResource)
                      mempty
