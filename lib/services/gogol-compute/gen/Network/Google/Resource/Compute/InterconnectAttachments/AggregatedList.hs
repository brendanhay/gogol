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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of interconnect attachments.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.aggregatedList@.
module Network.Google.Resource.Compute.InterconnectAttachments.AggregatedList
    (
    -- * REST Resource
      InterconnectAttachmentsAggregatedListResource

    -- * Creating a Request
    , interconnectAttachmentsAggregatedList
    , InterconnectAttachmentsAggregatedList

    -- * Request Lenses
    , iaalIncludeAllScopes
    , iaalReturnPartialSuccess
    , iaalOrderBy
    , iaalProject
    , iaalFilter
    , iaalPageToken
    , iaalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.aggregatedList@ method which the
-- 'InterconnectAttachmentsAggregatedList' request conforms to.
type InterconnectAttachmentsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "interconnectAttachments" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InterconnectAttachmentAggregatedList

-- | Retrieves an aggregated list of interconnect attachments.
--
-- /See:/ 'interconnectAttachmentsAggregatedList' smart constructor.
data InterconnectAttachmentsAggregatedList =
  InterconnectAttachmentsAggregatedList'
    { _iaalIncludeAllScopes :: !(Maybe Bool)
    , _iaalReturnPartialSuccess :: !(Maybe Bool)
    , _iaalOrderBy :: !(Maybe Text)
    , _iaalProject :: !Text
    , _iaalFilter :: !(Maybe Text)
    , _iaalPageToken :: !(Maybe Text)
    , _iaalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectAttachmentsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaalIncludeAllScopes'
--
-- * 'iaalReturnPartialSuccess'
--
-- * 'iaalOrderBy'
--
-- * 'iaalProject'
--
-- * 'iaalFilter'
--
-- * 'iaalPageToken'
--
-- * 'iaalMaxResults'
interconnectAttachmentsAggregatedList
    :: Text -- ^ 'iaalProject'
    -> InterconnectAttachmentsAggregatedList
interconnectAttachmentsAggregatedList pIaalProject_ =
  InterconnectAttachmentsAggregatedList'
    { _iaalIncludeAllScopes = Nothing
    , _iaalReturnPartialSuccess = Nothing
    , _iaalOrderBy = Nothing
    , _iaalProject = pIaalProject_
    , _iaalFilter = Nothing
    , _iaalPageToken = Nothing
    , _iaalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
iaalIncludeAllScopes :: Lens' InterconnectAttachmentsAggregatedList (Maybe Bool)
iaalIncludeAllScopes
  = lens _iaalIncludeAllScopes
      (\ s a -> s{_iaalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
iaalReturnPartialSuccess :: Lens' InterconnectAttachmentsAggregatedList (Maybe Bool)
iaalReturnPartialSuccess
  = lens _iaalReturnPartialSuccess
      (\ s a -> s{_iaalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
iaalOrderBy :: Lens' InterconnectAttachmentsAggregatedList (Maybe Text)
iaalOrderBy
  = lens _iaalOrderBy (\ s a -> s{_iaalOrderBy = a})

-- | Project ID for this request.
iaalProject :: Lens' InterconnectAttachmentsAggregatedList Text
iaalProject
  = lens _iaalProject (\ s a -> s{_iaalProject = a})

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
iaalFilter :: Lens' InterconnectAttachmentsAggregatedList (Maybe Text)
iaalFilter
  = lens _iaalFilter (\ s a -> s{_iaalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
iaalPageToken :: Lens' InterconnectAttachmentsAggregatedList (Maybe Text)
iaalPageToken
  = lens _iaalPageToken
      (\ s a -> s{_iaalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
iaalMaxResults :: Lens' InterconnectAttachmentsAggregatedList Word32
iaalMaxResults
  = lens _iaalMaxResults
      (\ s a -> s{_iaalMaxResults = a})
      . _Coerce

instance GoogleRequest
           InterconnectAttachmentsAggregatedList
         where
        type Rs InterconnectAttachmentsAggregatedList =
             InterconnectAttachmentAggregatedList
        type Scopes InterconnectAttachmentsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InterconnectAttachmentsAggregatedList'{..}
          = go _iaalProject _iaalIncludeAllScopes
              _iaalReturnPartialSuccess
              _iaalOrderBy
              _iaalFilter
              _iaalPageToken
              (Just _iaalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InterconnectAttachmentsAggregatedListResource)
                      mempty
