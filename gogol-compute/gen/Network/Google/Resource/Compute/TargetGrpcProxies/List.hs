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
-- Module      : Network.Google.Resource.Compute.TargetGrpcProxies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the TargetGrpcProxies for a project in the given scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetGrpcProxies.list@.
module Network.Google.Resource.Compute.TargetGrpcProxies.List
    (
    -- * REST Resource
      TargetGrpcProxiesListResource

    -- * Creating a Request
    , targetGrpcProxiesList
    , TargetGrpcProxiesList

    -- * Request Lenses
    , tgplReturnPartialSuccess
    , tgplOrderBy
    , tgplProject
    , tgplFilter
    , tgplPageToken
    , tgplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetGrpcProxies.list@ method which the
-- 'TargetGrpcProxiesList' request conforms to.
type TargetGrpcProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetGrpcProxies" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetGrpcProxyList

-- | Lists the TargetGrpcProxies for a project in the given scope.
--
-- /See:/ 'targetGrpcProxiesList' smart constructor.
data TargetGrpcProxiesList =
  TargetGrpcProxiesList'
    { _tgplReturnPartialSuccess :: !(Maybe Bool)
    , _tgplOrderBy :: !(Maybe Text)
    , _tgplProject :: !Text
    , _tgplFilter :: !(Maybe Text)
    , _tgplPageToken :: !(Maybe Text)
    , _tgplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetGrpcProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgplReturnPartialSuccess'
--
-- * 'tgplOrderBy'
--
-- * 'tgplProject'
--
-- * 'tgplFilter'
--
-- * 'tgplPageToken'
--
-- * 'tgplMaxResults'
targetGrpcProxiesList
    :: Text -- ^ 'tgplProject'
    -> TargetGrpcProxiesList
targetGrpcProxiesList pTgplProject_ =
  TargetGrpcProxiesList'
    { _tgplReturnPartialSuccess = Nothing
    , _tgplOrderBy = Nothing
    , _tgplProject = pTgplProject_
    , _tgplFilter = Nothing
    , _tgplPageToken = Nothing
    , _tgplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
tgplReturnPartialSuccess :: Lens' TargetGrpcProxiesList (Maybe Bool)
tgplReturnPartialSuccess
  = lens _tgplReturnPartialSuccess
      (\ s a -> s{_tgplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
tgplOrderBy :: Lens' TargetGrpcProxiesList (Maybe Text)
tgplOrderBy
  = lens _tgplOrderBy (\ s a -> s{_tgplOrderBy = a})

-- | Project ID for this request.
tgplProject :: Lens' TargetGrpcProxiesList Text
tgplProject
  = lens _tgplProject (\ s a -> s{_tgplProject = a})

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
tgplFilter :: Lens' TargetGrpcProxiesList (Maybe Text)
tgplFilter
  = lens _tgplFilter (\ s a -> s{_tgplFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
tgplPageToken :: Lens' TargetGrpcProxiesList (Maybe Text)
tgplPageToken
  = lens _tgplPageToken
      (\ s a -> s{_tgplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
tgplMaxResults :: Lens' TargetGrpcProxiesList Word32
tgplMaxResults
  = lens _tgplMaxResults
      (\ s a -> s{_tgplMaxResults = a})
      . _Coerce

instance GoogleRequest TargetGrpcProxiesList where
        type Rs TargetGrpcProxiesList = TargetGrpcProxyList
        type Scopes TargetGrpcProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetGrpcProxiesList'{..}
          = go _tgplProject _tgplReturnPartialSuccess
              _tgplOrderBy
              _tgplFilter
              _tgplPageToken
              (Just _tgplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetGrpcProxiesListResource)
                      mempty
