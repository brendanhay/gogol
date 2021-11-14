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
-- Module      : Network.Google.Resource.Compute.Zones.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Zone resources available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.zones.list@.
module Network.Google.Resource.Compute.Zones.List
    (
    -- * REST Resource
      ZonesListResource

    -- * Creating a Request
    , zonesList
    , ZonesList

    -- * Request Lenses
    , zlReturnPartialSuccess
    , zlOrderBy
    , zlProject
    , zlFilter
    , zlPageToken
    , zlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.zones.list@ method which the
-- 'ZonesList' request conforms to.
type ZonesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               QueryParam "returnPartialSuccess" Bool :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ZoneList

-- | Retrieves the list of Zone resources available to the specified project.
--
-- /See:/ 'zonesList' smart constructor.
data ZonesList =
  ZonesList'
    { _zlReturnPartialSuccess :: !(Maybe Bool)
    , _zlOrderBy :: !(Maybe Text)
    , _zlProject :: !Text
    , _zlFilter :: !(Maybe Text)
    , _zlPageToken :: !(Maybe Text)
    , _zlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZonesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlReturnPartialSuccess'
--
-- * 'zlOrderBy'
--
-- * 'zlProject'
--
-- * 'zlFilter'
--
-- * 'zlPageToken'
--
-- * 'zlMaxResults'
zonesList
    :: Text -- ^ 'zlProject'
    -> ZonesList
zonesList pZlProject_ =
  ZonesList'
    { _zlReturnPartialSuccess = Nothing
    , _zlOrderBy = Nothing
    , _zlProject = pZlProject_
    , _zlFilter = Nothing
    , _zlPageToken = Nothing
    , _zlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
zlReturnPartialSuccess :: Lens' ZonesList (Maybe Bool)
zlReturnPartialSuccess
  = lens _zlReturnPartialSuccess
      (\ s a -> s{_zlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
zlOrderBy :: Lens' ZonesList (Maybe Text)
zlOrderBy
  = lens _zlOrderBy (\ s a -> s{_zlOrderBy = a})

-- | Project ID for this request.
zlProject :: Lens' ZonesList Text
zlProject
  = lens _zlProject (\ s a -> s{_zlProject = a})

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
zlFilter :: Lens' ZonesList (Maybe Text)
zlFilter = lens _zlFilter (\ s a -> s{_zlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
zlPageToken :: Lens' ZonesList (Maybe Text)
zlPageToken
  = lens _zlPageToken (\ s a -> s{_zlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
zlMaxResults :: Lens' ZonesList Word32
zlMaxResults
  = lens _zlMaxResults (\ s a -> s{_zlMaxResults = a})
      . _Coerce

instance GoogleRequest ZonesList where
        type Rs ZonesList = ZoneList
        type Scopes ZonesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ZonesList'{..}
          = go _zlProject _zlReturnPartialSuccess _zlOrderBy
              _zlFilter
              _zlPageToken
              (Just _zlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ZonesListResource)
                      mempty
