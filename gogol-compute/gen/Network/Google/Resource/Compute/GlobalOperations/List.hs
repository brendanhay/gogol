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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Operation resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.list@.
module Network.Google.Resource.Compute.GlobalOperations.List
    (
    -- * REST Resource
      GlobalOperationsListResource

    -- * Creating a Request
    , globalOperationsList
    , GlobalOperationsList

    -- * Request Lenses
    , golReturnPartialSuccess
    , golOrderBy
    , golProject
    , golFilter
    , golPageToken
    , golMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalOperations.list@ method which the
-- 'GlobalOperationsList' request conforms to.
type GlobalOperationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves a list of Operation resources contained within the specified
-- project.
--
-- /See:/ 'globalOperationsList' smart constructor.
data GlobalOperationsList =
  GlobalOperationsList'
    { _golReturnPartialSuccess :: !(Maybe Bool)
    , _golOrderBy :: !(Maybe Text)
    , _golProject :: !Text
    , _golFilter :: !(Maybe Text)
    , _golPageToken :: !(Maybe Text)
    , _golMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'golReturnPartialSuccess'
--
-- * 'golOrderBy'
--
-- * 'golProject'
--
-- * 'golFilter'
--
-- * 'golPageToken'
--
-- * 'golMaxResults'
globalOperationsList
    :: Text -- ^ 'golProject'
    -> GlobalOperationsList
globalOperationsList pGolProject_ =
  GlobalOperationsList'
    { _golReturnPartialSuccess = Nothing
    , _golOrderBy = Nothing
    , _golProject = pGolProject_
    , _golFilter = Nothing
    , _golPageToken = Nothing
    , _golMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
golReturnPartialSuccess :: Lens' GlobalOperationsList (Maybe Bool)
golReturnPartialSuccess
  = lens _golReturnPartialSuccess
      (\ s a -> s{_golReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
golOrderBy :: Lens' GlobalOperationsList (Maybe Text)
golOrderBy
  = lens _golOrderBy (\ s a -> s{_golOrderBy = a})

-- | Project ID for this request.
golProject :: Lens' GlobalOperationsList Text
golProject
  = lens _golProject (\ s a -> s{_golProject = a})

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
golFilter :: Lens' GlobalOperationsList (Maybe Text)
golFilter
  = lens _golFilter (\ s a -> s{_golFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
golPageToken :: Lens' GlobalOperationsList (Maybe Text)
golPageToken
  = lens _golPageToken (\ s a -> s{_golPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
golMaxResults :: Lens' GlobalOperationsList Word32
golMaxResults
  = lens _golMaxResults
      (\ s a -> s{_golMaxResults = a})
      . _Coerce

instance GoogleRequest GlobalOperationsList where
        type Rs GlobalOperationsList = OperationList
        type Scopes GlobalOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOperationsList'{..}
          = go _golProject _golReturnPartialSuccess _golOrderBy
              _golFilter
              _golPageToken
              (Just _golMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsListResource)
                      mempty
