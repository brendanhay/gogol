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
-- Module      : Network.Google.Resource.Compute.GlobalOrganizationOperations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Operation resources contained within the specified
-- organization.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOrganizationOperations.list@.
module Network.Google.Resource.Compute.GlobalOrganizationOperations.List
    (
    -- * REST Resource
      GlobalOrganizationOperationsListResource

    -- * Creating a Request
    , globalOrganizationOperationsList
    , GlobalOrganizationOperationsList

    -- * Request Lenses
    , goolReturnPartialSuccess
    , goolOrderBy
    , goolFilter
    , goolPageToken
    , goolMaxResults
    , goolParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalOrganizationOperations.list@ method which the
-- 'GlobalOrganizationOperationsList' request conforms to.
type GlobalOrganizationOperationsListResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "operations" :>
               QueryParam "returnPartialSuccess" Bool :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "parentId" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves a list of Operation resources contained within the specified
-- organization.
--
-- /See:/ 'globalOrganizationOperationsList' smart constructor.
data GlobalOrganizationOperationsList =
  GlobalOrganizationOperationsList'
    { _goolReturnPartialSuccess :: !(Maybe Bool)
    , _goolOrderBy :: !(Maybe Text)
    , _goolFilter :: !(Maybe Text)
    , _goolPageToken :: !(Maybe Text)
    , _goolMaxResults :: !(Textual Word32)
    , _goolParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalOrganizationOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goolReturnPartialSuccess'
--
-- * 'goolOrderBy'
--
-- * 'goolFilter'
--
-- * 'goolPageToken'
--
-- * 'goolMaxResults'
--
-- * 'goolParentId'
globalOrganizationOperationsList
    :: GlobalOrganizationOperationsList
globalOrganizationOperationsList =
  GlobalOrganizationOperationsList'
    { _goolReturnPartialSuccess = Nothing
    , _goolOrderBy = Nothing
    , _goolFilter = Nothing
    , _goolPageToken = Nothing
    , _goolMaxResults = 500
    , _goolParentId = Nothing
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
goolReturnPartialSuccess :: Lens' GlobalOrganizationOperationsList (Maybe Bool)
goolReturnPartialSuccess
  = lens _goolReturnPartialSuccess
      (\ s a -> s{_goolReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
goolOrderBy :: Lens' GlobalOrganizationOperationsList (Maybe Text)
goolOrderBy
  = lens _goolOrderBy (\ s a -> s{_goolOrderBy = a})

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
goolFilter :: Lens' GlobalOrganizationOperationsList (Maybe Text)
goolFilter
  = lens _goolFilter (\ s a -> s{_goolFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
goolPageToken :: Lens' GlobalOrganizationOperationsList (Maybe Text)
goolPageToken
  = lens _goolPageToken
      (\ s a -> s{_goolPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
goolMaxResults :: Lens' GlobalOrganizationOperationsList Word32
goolMaxResults
  = lens _goolMaxResults
      (\ s a -> s{_goolMaxResults = a})
      . _Coerce

-- | Parent ID for this request.
goolParentId :: Lens' GlobalOrganizationOperationsList (Maybe Text)
goolParentId
  = lens _goolParentId (\ s a -> s{_goolParentId = a})

instance GoogleRequest
           GlobalOrganizationOperationsList
         where
        type Rs GlobalOrganizationOperationsList =
             OperationList
        type Scopes GlobalOrganizationOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOrganizationOperationsList'{..}
          = go _goolReturnPartialSuccess _goolOrderBy
              _goolFilter
              _goolPageToken
              (Just _goolMaxResults)
              _goolParentId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalOrganizationOperationsListResource)
                      mempty
