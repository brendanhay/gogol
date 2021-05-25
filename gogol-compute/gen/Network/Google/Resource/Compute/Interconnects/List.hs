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
-- Module      : Network.Google.Resource.Compute.Interconnects.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of interconnect available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.list@.
module Network.Google.Resource.Compute.Interconnects.List
    (
    -- * REST Resource
      InterconnectsListResource

    -- * Creating a Request
    , interconnectsList
    , InterconnectsList

    -- * Request Lenses
    , ilReturnPartialSuccess
    , ilOrderBy
    , ilProject
    , ilFilter
    , ilPageToken
    , ilMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnects.list@ method which the
-- 'InterconnectsList' request conforms to.
type InterconnectsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InterconnectList

-- | Retrieves the list of interconnect available to the specified project.
--
-- /See:/ 'interconnectsList' smart constructor.
data InterconnectsList =
  InterconnectsList'
    { _ilReturnPartialSuccess :: !(Maybe Bool)
    , _ilOrderBy :: !(Maybe Text)
    , _ilProject :: !Text
    , _ilFilter :: !(Maybe Text)
    , _ilPageToken :: !(Maybe Text)
    , _ilMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilReturnPartialSuccess'
--
-- * 'ilOrderBy'
--
-- * 'ilProject'
--
-- * 'ilFilter'
--
-- * 'ilPageToken'
--
-- * 'ilMaxResults'
interconnectsList
    :: Text -- ^ 'ilProject'
    -> InterconnectsList
interconnectsList pIlProject_ =
  InterconnectsList'
    { _ilReturnPartialSuccess = Nothing
    , _ilOrderBy = Nothing
    , _ilProject = pIlProject_
    , _ilFilter = Nothing
    , _ilPageToken = Nothing
    , _ilMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ilReturnPartialSuccess :: Lens' InterconnectsList (Maybe Bool)
ilReturnPartialSuccess
  = lens _ilReturnPartialSuccess
      (\ s a -> s{_ilReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ilOrderBy :: Lens' InterconnectsList (Maybe Text)
ilOrderBy
  = lens _ilOrderBy (\ s a -> s{_ilOrderBy = a})

-- | Project ID for this request.
ilProject :: Lens' InterconnectsList Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

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
ilFilter :: Lens' InterconnectsList (Maybe Text)
ilFilter = lens _ilFilter (\ s a -> s{_ilFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ilPageToken :: Lens' InterconnectsList (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ilMaxResults :: Lens' InterconnectsList Word32
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})
      . _Coerce

instance GoogleRequest InterconnectsList where
        type Rs InterconnectsList = InterconnectList
        type Scopes InterconnectsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectsList'{..}
          = go _ilProject _ilReturnPartialSuccess _ilOrderBy
              _ilFilter
              _ilPageToken
              (Just _ilMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsListResource)
                      mempty
