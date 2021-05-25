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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of interconnect attachments contained within the
-- specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.list@.
module Network.Google.Resource.Compute.InterconnectAttachments.List
    (
    -- * REST Resource
      InterconnectAttachmentsListResource

    -- * Creating a Request
    , interconnectAttachmentsList
    , InterconnectAttachmentsList

    -- * Request Lenses
    , ialReturnPartialSuccess
    , ialOrderBy
    , ialProject
    , ialFilter
    , ialRegion
    , ialPageToken
    , ialMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.list@ method which the
-- 'InterconnectAttachmentsList' request conforms to.
type InterconnectAttachmentsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "interconnectAttachments" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InterconnectAttachmentList

-- | Retrieves the list of interconnect attachments contained within the
-- specified region.
--
-- /See:/ 'interconnectAttachmentsList' smart constructor.
data InterconnectAttachmentsList =
  InterconnectAttachmentsList'
    { _ialReturnPartialSuccess :: !(Maybe Bool)
    , _ialOrderBy :: !(Maybe Text)
    , _ialProject :: !Text
    , _ialFilter :: !(Maybe Text)
    , _ialRegion :: !Text
    , _ialPageToken :: !(Maybe Text)
    , _ialMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectAttachmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialReturnPartialSuccess'
--
-- * 'ialOrderBy'
--
-- * 'ialProject'
--
-- * 'ialFilter'
--
-- * 'ialRegion'
--
-- * 'ialPageToken'
--
-- * 'ialMaxResults'
interconnectAttachmentsList
    :: Text -- ^ 'ialProject'
    -> Text -- ^ 'ialRegion'
    -> InterconnectAttachmentsList
interconnectAttachmentsList pIalProject_ pIalRegion_ =
  InterconnectAttachmentsList'
    { _ialReturnPartialSuccess = Nothing
    , _ialOrderBy = Nothing
    , _ialProject = pIalProject_
    , _ialFilter = Nothing
    , _ialRegion = pIalRegion_
    , _ialPageToken = Nothing
    , _ialMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ialReturnPartialSuccess :: Lens' InterconnectAttachmentsList (Maybe Bool)
ialReturnPartialSuccess
  = lens _ialReturnPartialSuccess
      (\ s a -> s{_ialReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ialOrderBy :: Lens' InterconnectAttachmentsList (Maybe Text)
ialOrderBy
  = lens _ialOrderBy (\ s a -> s{_ialOrderBy = a})

-- | Project ID for this request.
ialProject :: Lens' InterconnectAttachmentsList Text
ialProject
  = lens _ialProject (\ s a -> s{_ialProject = a})

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
ialFilter :: Lens' InterconnectAttachmentsList (Maybe Text)
ialFilter
  = lens _ialFilter (\ s a -> s{_ialFilter = a})

-- | Name of the region for this request.
ialRegion :: Lens' InterconnectAttachmentsList Text
ialRegion
  = lens _ialRegion (\ s a -> s{_ialRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ialPageToken :: Lens' InterconnectAttachmentsList (Maybe Text)
ialPageToken
  = lens _ialPageToken (\ s a -> s{_ialPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ialMaxResults :: Lens' InterconnectAttachmentsList Word32
ialMaxResults
  = lens _ialMaxResults
      (\ s a -> s{_ialMaxResults = a})
      . _Coerce

instance GoogleRequest InterconnectAttachmentsList
         where
        type Rs InterconnectAttachmentsList =
             InterconnectAttachmentList
        type Scopes InterconnectAttachmentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectAttachmentsList'{..}
          = go _ialProject _ialRegion _ialReturnPartialSuccess
              _ialOrderBy
              _ialFilter
              _ialPageToken
              (Just _ialMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectAttachmentsListResource)
                      mempty
