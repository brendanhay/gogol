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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of SslCertificate resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeSSLCertificatesList@.
module Network.Google.Resource.Compute.SSLCertificates.List
    (
    -- * REST Resource
      SSLCertificatesListResource

    -- * Creating a Request
    , sslCertificatesList'
    , SSLCertificatesList'

    -- * Request Lenses
    , sclProject
    , sclFilter
    , sclPageToken
    , sclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeSSLCertificatesList@ method which the
-- 'SSLCertificatesList'' request conforms to.
type SSLCertificatesListResource =
     Capture "project" Text :>
       "global" :>
         "sslCertificates" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] SSLCertificateList

-- | Retrieves the list of SslCertificate resources available to the
-- specified project.
--
-- /See:/ 'sslCertificatesList'' smart constructor.
data SSLCertificatesList' = SSLCertificatesList'
    { _sclProject    :: !Text
    , _sclFilter     :: !(Maybe Text)
    , _sclPageToken  :: !(Maybe Text)
    , _sclMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificatesList'' with the minimum fields required to make a request.
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
sslCertificatesList'
    :: Text -- ^ 'project'
    -> SSLCertificatesList'
sslCertificatesList' pSclProject_ =
    SSLCertificatesList'
    { _sclProject = pSclProject_
    , _sclFilter = Nothing
    , _sclPageToken = Nothing
    , _sclMaxResults = 500
    }

-- | Name of the project scoping this request.
sclProject :: Lens' SSLCertificatesList' Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
sclFilter :: Lens' SSLCertificatesList' (Maybe Text)
sclFilter
  = lens _sclFilter (\ s a -> s{_sclFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
sclPageToken :: Lens' SSLCertificatesList' (Maybe Text)
sclPageToken
  = lens _sclPageToken (\ s a -> s{_sclPageToken = a})

-- | Maximum count of results to be returned.
sclMaxResults :: Lens' SSLCertificatesList' Word32
sclMaxResults
  = lens _sclMaxResults
      (\ s a -> s{_sclMaxResults = a})

instance GoogleRequest SSLCertificatesList' where
        type Rs SSLCertificatesList' = SSLCertificateList
        requestClient SSLCertificatesList'{..}
          = go _sclProject _sclFilter _sclPageToken
              (Just _sclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesListResource)
                      mempty
