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
-- Module      : Network.Google.Resource.Compute.InterconnectLocations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of interconnect locations available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectLocations.list@.
module Network.Google.Resource.Compute.InterconnectLocations.List
    (
    -- * REST Resource
      InterconnectLocationsListResource

    -- * Creating a Request
    , interconnectLocationsList
    , InterconnectLocationsList

    -- * Request Lenses
    , illReturnPartialSuccess
    , illOrderBy
    , illProject
    , illFilter
    , illPageToken
    , illMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnectLocations.list@ method which the
-- 'InterconnectLocationsList' request conforms to.
type InterconnectLocationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnectLocations" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InterconnectLocationList

-- | Retrieves the list of interconnect locations available to the specified
-- project.
--
-- /See:/ 'interconnectLocationsList' smart constructor.
data InterconnectLocationsList =
  InterconnectLocationsList'
    { _illReturnPartialSuccess :: !(Maybe Bool)
    , _illOrderBy :: !(Maybe Text)
    , _illProject :: !Text
    , _illFilter :: !(Maybe Text)
    , _illPageToken :: !(Maybe Text)
    , _illMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illReturnPartialSuccess'
--
-- * 'illOrderBy'
--
-- * 'illProject'
--
-- * 'illFilter'
--
-- * 'illPageToken'
--
-- * 'illMaxResults'
interconnectLocationsList
    :: Text -- ^ 'illProject'
    -> InterconnectLocationsList
interconnectLocationsList pIllProject_ =
  InterconnectLocationsList'
    { _illReturnPartialSuccess = Nothing
    , _illOrderBy = Nothing
    , _illProject = pIllProject_
    , _illFilter = Nothing
    , _illPageToken = Nothing
    , _illMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
illReturnPartialSuccess :: Lens' InterconnectLocationsList (Maybe Bool)
illReturnPartialSuccess
  = lens _illReturnPartialSuccess
      (\ s a -> s{_illReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
illOrderBy :: Lens' InterconnectLocationsList (Maybe Text)
illOrderBy
  = lens _illOrderBy (\ s a -> s{_illOrderBy = a})

-- | Project ID for this request.
illProject :: Lens' InterconnectLocationsList Text
illProject
  = lens _illProject (\ s a -> s{_illProject = a})

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
illFilter :: Lens' InterconnectLocationsList (Maybe Text)
illFilter
  = lens _illFilter (\ s a -> s{_illFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
illPageToken :: Lens' InterconnectLocationsList (Maybe Text)
illPageToken
  = lens _illPageToken (\ s a -> s{_illPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
illMaxResults :: Lens' InterconnectLocationsList Word32
illMaxResults
  = lens _illMaxResults
      (\ s a -> s{_illMaxResults = a})
      . _Coerce

instance GoogleRequest InterconnectLocationsList
         where
        type Rs InterconnectLocationsList =
             InterconnectLocationList
        type Scopes InterconnectLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectLocationsList'{..}
          = go _illProject _illReturnPartialSuccess _illOrderBy
              _illFilter
              _illPageToken
              (Just _illMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectLocationsListResource)
                      mempty
