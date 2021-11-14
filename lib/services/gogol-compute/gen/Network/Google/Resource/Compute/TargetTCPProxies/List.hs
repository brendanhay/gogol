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
-- Module      : Network.Google.Resource.Compute.TargetTCPProxies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetTcpProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetTcpProxies.list@.
module Network.Google.Resource.Compute.TargetTCPProxies.List
    (
    -- * REST Resource
      TargetTCPProxiesListResource

    -- * Creating a Request
    , targetTCPProxiesList
    , TargetTCPProxiesList

    -- * Request Lenses
    , ttplReturnPartialSuccess
    , ttplOrderBy
    , ttplProject
    , ttplFilter
    , ttplPageToken
    , ttplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetTcpProxies.list@ method which the
-- 'TargetTCPProxiesList' request conforms to.
type TargetTCPProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetTcpProxies" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetTCPProxyList

-- | Retrieves the list of TargetTcpProxy resources available to the
-- specified project.
--
-- /See:/ 'targetTCPProxiesList' smart constructor.
data TargetTCPProxiesList =
  TargetTCPProxiesList'
    { _ttplReturnPartialSuccess :: !(Maybe Bool)
    , _ttplOrderBy :: !(Maybe Text)
    , _ttplProject :: !Text
    , _ttplFilter :: !(Maybe Text)
    , _ttplPageToken :: !(Maybe Text)
    , _ttplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetTCPProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttplReturnPartialSuccess'
--
-- * 'ttplOrderBy'
--
-- * 'ttplProject'
--
-- * 'ttplFilter'
--
-- * 'ttplPageToken'
--
-- * 'ttplMaxResults'
targetTCPProxiesList
    :: Text -- ^ 'ttplProject'
    -> TargetTCPProxiesList
targetTCPProxiesList pTtplProject_ =
  TargetTCPProxiesList'
    { _ttplReturnPartialSuccess = Nothing
    , _ttplOrderBy = Nothing
    , _ttplProject = pTtplProject_
    , _ttplFilter = Nothing
    , _ttplPageToken = Nothing
    , _ttplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ttplReturnPartialSuccess :: Lens' TargetTCPProxiesList (Maybe Bool)
ttplReturnPartialSuccess
  = lens _ttplReturnPartialSuccess
      (\ s a -> s{_ttplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ttplOrderBy :: Lens' TargetTCPProxiesList (Maybe Text)
ttplOrderBy
  = lens _ttplOrderBy (\ s a -> s{_ttplOrderBy = a})

-- | Project ID for this request.
ttplProject :: Lens' TargetTCPProxiesList Text
ttplProject
  = lens _ttplProject (\ s a -> s{_ttplProject = a})

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
ttplFilter :: Lens' TargetTCPProxiesList (Maybe Text)
ttplFilter
  = lens _ttplFilter (\ s a -> s{_ttplFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ttplPageToken :: Lens' TargetTCPProxiesList (Maybe Text)
ttplPageToken
  = lens _ttplPageToken
      (\ s a -> s{_ttplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ttplMaxResults :: Lens' TargetTCPProxiesList Word32
ttplMaxResults
  = lens _ttplMaxResults
      (\ s a -> s{_ttplMaxResults = a})
      . _Coerce

instance GoogleRequest TargetTCPProxiesList where
        type Rs TargetTCPProxiesList = TargetTCPProxyList
        type Scopes TargetTCPProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetTCPProxiesList'{..}
          = go _ttplProject _ttplReturnPartialSuccess
              _ttplOrderBy
              _ttplFilter
              _ttplPageToken
              (Just _ttplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetTCPProxiesListResource)
                      mempty
