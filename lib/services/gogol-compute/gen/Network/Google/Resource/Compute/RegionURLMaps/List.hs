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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of UrlMap resources available to the specified
-- project in the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.list@.
module Network.Google.Resource.Compute.RegionURLMaps.List
    (
    -- * REST Resource
      RegionURLMapsListResource

    -- * Creating a Request
    , regionURLMapsList
    , RegionURLMapsList

    -- * Request Lenses
    , rumlReturnPartialSuccess
    , rumlOrderBy
    , rumlProject
    , rumlFilter
    , rumlRegion
    , rumlPageToken
    , rumlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.list@ method which the
-- 'RegionURLMapsList' request conforms to.
type RegionURLMapsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :> Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project in the specified region.
--
-- /See:/ 'regionURLMapsList' smart constructor.
data RegionURLMapsList =
  RegionURLMapsList'
    { _rumlReturnPartialSuccess :: !(Maybe Bool)
    , _rumlOrderBy :: !(Maybe Text)
    , _rumlProject :: !Text
    , _rumlFilter :: !(Maybe Text)
    , _rumlRegion :: !Text
    , _rumlPageToken :: !(Maybe Text)
    , _rumlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumlReturnPartialSuccess'
--
-- * 'rumlOrderBy'
--
-- * 'rumlProject'
--
-- * 'rumlFilter'
--
-- * 'rumlRegion'
--
-- * 'rumlPageToken'
--
-- * 'rumlMaxResults'
regionURLMapsList
    :: Text -- ^ 'rumlProject'
    -> Text -- ^ 'rumlRegion'
    -> RegionURLMapsList
regionURLMapsList pRumlProject_ pRumlRegion_ =
  RegionURLMapsList'
    { _rumlReturnPartialSuccess = Nothing
    , _rumlOrderBy = Nothing
    , _rumlProject = pRumlProject_
    , _rumlFilter = Nothing
    , _rumlRegion = pRumlRegion_
    , _rumlPageToken = Nothing
    , _rumlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rumlReturnPartialSuccess :: Lens' RegionURLMapsList (Maybe Bool)
rumlReturnPartialSuccess
  = lens _rumlReturnPartialSuccess
      (\ s a -> s{_rumlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rumlOrderBy :: Lens' RegionURLMapsList (Maybe Text)
rumlOrderBy
  = lens _rumlOrderBy (\ s a -> s{_rumlOrderBy = a})

-- | Project ID for this request.
rumlProject :: Lens' RegionURLMapsList Text
rumlProject
  = lens _rumlProject (\ s a -> s{_rumlProject = a})

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
rumlFilter :: Lens' RegionURLMapsList (Maybe Text)
rumlFilter
  = lens _rumlFilter (\ s a -> s{_rumlFilter = a})

-- | Name of the region scoping this request.
rumlRegion :: Lens' RegionURLMapsList Text
rumlRegion
  = lens _rumlRegion (\ s a -> s{_rumlRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rumlPageToken :: Lens' RegionURLMapsList (Maybe Text)
rumlPageToken
  = lens _rumlPageToken
      (\ s a -> s{_rumlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rumlMaxResults :: Lens' RegionURLMapsList Word32
rumlMaxResults
  = lens _rumlMaxResults
      (\ s a -> s{_rumlMaxResults = a})
      . _Coerce

instance GoogleRequest RegionURLMapsList where
        type Rs RegionURLMapsList = URLMapList
        type Scopes RegionURLMapsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionURLMapsList'{..}
          = go _rumlProject _rumlRegion
              _rumlReturnPartialSuccess
              _rumlOrderBy
              _rumlFilter
              _rumlPageToken
              (Just _rumlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsListResource)
                      mempty
