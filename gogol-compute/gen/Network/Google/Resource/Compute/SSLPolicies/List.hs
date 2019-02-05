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
-- Module      : Network.Google.Resource.Compute.SSLPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the SSL policies that have been configured for the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslPolicies.list@.
module Network.Google.Resource.Compute.SSLPolicies.List
    (
    -- * REST Resource
      SSLPoliciesListResource

    -- * Creating a Request
    , sslPoliciesList'
    , SSLPoliciesList'

    -- * Request Lenses
    , sslplOrderBy
    , sslplProject
    , sslplFilter
    , sslplPageToken
    , sslplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslPolicies.list@ method which the
-- 'SSLPoliciesList'' request conforms to.
type SSLPoliciesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslPolicies" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SSLPoliciesList

-- | Lists all the SSL policies that have been configured for the specified
-- project.
--
-- /See:/ 'sslPoliciesList'' smart constructor.
data SSLPoliciesList' = SSLPoliciesList''
    { _sslplOrderBy    :: !(Maybe Text)
    , _sslplProject    :: !Text
    , _sslplFilter     :: !(Maybe Text)
    , _sslplPageToken  :: !(Maybe Text)
    , _sslplMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLPoliciesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslplOrderBy'
--
-- * 'sslplProject'
--
-- * 'sslplFilter'
--
-- * 'sslplPageToken'
--
-- * 'sslplMaxResults'
sslPoliciesList'
    :: Text -- ^ 'sslplProject'
    -> SSLPoliciesList'
sslPoliciesList' pSslplProject_ =
    SSLPoliciesList''
    { _sslplOrderBy = Nothing
    , _sslplProject = pSslplProject_
    , _sslplFilter = Nothing
    , _sslplPageToken = Nothing
    , _sslplMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
sslplOrderBy :: Lens' SSLPoliciesList' (Maybe Text)
sslplOrderBy
  = lens _sslplOrderBy (\ s a -> s{_sslplOrderBy = a})

-- | Project ID for this request.
sslplProject :: Lens' SSLPoliciesList' Text
sslplProject
  = lens _sslplProject (\ s a -> s{_sslplProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
sslplFilter :: Lens' SSLPoliciesList' (Maybe Text)
sslplFilter
  = lens _sslplFilter (\ s a -> s{_sslplFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
sslplPageToken :: Lens' SSLPoliciesList' (Maybe Text)
sslplPageToken
  = lens _sslplPageToken
      (\ s a -> s{_sslplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
sslplMaxResults :: Lens' SSLPoliciesList' Word32
sslplMaxResults
  = lens _sslplMaxResults
      (\ s a -> s{_sslplMaxResults = a})
      . _Coerce

instance GoogleRequest SSLPoliciesList' where
        type Rs SSLPoliciesList' = SSLPoliciesList
        type Scopes SSLPoliciesList' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SSLPoliciesList''{..}
          = go _sslplProject _sslplOrderBy _sslplFilter
              _sslplPageToken
              (Just _sslplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLPoliciesListResource)
                      mempty
