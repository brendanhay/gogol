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
-- Module      : Network.Google.Resource.Compute.URLMaps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.list@.
module Network.Google.Resource.Compute.URLMaps.List
    (
    -- * REST Resource
      URLMapsListResource

    -- * Creating a Request
    , urlMapsList
    , URLMapsList

    -- * Request Lenses
    , umlReturnPartialSuccess
    , umlOrderBy
    , umlProject
    , umlFilter
    , umlPageToken
    , umlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.list@ method which the
-- 'URLMapsList' request conforms to.
type URLMapsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ 'urlMapsList' smart constructor.
data URLMapsList =
  URLMapsList'
    { _umlReturnPartialSuccess :: !(Maybe Bool)
    , _umlOrderBy :: !(Maybe Text)
    , _umlProject :: !Text
    , _umlFilter :: !(Maybe Text)
    , _umlPageToken :: !(Maybe Text)
    , _umlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLMapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlReturnPartialSuccess'
--
-- * 'umlOrderBy'
--
-- * 'umlProject'
--
-- * 'umlFilter'
--
-- * 'umlPageToken'
--
-- * 'umlMaxResults'
urlMapsList
    :: Text -- ^ 'umlProject'
    -> URLMapsList
urlMapsList pUmlProject_ =
  URLMapsList'
    { _umlReturnPartialSuccess = Nothing
    , _umlOrderBy = Nothing
    , _umlProject = pUmlProject_
    , _umlFilter = Nothing
    , _umlPageToken = Nothing
    , _umlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
umlReturnPartialSuccess :: Lens' URLMapsList (Maybe Bool)
umlReturnPartialSuccess
  = lens _umlReturnPartialSuccess
      (\ s a -> s{_umlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
umlOrderBy :: Lens' URLMapsList (Maybe Text)
umlOrderBy
  = lens _umlOrderBy (\ s a -> s{_umlOrderBy = a})

-- | Project ID for this request.
umlProject :: Lens' URLMapsList Text
umlProject
  = lens _umlProject (\ s a -> s{_umlProject = a})

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
umlFilter :: Lens' URLMapsList (Maybe Text)
umlFilter
  = lens _umlFilter (\ s a -> s{_umlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
umlPageToken :: Lens' URLMapsList (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
umlMaxResults :: Lens' URLMapsList Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})
      . _Coerce

instance GoogleRequest URLMapsList where
        type Rs URLMapsList = URLMapList
        type Scopes URLMapsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient URLMapsList'{..}
          = go _umlProject _umlReturnPartialSuccess _umlOrderBy
              _umlFilter
              _umlPageToken
              (Just _umlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsListResource)
                      mempty
