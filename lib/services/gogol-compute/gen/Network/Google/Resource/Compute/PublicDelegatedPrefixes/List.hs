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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the PublicDelegatedPrefixes for a project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.list@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.List
    (
    -- * REST Resource
      PublicDelegatedPrefixesListResource

    -- * Creating a Request
    , publicDelegatedPrefixesList
    , PublicDelegatedPrefixesList

    -- * Request Lenses
    , pdplReturnPartialSuccess
    , pdplOrderBy
    , pdplProject
    , pdplFilter
    , pdplRegion
    , pdplPageToken
    , pdplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.list@ method which the
-- 'PublicDelegatedPrefixesList' request conforms to.
type PublicDelegatedPrefixesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "publicDelegatedPrefixes" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PublicDelegatedPrefixList

-- | Lists the PublicDelegatedPrefixes for a project in the given region.
--
-- /See:/ 'publicDelegatedPrefixesList' smart constructor.
data PublicDelegatedPrefixesList =
  PublicDelegatedPrefixesList'
    { _pdplReturnPartialSuccess :: !(Maybe Bool)
    , _pdplOrderBy :: !(Maybe Text)
    , _pdplProject :: !Text
    , _pdplFilter :: !(Maybe Text)
    , _pdplRegion :: !Text
    , _pdplPageToken :: !(Maybe Text)
    , _pdplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdplReturnPartialSuccess'
--
-- * 'pdplOrderBy'
--
-- * 'pdplProject'
--
-- * 'pdplFilter'
--
-- * 'pdplRegion'
--
-- * 'pdplPageToken'
--
-- * 'pdplMaxResults'
publicDelegatedPrefixesList
    :: Text -- ^ 'pdplProject'
    -> Text -- ^ 'pdplRegion'
    -> PublicDelegatedPrefixesList
publicDelegatedPrefixesList pPdplProject_ pPdplRegion_ =
  PublicDelegatedPrefixesList'
    { _pdplReturnPartialSuccess = Nothing
    , _pdplOrderBy = Nothing
    , _pdplProject = pPdplProject_
    , _pdplFilter = Nothing
    , _pdplRegion = pPdplRegion_
    , _pdplPageToken = Nothing
    , _pdplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
pdplReturnPartialSuccess :: Lens' PublicDelegatedPrefixesList (Maybe Bool)
pdplReturnPartialSuccess
  = lens _pdplReturnPartialSuccess
      (\ s a -> s{_pdplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
pdplOrderBy :: Lens' PublicDelegatedPrefixesList (Maybe Text)
pdplOrderBy
  = lens _pdplOrderBy (\ s a -> s{_pdplOrderBy = a})

-- | Project ID for this request.
pdplProject :: Lens' PublicDelegatedPrefixesList Text
pdplProject
  = lens _pdplProject (\ s a -> s{_pdplProject = a})

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
pdplFilter :: Lens' PublicDelegatedPrefixesList (Maybe Text)
pdplFilter
  = lens _pdplFilter (\ s a -> s{_pdplFilter = a})

-- | Name of the region of this request.
pdplRegion :: Lens' PublicDelegatedPrefixesList Text
pdplRegion
  = lens _pdplRegion (\ s a -> s{_pdplRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
pdplPageToken :: Lens' PublicDelegatedPrefixesList (Maybe Text)
pdplPageToken
  = lens _pdplPageToken
      (\ s a -> s{_pdplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
pdplMaxResults :: Lens' PublicDelegatedPrefixesList Word32
pdplMaxResults
  = lens _pdplMaxResults
      (\ s a -> s{_pdplMaxResults = a})
      . _Coerce

instance GoogleRequest PublicDelegatedPrefixesList
         where
        type Rs PublicDelegatedPrefixesList =
             PublicDelegatedPrefixList
        type Scopes PublicDelegatedPrefixesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PublicDelegatedPrefixesList'{..}
          = go _pdplProject _pdplRegion
              _pdplReturnPartialSuccess
              _pdplOrderBy
              _pdplFilter
              _pdplPageToken
              (Just _pdplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PublicDelegatedPrefixesListResource)
                      mempty
