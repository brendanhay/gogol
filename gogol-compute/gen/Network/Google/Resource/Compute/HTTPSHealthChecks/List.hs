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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HttpsHealthCheck resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.list@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.List
    (
    -- * REST Resource
      HTTPSHealthChecksListResource

    -- * Creating a Request
    , httpsHealthChecksList
    , HTTPSHealthChecksList

    -- * Request Lenses
    , hhclOrderBy
    , hhclProject
    , hhclFilter
    , hhclPageToken
    , hhclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.list@ method which the
-- 'HTTPSHealthChecksList' request conforms to.
type HTTPSHealthChecksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HTTPSHealthCheckList

-- | Retrieves the list of HttpsHealthCheck resources available to the
-- specified project.
--
-- /See:/ 'httpsHealthChecksList' smart constructor.
data HTTPSHealthChecksList = HTTPSHealthChecksList'
    { _hhclOrderBy    :: !(Maybe Text)
    , _hhclProject    :: !Text
    , _hhclFilter     :: !(Maybe Text)
    , _hhclPageToken  :: !(Maybe Text)
    , _hhclMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhclOrderBy'
--
-- * 'hhclProject'
--
-- * 'hhclFilter'
--
-- * 'hhclPageToken'
--
-- * 'hhclMaxResults'
httpsHealthChecksList
    :: Text -- ^ 'hhclProject'
    -> HTTPSHealthChecksList
httpsHealthChecksList pHhclProject_ =
    HTTPSHealthChecksList'
    { _hhclOrderBy = Nothing
    , _hhclProject = pHhclProject_
    , _hhclFilter = Nothing
    , _hhclPageToken = Nothing
    , _hhclMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
hhclOrderBy :: Lens' HTTPSHealthChecksList (Maybe Text)
hhclOrderBy
  = lens _hhclOrderBy (\ s a -> s{_hhclOrderBy = a})

-- | Project ID for this request.
hhclProject :: Lens' HTTPSHealthChecksList Text
hhclProject
  = lens _hhclProject (\ s a -> s{_hhclProject = a})

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
hhclFilter :: Lens' HTTPSHealthChecksList (Maybe Text)
hhclFilter
  = lens _hhclFilter (\ s a -> s{_hhclFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
hhclPageToken :: Lens' HTTPSHealthChecksList (Maybe Text)
hhclPageToken
  = lens _hhclPageToken
      (\ s a -> s{_hhclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
hhclMaxResults :: Lens' HTTPSHealthChecksList Word32
hhclMaxResults
  = lens _hhclMaxResults
      (\ s a -> s{_hhclMaxResults = a})
      . _Coerce

instance GoogleRequest HTTPSHealthChecksList where
        type Rs HTTPSHealthChecksList = HTTPSHealthCheckList
        type Scopes HTTPSHealthChecksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HTTPSHealthChecksList'{..}
          = go _hhclProject _hhclOrderBy _hhclFilter
              _hhclPageToken
              (Just _hhclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksListResource)
                      mempty
