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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of managed instance groups that are contained within
-- the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.list@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
    (
    -- * REST Resource
      RegionInstanceGroupManagersListResource

    -- * Creating a Request
    , regionInstanceGroupManagersList
    , RegionInstanceGroupManagersList

    -- * Request Lenses
    , rigmlReturnPartialSuccess
    , rigmlOrderBy
    , rigmlProject
    , rigmlFilter
    , rigmlRegion
    , rigmlPageToken
    , rigmlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.list@ method which the
-- 'RegionInstanceGroupManagersList' request conforms to.
type RegionInstanceGroupManagersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] RegionInstanceGroupManagerList

-- | Retrieves the list of managed instance groups that are contained within
-- the specified region.
--
-- /See:/ 'regionInstanceGroupManagersList' smart constructor.
data RegionInstanceGroupManagersList =
  RegionInstanceGroupManagersList'
    { _rigmlReturnPartialSuccess :: !(Maybe Bool)
    , _rigmlOrderBy :: !(Maybe Text)
    , _rigmlProject :: !Text
    , _rigmlFilter :: !(Maybe Text)
    , _rigmlRegion :: !Text
    , _rigmlPageToken :: !(Maybe Text)
    , _rigmlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlReturnPartialSuccess'
--
-- * 'rigmlOrderBy'
--
-- * 'rigmlProject'
--
-- * 'rigmlFilter'
--
-- * 'rigmlRegion'
--
-- * 'rigmlPageToken'
--
-- * 'rigmlMaxResults'
regionInstanceGroupManagersList
    :: Text -- ^ 'rigmlProject'
    -> Text -- ^ 'rigmlRegion'
    -> RegionInstanceGroupManagersList
regionInstanceGroupManagersList pRigmlProject_ pRigmlRegion_ =
  RegionInstanceGroupManagersList'
    { _rigmlReturnPartialSuccess = Nothing
    , _rigmlOrderBy = Nothing
    , _rigmlProject = pRigmlProject_
    , _rigmlFilter = Nothing
    , _rigmlRegion = pRigmlRegion_
    , _rigmlPageToken = Nothing
    , _rigmlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rigmlReturnPartialSuccess :: Lens' RegionInstanceGroupManagersList (Maybe Bool)
rigmlReturnPartialSuccess
  = lens _rigmlReturnPartialSuccess
      (\ s a -> s{_rigmlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rigmlOrderBy :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlOrderBy
  = lens _rigmlOrderBy (\ s a -> s{_rigmlOrderBy = a})

-- | Project ID for this request.
rigmlProject :: Lens' RegionInstanceGroupManagersList Text
rigmlProject
  = lens _rigmlProject (\ s a -> s{_rigmlProject = a})

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
rigmlFilter :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlFilter
  = lens _rigmlFilter (\ s a -> s{_rigmlFilter = a})

-- | Name of the region scoping this request.
rigmlRegion :: Lens' RegionInstanceGroupManagersList Text
rigmlRegion
  = lens _rigmlRegion (\ s a -> s{_rigmlRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rigmlPageToken :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlPageToken
  = lens _rigmlPageToken
      (\ s a -> s{_rigmlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rigmlMaxResults :: Lens' RegionInstanceGroupManagersList Word32
rigmlMaxResults
  = lens _rigmlMaxResults
      (\ s a -> s{_rigmlMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionInstanceGroupManagersList
         where
        type Rs RegionInstanceGroupManagersList =
             RegionInstanceGroupManagerList
        type Scopes RegionInstanceGroupManagersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupManagersList'{..}
          = go _rigmlProject _rigmlRegion
              _rigmlReturnPartialSuccess
              _rigmlOrderBy
              _rigmlFilter
              _rigmlPageToken
              (Just _rigmlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersListResource)
                      mempty
