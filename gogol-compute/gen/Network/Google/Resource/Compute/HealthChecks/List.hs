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
-- Module      : Network.Google.Resource.Compute.HealthChecks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.list@.
module Network.Google.Resource.Compute.HealthChecks.List
    (
    -- * REST Resource
      HealthChecksListResource

    -- * Creating a Request
    , healthChecksList
    , HealthChecksList

    -- * Request Lenses
    , hclOrderBy
    , hclProject
    , hclFilter
    , hclPageToken
    , hclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.list@ method which the
-- 'HealthChecksList' request conforms to.
type HealthChecksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "healthChecks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HealthCheckList

-- | Retrieves the list of HealthCheck resources available to the specified
-- project.
--
-- /See:/ 'healthChecksList' smart constructor.
data HealthChecksList = HealthChecksList'
    { _hclOrderBy    :: !(Maybe Text)
    , _hclProject    :: !Text
    , _hclFilter     :: !(Maybe Text)
    , _hclPageToken  :: !(Maybe Text)
    , _hclMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hclOrderBy'
--
-- * 'hclProject'
--
-- * 'hclFilter'
--
-- * 'hclPageToken'
--
-- * 'hclMaxResults'
healthChecksList
    :: Text -- ^ 'hclProject'
    -> HealthChecksList
healthChecksList pHclProject_ =
    HealthChecksList'
    { _hclOrderBy = Nothing
    , _hclProject = pHclProject_
    , _hclFilter = Nothing
    , _hclPageToken = Nothing
    , _hclMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
hclOrderBy :: Lens' HealthChecksList (Maybe Text)
hclOrderBy
  = lens _hclOrderBy (\ s a -> s{_hclOrderBy = a})

-- | Project ID for this request.
hclProject :: Lens' HealthChecksList Text
hclProject
  = lens _hclProject (\ s a -> s{_hclProject = a})

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
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
hclFilter :: Lens' HealthChecksList (Maybe Text)
hclFilter
  = lens _hclFilter (\ s a -> s{_hclFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
hclPageToken :: Lens' HealthChecksList (Maybe Text)
hclPageToken
  = lens _hclPageToken (\ s a -> s{_hclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
hclMaxResults :: Lens' HealthChecksList Word32
hclMaxResults
  = lens _hclMaxResults
      (\ s a -> s{_hclMaxResults = a})
      . _Coerce

instance GoogleRequest HealthChecksList where
        type Rs HealthChecksList = HealthCheckList
        type Scopes HealthChecksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HealthChecksList'{..}
          = go _hclProject _hclOrderBy _hclFilter _hclPageToken
              (Just _hclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksListResource)
                      mempty
