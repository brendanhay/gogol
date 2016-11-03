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
-- Module      : Network.Google.Resource.Compute.Routers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Router resources available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.list@.
module Network.Google.Resource.Compute.Routers.List
    (
    -- * REST Resource
      RoutersListResource

    -- * Creating a Request
    , routersList
    , RoutersList

    -- * Request Lenses
    , rlOrderBy
    , rlProject
    , rlFilter
    , rlRegion
    , rlPageToken
    , rlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.list@ method which the
-- 'RoutersList' request conforms to.
type RoutersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] RouterList

-- | Retrieves a list of Router resources available to the specified project.
--
-- /See:/ 'routersList' smart constructor.
data RoutersList = RoutersList'
    { _rlOrderBy    :: !(Maybe Text)
    , _rlProject    :: !Text
    , _rlFilter     :: !(Maybe Text)
    , _rlRegion     :: !Text
    , _rlPageToken  :: !(Maybe Text)
    , _rlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlOrderBy'
--
-- * 'rlProject'
--
-- * 'rlFilter'
--
-- * 'rlRegion'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
routersList
    :: Text -- ^ 'rlProject'
    -> Text -- ^ 'rlRegion'
    -> RoutersList
routersList pRlProject_ pRlRegion_ =
    RoutersList'
    { _rlOrderBy = Nothing
    , _rlProject = pRlProject_
    , _rlFilter = Nothing
    , _rlRegion = pRlRegion_
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rlOrderBy :: Lens' RoutersList (Maybe Text)
rlOrderBy
  = lens _rlOrderBy (\ s a -> s{_rlOrderBy = a})

-- | Project ID for this request.
rlProject :: Lens' RoutersList Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

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
rlFilter :: Lens' RoutersList (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Name of the region for this request.
rlRegion :: Lens' RoutersList Text
rlRegion = lens _rlRegion (\ s a -> s{_rlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rlPageToken :: Lens' RoutersList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rlMaxResults :: Lens' RoutersList Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

instance GoogleRequest RoutersList where
        type Rs RoutersList = RouterList
        type Scopes RoutersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersList'{..}
          = go _rlProject _rlRegion _rlOrderBy _rlFilter
              _rlPageToken
              (Just _rlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersListResource)
                      mempty
