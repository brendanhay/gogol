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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of SslCertificate resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.list@.
module Network.Google.Resource.Compute.SSLCertificates.List
    (
    -- * REST Resource
      SSLCertificatesListResource

    -- * Creating a Request
    , sslCertificatesList
    , SSLCertificatesList

    -- * Request Lenses
    , sclReturnPartialSuccess
    , sclOrderBy
    , sclProject
    , sclFilter
    , sclPageToken
    , sclMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.list@ method which the
-- 'SSLCertificatesList' request conforms to.
type SSLCertificatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslCertificates" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SSLCertificateList

-- | Retrieves the list of SslCertificate resources available to the
-- specified project.
--
-- /See:/ 'sslCertificatesList' smart constructor.
data SSLCertificatesList =
  SSLCertificatesList'
    { _sclReturnPartialSuccess :: !(Maybe Bool)
    , _sclOrderBy :: !(Maybe Text)
    , _sclProject :: !Text
    , _sclFilter :: !(Maybe Text)
    , _sclPageToken :: !(Maybe Text)
    , _sclMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertificatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclReturnPartialSuccess'
--
-- * 'sclOrderBy'
--
-- * 'sclProject'
--
-- * 'sclFilter'
--
-- * 'sclPageToken'
--
-- * 'sclMaxResults'
sslCertificatesList
    :: Text -- ^ 'sclProject'
    -> SSLCertificatesList
sslCertificatesList pSclProject_ =
  SSLCertificatesList'
    { _sclReturnPartialSuccess = Nothing
    , _sclOrderBy = Nothing
    , _sclProject = pSclProject_
    , _sclFilter = Nothing
    , _sclPageToken = Nothing
    , _sclMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
sclReturnPartialSuccess :: Lens' SSLCertificatesList (Maybe Bool)
sclReturnPartialSuccess
  = lens _sclReturnPartialSuccess
      (\ s a -> s{_sclReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
sclOrderBy :: Lens' SSLCertificatesList (Maybe Text)
sclOrderBy
  = lens _sclOrderBy (\ s a -> s{_sclOrderBy = a})

-- | Project ID for this request.
sclProject :: Lens' SSLCertificatesList Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

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
sclFilter :: Lens' SSLCertificatesList (Maybe Text)
sclFilter
  = lens _sclFilter (\ s a -> s{_sclFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
sclPageToken :: Lens' SSLCertificatesList (Maybe Text)
sclPageToken
  = lens _sclPageToken (\ s a -> s{_sclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
sclMaxResults :: Lens' SSLCertificatesList Word32
sclMaxResults
  = lens _sclMaxResults
      (\ s a -> s{_sclMaxResults = a})
      . _Coerce

instance GoogleRequest SSLCertificatesList where
        type Rs SSLCertificatesList = SSLCertificateList
        type Scopes SSLCertificatesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SSLCertificatesList'{..}
          = go _sclProject _sclReturnPartialSuccess _sclOrderBy
              _sclFilter
              _sclPageToken
              (Just _sclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesListResource)
                      mempty
