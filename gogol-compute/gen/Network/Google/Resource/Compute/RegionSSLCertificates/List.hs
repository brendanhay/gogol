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
-- Module      : Network.Google.Resource.Compute.RegionSSLCertificates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of SslCertificate resources available to the
-- specified project in the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionSslCertificates.list@.
module Network.Google.Resource.Compute.RegionSSLCertificates.List
    (
    -- * REST Resource
      RegionSSLCertificatesListResource

    -- * Creating a Request
    , regionSSLCertificatesList
    , RegionSSLCertificatesList

    -- * Request Lenses
    , rsclReturnPartialSuccess
    , rsclOrderBy
    , rsclProject
    , rsclFilter
    , rsclRegion
    , rsclPageToken
    , rsclMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionSslCertificates.list@ method which the
-- 'RegionSSLCertificatesList' request conforms to.
type RegionSSLCertificatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "sslCertificates" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SSLCertificateList

-- | Retrieves the list of SslCertificate resources available to the
-- specified project in the specified region.
--
-- /See:/ 'regionSSLCertificatesList' smart constructor.
data RegionSSLCertificatesList =
  RegionSSLCertificatesList'
    { _rsclReturnPartialSuccess :: !(Maybe Bool)
    , _rsclOrderBy :: !(Maybe Text)
    , _rsclProject :: !Text
    , _rsclFilter :: !(Maybe Text)
    , _rsclRegion :: !Text
    , _rsclPageToken :: !(Maybe Text)
    , _rsclMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionSSLCertificatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsclReturnPartialSuccess'
--
-- * 'rsclOrderBy'
--
-- * 'rsclProject'
--
-- * 'rsclFilter'
--
-- * 'rsclRegion'
--
-- * 'rsclPageToken'
--
-- * 'rsclMaxResults'
regionSSLCertificatesList
    :: Text -- ^ 'rsclProject'
    -> Text -- ^ 'rsclRegion'
    -> RegionSSLCertificatesList
regionSSLCertificatesList pRsclProject_ pRsclRegion_ =
  RegionSSLCertificatesList'
    { _rsclReturnPartialSuccess = Nothing
    , _rsclOrderBy = Nothing
    , _rsclProject = pRsclProject_
    , _rsclFilter = Nothing
    , _rsclRegion = pRsclRegion_
    , _rsclPageToken = Nothing
    , _rsclMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rsclReturnPartialSuccess :: Lens' RegionSSLCertificatesList (Maybe Bool)
rsclReturnPartialSuccess
  = lens _rsclReturnPartialSuccess
      (\ s a -> s{_rsclReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rsclOrderBy :: Lens' RegionSSLCertificatesList (Maybe Text)
rsclOrderBy
  = lens _rsclOrderBy (\ s a -> s{_rsclOrderBy = a})

-- | Project ID for this request.
rsclProject :: Lens' RegionSSLCertificatesList Text
rsclProject
  = lens _rsclProject (\ s a -> s{_rsclProject = a})

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
rsclFilter :: Lens' RegionSSLCertificatesList (Maybe Text)
rsclFilter
  = lens _rsclFilter (\ s a -> s{_rsclFilter = a})

-- | Name of the region scoping this request.
rsclRegion :: Lens' RegionSSLCertificatesList Text
rsclRegion
  = lens _rsclRegion (\ s a -> s{_rsclRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rsclPageToken :: Lens' RegionSSLCertificatesList (Maybe Text)
rsclPageToken
  = lens _rsclPageToken
      (\ s a -> s{_rsclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rsclMaxResults :: Lens' RegionSSLCertificatesList Word32
rsclMaxResults
  = lens _rsclMaxResults
      (\ s a -> s{_rsclMaxResults = a})
      . _Coerce

instance GoogleRequest RegionSSLCertificatesList
         where
        type Rs RegionSSLCertificatesList =
             SSLCertificateList
        type Scopes RegionSSLCertificatesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionSSLCertificatesList'{..}
          = go _rsclProject _rsclRegion
              _rsclReturnPartialSuccess
              _rsclOrderBy
              _rsclFilter
              _rsclPageToken
              (Just _rsclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionSSLCertificatesListResource)
                      mempty
