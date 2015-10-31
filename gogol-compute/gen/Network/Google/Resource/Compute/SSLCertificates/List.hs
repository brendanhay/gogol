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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , sclProject
    , sclFilter
    , sclPageToken
    , sclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.list@ method which the
-- 'SSLCertificatesList' request conforms to.
type SSLCertificatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslCertificates" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SSLCertificateList

-- | Retrieves the list of SslCertificate resources available to the
-- specified project.
--
-- /See:/ 'sslCertificatesList' smart constructor.
data SSLCertificatesList = SSLCertificatesList
    { _sclProject    :: !Text
    , _sclFilter     :: !(Maybe Text)
    , _sclPageToken  :: !(Maybe Text)
    , _sclMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    SSLCertificatesList
    { _sclProject = pSclProject_
    , _sclFilter = Nothing
    , _sclPageToken = Nothing
    , _sclMaxResults = 500
    }

-- | Project ID for this request.
sclProject :: Lens' SSLCertificatesList Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
sclFilter :: Lens' SSLCertificatesList (Maybe Text)
sclFilter
  = lens _sclFilter (\ s a -> s{_sclFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
sclPageToken :: Lens' SSLCertificatesList (Maybe Text)
sclPageToken
  = lens _sclPageToken (\ s a -> s{_sclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
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
        requestClient SSLCertificatesList{..}
          = go _sclProject _sclFilter _sclPageToken
              (Just _sclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesListResource)
                      mempty
