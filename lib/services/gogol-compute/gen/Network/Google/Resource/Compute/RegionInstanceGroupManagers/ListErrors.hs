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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListErrors
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all errors thrown by actions on instances for a given regional
-- managed instance group. The filter and orderBy query parameters are not
-- supported.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.listErrors@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListErrors
    (
    -- * REST Resource
      RegionInstanceGroupManagersListErrorsResource

    -- * Creating a Request
    , regionInstanceGroupManagersListErrors
    , RegionInstanceGroupManagersListErrors

    -- * Request Lenses
    , rigmleReturnPartialSuccess
    , rigmleOrderBy
    , rigmleProject
    , rigmleInstanceGroupManager
    , rigmleFilter
    , rigmleRegion
    , rigmlePageToken
    , rigmleMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.listErrors@ method which the
-- 'RegionInstanceGroupManagersListErrors' request conforms to.
type RegionInstanceGroupManagersListErrorsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listErrors" :>
                       QueryParam "returnPartialSuccess" Bool :>
                         QueryParam "orderBy" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     RegionInstanceGroupManagersListErrorsResponse

-- | Lists all errors thrown by actions on instances for a given regional
-- managed instance group. The filter and orderBy query parameters are not
-- supported.
--
-- /See:/ 'regionInstanceGroupManagersListErrors' smart constructor.
data RegionInstanceGroupManagersListErrors =
  RegionInstanceGroupManagersListErrors'
    { _rigmleReturnPartialSuccess :: !(Maybe Bool)
    , _rigmleOrderBy :: !(Maybe Text)
    , _rigmleProject :: !Text
    , _rigmleInstanceGroupManager :: !Text
    , _rigmleFilter :: !(Maybe Text)
    , _rigmleRegion :: !Text
    , _rigmlePageToken :: !(Maybe Text)
    , _rigmleMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersListErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmleReturnPartialSuccess'
--
-- * 'rigmleOrderBy'
--
-- * 'rigmleProject'
--
-- * 'rigmleInstanceGroupManager'
--
-- * 'rigmleFilter'
--
-- * 'rigmleRegion'
--
-- * 'rigmlePageToken'
--
-- * 'rigmleMaxResults'
regionInstanceGroupManagersListErrors
    :: Text -- ^ 'rigmleProject'
    -> Text -- ^ 'rigmleInstanceGroupManager'
    -> Text -- ^ 'rigmleRegion'
    -> RegionInstanceGroupManagersListErrors
regionInstanceGroupManagersListErrors pRigmleProject_ pRigmleInstanceGroupManager_ pRigmleRegion_ =
  RegionInstanceGroupManagersListErrors'
    { _rigmleReturnPartialSuccess = Nothing
    , _rigmleOrderBy = Nothing
    , _rigmleProject = pRigmleProject_
    , _rigmleInstanceGroupManager = pRigmleInstanceGroupManager_
    , _rigmleFilter = Nothing
    , _rigmleRegion = pRigmleRegion_
    , _rigmlePageToken = Nothing
    , _rigmleMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rigmleReturnPartialSuccess :: Lens' RegionInstanceGroupManagersListErrors (Maybe Bool)
rigmleReturnPartialSuccess
  = lens _rigmleReturnPartialSuccess
      (\ s a -> s{_rigmleReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rigmleOrderBy :: Lens' RegionInstanceGroupManagersListErrors (Maybe Text)
rigmleOrderBy
  = lens _rigmleOrderBy
      (\ s a -> s{_rigmleOrderBy = a})

-- | Project ID for this request.
rigmleProject :: Lens' RegionInstanceGroupManagersListErrors Text
rigmleProject
  = lens _rigmleProject
      (\ s a -> s{_rigmleProject = a})

-- | The name of the managed instance group. It must be a string that meets
-- the requirements in RFC1035, or an unsigned long integer: must match
-- regexp pattern: (?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?)|[1-9][0-9]{0,19}.
rigmleInstanceGroupManager :: Lens' RegionInstanceGroupManagersListErrors Text
rigmleInstanceGroupManager
  = lens _rigmleInstanceGroupManager
      (\ s a -> s{_rigmleInstanceGroupManager = a})

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
rigmleFilter :: Lens' RegionInstanceGroupManagersListErrors (Maybe Text)
rigmleFilter
  = lens _rigmleFilter (\ s a -> s{_rigmleFilter = a})

-- | Name of the region scoping this request. This should conform to RFC1035.
rigmleRegion :: Lens' RegionInstanceGroupManagersListErrors Text
rigmleRegion
  = lens _rigmleRegion (\ s a -> s{_rigmleRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rigmlePageToken :: Lens' RegionInstanceGroupManagersListErrors (Maybe Text)
rigmlePageToken
  = lens _rigmlePageToken
      (\ s a -> s{_rigmlePageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rigmleMaxResults :: Lens' RegionInstanceGroupManagersListErrors Word32
rigmleMaxResults
  = lens _rigmleMaxResults
      (\ s a -> s{_rigmleMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionInstanceGroupManagersListErrors
         where
        type Rs RegionInstanceGroupManagersListErrors =
             RegionInstanceGroupManagersListErrorsResponse
        type Scopes RegionInstanceGroupManagersListErrors =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          RegionInstanceGroupManagersListErrors'{..}
          = go _rigmleProject _rigmleRegion
              _rigmleInstanceGroupManager
              _rigmleReturnPartialSuccess
              _rigmleOrderBy
              _rigmleFilter
              _rigmlePageToken
              (Just _rigmleMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersListErrorsResource)
                      mempty
