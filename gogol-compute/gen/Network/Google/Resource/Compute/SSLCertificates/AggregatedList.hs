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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all SslCertificate resources, regional and global,
-- available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.aggregatedList@.
module Network.Google.Resource.Compute.SSLCertificates.AggregatedList
    (
    -- * REST Resource
      SSLCertificatesAggregatedListResource

    -- * Creating a Request
    , sslCertificatesAggregatedList
    , SSLCertificatesAggregatedList

    -- * Request Lenses
    , scalIncludeAllScopes
    , scalReturnPartialSuccess
    , scalOrderBy
    , scalProject
    , scalFilter
    , scalPageToken
    , scalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.aggregatedList@ method which the
-- 'SSLCertificatesAggregatedList' request conforms to.
type SSLCertificatesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "sslCertificates" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SSLCertificateAggregatedList

-- | Retrieves the list of all SslCertificate resources, regional and global,
-- available to the specified project.
--
-- /See:/ 'sslCertificatesAggregatedList' smart constructor.
data SSLCertificatesAggregatedList =
  SSLCertificatesAggregatedList'
    { _scalIncludeAllScopes :: !(Maybe Bool)
    , _scalReturnPartialSuccess :: !(Maybe Bool)
    , _scalOrderBy :: !(Maybe Text)
    , _scalProject :: !Text
    , _scalFilter :: !(Maybe Text)
    , _scalPageToken :: !(Maybe Text)
    , _scalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertificatesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scalIncludeAllScopes'
--
-- * 'scalReturnPartialSuccess'
--
-- * 'scalOrderBy'
--
-- * 'scalProject'
--
-- * 'scalFilter'
--
-- * 'scalPageToken'
--
-- * 'scalMaxResults'
sslCertificatesAggregatedList
    :: Text -- ^ 'scalProject'
    -> SSLCertificatesAggregatedList
sslCertificatesAggregatedList pScalProject_ =
  SSLCertificatesAggregatedList'
    { _scalIncludeAllScopes = Nothing
    , _scalReturnPartialSuccess = Nothing
    , _scalOrderBy = Nothing
    , _scalProject = pScalProject_
    , _scalFilter = Nothing
    , _scalPageToken = Nothing
    , _scalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
scalIncludeAllScopes :: Lens' SSLCertificatesAggregatedList (Maybe Bool)
scalIncludeAllScopes
  = lens _scalIncludeAllScopes
      (\ s a -> s{_scalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
scalReturnPartialSuccess :: Lens' SSLCertificatesAggregatedList (Maybe Bool)
scalReturnPartialSuccess
  = lens _scalReturnPartialSuccess
      (\ s a -> s{_scalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
scalOrderBy :: Lens' SSLCertificatesAggregatedList (Maybe Text)
scalOrderBy
  = lens _scalOrderBy (\ s a -> s{_scalOrderBy = a})

-- | Name of the project scoping this request.
scalProject :: Lens' SSLCertificatesAggregatedList Text
scalProject
  = lens _scalProject (\ s a -> s{_scalProject = a})

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
scalFilter :: Lens' SSLCertificatesAggregatedList (Maybe Text)
scalFilter
  = lens _scalFilter (\ s a -> s{_scalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
scalPageToken :: Lens' SSLCertificatesAggregatedList (Maybe Text)
scalPageToken
  = lens _scalPageToken
      (\ s a -> s{_scalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
scalMaxResults :: Lens' SSLCertificatesAggregatedList Word32
scalMaxResults
  = lens _scalMaxResults
      (\ s a -> s{_scalMaxResults = a})
      . _Coerce

instance GoogleRequest SSLCertificatesAggregatedList
         where
        type Rs SSLCertificatesAggregatedList =
             SSLCertificateAggregatedList
        type Scopes SSLCertificatesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SSLCertificatesAggregatedList'{..}
          = go _scalProject _scalIncludeAllScopes
              _scalReturnPartialSuccess
              _scalOrderBy
              _scalFilter
              _scalPageToken
              (Just _scalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SSLCertificatesAggregatedListResource)
                      mempty
