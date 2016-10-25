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
-- Module      : Network.Google.Resource.Compute.Networks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of networks available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.list@.
module Network.Google.Resource.Compute.Networks.List
    (
    -- * REST Resource
      NetworksListResource

    -- * Creating a Request
    , networksList
    , NetworksList

    -- * Request Lenses
    , nlOrderBy
    , nlProject
    , nlFilter
    , nlPageToken
    , nlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.list@ method which the
-- 'NetworksList' request conforms to.
type NetworksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] NetworkList

-- | Retrieves the list of networks available to the specified project.
--
-- /See:/ 'networksList' smart constructor.
data NetworksList = NetworksList'
    { _nlOrderBy    :: !(Maybe Text)
    , _nlProject    :: !Text
    , _nlFilter     :: !(Maybe Text)
    , _nlPageToken  :: !(Maybe Text)
    , _nlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlOrderBy'
--
-- * 'nlProject'
--
-- * 'nlFilter'
--
-- * 'nlPageToken'
--
-- * 'nlMaxResults'
networksList
    :: Text -- ^ 'nlProject'
    -> NetworksList
networksList pNlProject_ =
    NetworksList'
    { _nlOrderBy = Nothing
    , _nlProject = pNlProject_
    , _nlFilter = Nothing
    , _nlPageToken = Nothing
    , _nlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
nlOrderBy :: Lens' NetworksList (Maybe Text)
nlOrderBy
  = lens _nlOrderBy (\ s a -> s{_nlOrderBy = a})

-- | Project ID for this request.
nlProject :: Lens' NetworksList Text
nlProject
  = lens _nlProject (\ s a -> s{_nlProject = a})

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
nlFilter :: Lens' NetworksList (Maybe Text)
nlFilter = lens _nlFilter (\ s a -> s{_nlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
nlPageToken :: Lens' NetworksList (Maybe Text)
nlPageToken
  = lens _nlPageToken (\ s a -> s{_nlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
nlMaxResults :: Lens' NetworksList Word32
nlMaxResults
  = lens _nlMaxResults (\ s a -> s{_nlMaxResults = a})
      . _Coerce

instance GoogleRequest NetworksList where
        type Rs NetworksList = NetworkList
        type Scopes NetworksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworksList'{..}
          = go _nlProject _nlOrderBy _nlFilter _nlPageToken
              (Just _nlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksListResource)
                      mempty
