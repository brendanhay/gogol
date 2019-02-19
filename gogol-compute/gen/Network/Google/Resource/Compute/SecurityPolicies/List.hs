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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the policies that have been configured for the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.list@.
module Network.Google.Resource.Compute.SecurityPolicies.List
    (
    -- * REST Resource
      SecurityPoliciesListResource

    -- * Creating a Request
    , securityPoliciesList
    , SecurityPoliciesList

    -- * Request Lenses
    , splOrderBy
    , splProject
    , splFilter
    , splPageToken
    , splMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.list@ method which the
-- 'SecurityPoliciesList' request conforms to.
type SecurityPoliciesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SecurityPolicyList

-- | List all the policies that have been configured for the specified
-- project.
--
-- /See:/ 'securityPoliciesList' smart constructor.
data SecurityPoliciesList =
  SecurityPoliciesList'
    { _splOrderBy    :: !(Maybe Text)
    , _splProject    :: !Text
    , _splFilter     :: !(Maybe Text)
    , _splPageToken  :: !(Maybe Text)
    , _splMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'splOrderBy'
--
-- * 'splProject'
--
-- * 'splFilter'
--
-- * 'splPageToken'
--
-- * 'splMaxResults'
securityPoliciesList
    :: Text -- ^ 'splProject'
    -> SecurityPoliciesList
securityPoliciesList pSplProject_ =
  SecurityPoliciesList'
    { _splOrderBy = Nothing
    , _splProject = pSplProject_
    , _splFilter = Nothing
    , _splPageToken = Nothing
    , _splMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
splOrderBy :: Lens' SecurityPoliciesList (Maybe Text)
splOrderBy
  = lens _splOrderBy (\ s a -> s{_splOrderBy = a})

-- | Project ID for this request.
splProject :: Lens' SecurityPoliciesList Text
splProject
  = lens _splProject (\ s a -> s{_splProject = a})

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
splFilter :: Lens' SecurityPoliciesList (Maybe Text)
splFilter
  = lens _splFilter (\ s a -> s{_splFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
splPageToken :: Lens' SecurityPoliciesList (Maybe Text)
splPageToken
  = lens _splPageToken (\ s a -> s{_splPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
splMaxResults :: Lens' SecurityPoliciesList Word32
splMaxResults
  = lens _splMaxResults
      (\ s a -> s{_splMaxResults = a})
      . _Coerce

instance GoogleRequest SecurityPoliciesList where
        type Rs SecurityPoliciesList = SecurityPolicyList
        type Scopes SecurityPoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SecurityPoliciesList'{..}
          = go _splProject _splOrderBy _splFilter _splPageToken
              (Just _splMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesListResource)
                      mempty
