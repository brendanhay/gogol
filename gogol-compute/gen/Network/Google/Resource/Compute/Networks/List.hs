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
-- Module      : Network.Google.Resource.Compute.Networks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of networks available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.list@.
module Network.Google.Resource.Compute.Networks.List
    (
    -- * REST Resource
      NetworksListResource

    -- * Creating a Request
    , networksList
    , NetworksList

    -- * Request Lenses
    , nlReturnPartialSuccess
    , nlOrderBy
    , nlProject
    , nlFilter
    , nlPageToken
    , nlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networks.list@ method which the
-- 'NetworksList' request conforms to.
type NetworksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] NetworkList

-- | Retrieves the list of networks available to the specified project.
--
-- /See:/ 'networksList' smart constructor.
data NetworksList =
  NetworksList'
    { _nlReturnPartialSuccess :: !(Maybe Bool)
    , _nlOrderBy :: !(Maybe Text)
    , _nlProject :: !Text
    , _nlFilter :: !(Maybe Text)
    , _nlPageToken :: !(Maybe Text)
    , _nlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlReturnPartialSuccess'
--
-- * 'nlOrderBy'
--
-- * 'nlProject'
--
-- * 'nlFilter'
--
-- * 'nlPageToken'
--
-- * 'nlMaxResults'
networksList
    :: Text -- ^ 'nlProject'
    -> NetworksList
networksList pNlProject_ =
  NetworksList'
    { _nlReturnPartialSuccess = Nothing
    , _nlOrderBy = Nothing
    , _nlProject = pNlProject_
    , _nlFilter = Nothing
    , _nlPageToken = Nothing
    , _nlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
nlReturnPartialSuccess :: Lens' NetworksList (Maybe Bool)
nlReturnPartialSuccess
  = lens _nlReturnPartialSuccess
      (\ s a -> s{_nlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
nlOrderBy :: Lens' NetworksList (Maybe Text)
nlOrderBy
  = lens _nlOrderBy (\ s a -> s{_nlOrderBy = a})

-- | Project ID for this request.
nlProject :: Lens' NetworksList Text
nlProject
  = lens _nlProject (\ s a -> s{_nlProject = a})

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
nlFilter :: Lens' NetworksList (Maybe Text)
nlFilter = lens _nlFilter (\ s a -> s{_nlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
nlPageToken :: Lens' NetworksList (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
nlMaxResults :: Lens' NetworksList Word32
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})
      . _Coerce

instance GoogleRequest NetworksList where
        type Rs NetworksList = NetworkList
        type Scopes NetworksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworksList'{..}
          = go _nlProject _nlReturnPartialSuccess _nlOrderBy
              _nlFilter
              _nlPageToken
              (Just _nlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksListResource)
                      mempty
