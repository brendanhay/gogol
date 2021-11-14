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
-- Module      : Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the global PublicDelegatedPrefixes for a project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.list@.
module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.List
    (
    -- * REST Resource
      GlobalPublicDelegatedPrefixesListResource

    -- * Creating a Request
    , globalPublicDelegatedPrefixesList
    , GlobalPublicDelegatedPrefixesList

    -- * Request Lenses
    , gpdplReturnPartialSuccess
    , gpdplOrderBy
    , gpdplProject
    , gpdplFilter
    , gpdplPageToken
    , gpdplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.list@ method which the
-- 'GlobalPublicDelegatedPrefixesList' request conforms to.
type GlobalPublicDelegatedPrefixesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicDelegatedPrefixes" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PublicDelegatedPrefixList

-- | Lists the global PublicDelegatedPrefixes for a project.
--
-- /See:/ 'globalPublicDelegatedPrefixesList' smart constructor.
data GlobalPublicDelegatedPrefixesList =
  GlobalPublicDelegatedPrefixesList'
    { _gpdplReturnPartialSuccess :: !(Maybe Bool)
    , _gpdplOrderBy :: !(Maybe Text)
    , _gpdplProject :: !Text
    , _gpdplFilter :: !(Maybe Text)
    , _gpdplPageToken :: !(Maybe Text)
    , _gpdplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPublicDelegatedPrefixesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdplReturnPartialSuccess'
--
-- * 'gpdplOrderBy'
--
-- * 'gpdplProject'
--
-- * 'gpdplFilter'
--
-- * 'gpdplPageToken'
--
-- * 'gpdplMaxResults'
globalPublicDelegatedPrefixesList
    :: Text -- ^ 'gpdplProject'
    -> GlobalPublicDelegatedPrefixesList
globalPublicDelegatedPrefixesList pGpdplProject_ =
  GlobalPublicDelegatedPrefixesList'
    { _gpdplReturnPartialSuccess = Nothing
    , _gpdplOrderBy = Nothing
    , _gpdplProject = pGpdplProject_
    , _gpdplFilter = Nothing
    , _gpdplPageToken = Nothing
    , _gpdplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
gpdplReturnPartialSuccess :: Lens' GlobalPublicDelegatedPrefixesList (Maybe Bool)
gpdplReturnPartialSuccess
  = lens _gpdplReturnPartialSuccess
      (\ s a -> s{_gpdplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
gpdplOrderBy :: Lens' GlobalPublicDelegatedPrefixesList (Maybe Text)
gpdplOrderBy
  = lens _gpdplOrderBy (\ s a -> s{_gpdplOrderBy = a})

-- | Project ID for this request.
gpdplProject :: Lens' GlobalPublicDelegatedPrefixesList Text
gpdplProject
  = lens _gpdplProject (\ s a -> s{_gpdplProject = a})

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
gpdplFilter :: Lens' GlobalPublicDelegatedPrefixesList (Maybe Text)
gpdplFilter
  = lens _gpdplFilter (\ s a -> s{_gpdplFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
gpdplPageToken :: Lens' GlobalPublicDelegatedPrefixesList (Maybe Text)
gpdplPageToken
  = lens _gpdplPageToken
      (\ s a -> s{_gpdplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
gpdplMaxResults :: Lens' GlobalPublicDelegatedPrefixesList Word32
gpdplMaxResults
  = lens _gpdplMaxResults
      (\ s a -> s{_gpdplMaxResults = a})
      . _Coerce

instance GoogleRequest
           GlobalPublicDelegatedPrefixesList
         where
        type Rs GlobalPublicDelegatedPrefixesList =
             PublicDelegatedPrefixList
        type Scopes GlobalPublicDelegatedPrefixesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalPublicDelegatedPrefixesList'{..}
          = go _gpdplProject _gpdplReturnPartialSuccess
              _gpdplOrderBy
              _gpdplFilter
              _gpdplPageToken
              (Just _gpdplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalPublicDelegatedPrefixesListResource)
                      mempty
