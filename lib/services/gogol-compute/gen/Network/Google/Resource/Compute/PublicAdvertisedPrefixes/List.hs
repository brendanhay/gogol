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
-- Module      : Network.Google.Resource.Compute.PublicAdvertisedPrefixes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the PublicAdvertisedPrefixes for a project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.list@.
module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.List
    (
    -- * REST Resource
      PublicAdvertisedPrefixesListResource

    -- * Creating a Request
    , publicAdvertisedPrefixesList
    , PublicAdvertisedPrefixesList

    -- * Request Lenses
    , paplReturnPartialSuccess
    , paplOrderBy
    , paplProject
    , paplFilter
    , paplPageToken
    , paplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicAdvertisedPrefixes.list@ method which the
-- 'PublicAdvertisedPrefixesList' request conforms to.
type PublicAdvertisedPrefixesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicAdvertisedPrefixes" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PublicAdvertisedPrefixList

-- | Lists the PublicAdvertisedPrefixes for a project.
--
-- /See:/ 'publicAdvertisedPrefixesList' smart constructor.
data PublicAdvertisedPrefixesList =
  PublicAdvertisedPrefixesList'
    { _paplReturnPartialSuccess :: !(Maybe Bool)
    , _paplOrderBy :: !(Maybe Text)
    , _paplProject :: !Text
    , _paplFilter :: !(Maybe Text)
    , _paplPageToken :: !(Maybe Text)
    , _paplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicAdvertisedPrefixesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paplReturnPartialSuccess'
--
-- * 'paplOrderBy'
--
-- * 'paplProject'
--
-- * 'paplFilter'
--
-- * 'paplPageToken'
--
-- * 'paplMaxResults'
publicAdvertisedPrefixesList
    :: Text -- ^ 'paplProject'
    -> PublicAdvertisedPrefixesList
publicAdvertisedPrefixesList pPaplProject_ =
  PublicAdvertisedPrefixesList'
    { _paplReturnPartialSuccess = Nothing
    , _paplOrderBy = Nothing
    , _paplProject = pPaplProject_
    , _paplFilter = Nothing
    , _paplPageToken = Nothing
    , _paplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
paplReturnPartialSuccess :: Lens' PublicAdvertisedPrefixesList (Maybe Bool)
paplReturnPartialSuccess
  = lens _paplReturnPartialSuccess
      (\ s a -> s{_paplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
paplOrderBy :: Lens' PublicAdvertisedPrefixesList (Maybe Text)
paplOrderBy
  = lens _paplOrderBy (\ s a -> s{_paplOrderBy = a})

-- | Project ID for this request.
paplProject :: Lens' PublicAdvertisedPrefixesList Text
paplProject
  = lens _paplProject (\ s a -> s{_paplProject = a})

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
paplFilter :: Lens' PublicAdvertisedPrefixesList (Maybe Text)
paplFilter
  = lens _paplFilter (\ s a -> s{_paplFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
paplPageToken :: Lens' PublicAdvertisedPrefixesList (Maybe Text)
paplPageToken
  = lens _paplPageToken
      (\ s a -> s{_paplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
paplMaxResults :: Lens' PublicAdvertisedPrefixesList Word32
paplMaxResults
  = lens _paplMaxResults
      (\ s a -> s{_paplMaxResults = a})
      . _Coerce

instance GoogleRequest PublicAdvertisedPrefixesList
         where
        type Rs PublicAdvertisedPrefixesList =
             PublicAdvertisedPrefixList
        type Scopes PublicAdvertisedPrefixesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PublicAdvertisedPrefixesList'{..}
          = go _paplProject _paplReturnPartialSuccess
              _paplOrderBy
              _paplFilter
              _paplPageToken
              (Just _paplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PublicAdvertisedPrefixesListResource)
                      mempty
