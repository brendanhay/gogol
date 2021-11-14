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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of ExternalVpnGateway available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.list@.
module Network.Google.Resource.Compute.ExternalVPNGateways.List
    (
    -- * REST Resource
      ExternalVPNGatewaysListResource

    -- * Creating a Request
    , externalVPNGatewaysList
    , ExternalVPNGatewaysList

    -- * Request Lenses
    , evglReturnPartialSuccess
    , evglOrderBy
    , evglProject
    , evglFilter
    , evglPageToken
    , evglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.list@ method which the
-- 'ExternalVPNGatewaysList' request conforms to.
type ExternalVPNGatewaysListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ExternalVPNGatewayList

-- | Retrieves the list of ExternalVpnGateway available to the specified
-- project.
--
-- /See:/ 'externalVPNGatewaysList' smart constructor.
data ExternalVPNGatewaysList =
  ExternalVPNGatewaysList'
    { _evglReturnPartialSuccess :: !(Maybe Bool)
    , _evglOrderBy :: !(Maybe Text)
    , _evglProject :: !Text
    , _evglFilter :: !(Maybe Text)
    , _evglPageToken :: !(Maybe Text)
    , _evglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evglReturnPartialSuccess'
--
-- * 'evglOrderBy'
--
-- * 'evglProject'
--
-- * 'evglFilter'
--
-- * 'evglPageToken'
--
-- * 'evglMaxResults'
externalVPNGatewaysList
    :: Text -- ^ 'evglProject'
    -> ExternalVPNGatewaysList
externalVPNGatewaysList pEvglProject_ =
  ExternalVPNGatewaysList'
    { _evglReturnPartialSuccess = Nothing
    , _evglOrderBy = Nothing
    , _evglProject = pEvglProject_
    , _evglFilter = Nothing
    , _evglPageToken = Nothing
    , _evglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
evglReturnPartialSuccess :: Lens' ExternalVPNGatewaysList (Maybe Bool)
evglReturnPartialSuccess
  = lens _evglReturnPartialSuccess
      (\ s a -> s{_evglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
evglOrderBy :: Lens' ExternalVPNGatewaysList (Maybe Text)
evglOrderBy
  = lens _evglOrderBy (\ s a -> s{_evglOrderBy = a})

-- | Project ID for this request.
evglProject :: Lens' ExternalVPNGatewaysList Text
evglProject
  = lens _evglProject (\ s a -> s{_evglProject = a})

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
evglFilter :: Lens' ExternalVPNGatewaysList (Maybe Text)
evglFilter
  = lens _evglFilter (\ s a -> s{_evglFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
evglPageToken :: Lens' ExternalVPNGatewaysList (Maybe Text)
evglPageToken
  = lens _evglPageToken
      (\ s a -> s{_evglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
evglMaxResults :: Lens' ExternalVPNGatewaysList Word32
evglMaxResults
  = lens _evglMaxResults
      (\ s a -> s{_evglMaxResults = a})
      . _Coerce

instance GoogleRequest ExternalVPNGatewaysList where
        type Rs ExternalVPNGatewaysList =
             ExternalVPNGatewayList
        type Scopes ExternalVPNGatewaysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ExternalVPNGatewaysList'{..}
          = go _evglProject _evglReturnPartialSuccess
              _evglOrderBy
              _evglFilter
              _evglPageToken
              (Just _evglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ExternalVPNGatewaysListResource)
                      mempty
