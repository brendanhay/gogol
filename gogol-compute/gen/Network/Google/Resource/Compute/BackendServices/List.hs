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
-- Module      : Network.Google.Resource.Compute.BackendServices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of BackendService resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.list@.
module Network.Google.Resource.Compute.BackendServices.List
    (
    -- * REST Resource
      BackendServicesListResource

    -- * Creating a Request
    , backendServicesList
    , BackendServicesList

    -- * Request Lenses
    , bslProject
    , bslFilter
    , bslPageToken
    , bslMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.list@ method which the
-- 'BackendServicesList' request conforms to.
type BackendServicesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BackendServiceList

-- | Retrieves the list of BackendService resources available to the
-- specified project.
--
-- /See:/ 'backendServicesList' smart constructor.
data BackendServicesList = BackendServicesList
    { _bslProject    :: !Text
    , _bslFilter     :: !(Maybe Text)
    , _bslPageToken  :: !(Maybe Text)
    , _bslMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bslProject'
--
-- * 'bslFilter'
--
-- * 'bslPageToken'
--
-- * 'bslMaxResults'
backendServicesList
    :: Text -- ^ 'bslProject'
    -> BackendServicesList
backendServicesList pBslProject_ =
    BackendServicesList
    { _bslProject = pBslProject_
    , _bslFilter = Nothing
    , _bslPageToken = Nothing
    , _bslMaxResults = 500
    }

-- | Project ID for this request.
bslProject :: Lens' BackendServicesList Text
bslProject
  = lens _bslProject (\ s a -> s{_bslProject = a})

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
bslFilter :: Lens' BackendServicesList (Maybe Text)
bslFilter
  = lens _bslFilter (\ s a -> s{_bslFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
bslPageToken :: Lens' BackendServicesList (Maybe Text)
bslPageToken
  = lens _bslPageToken (\ s a -> s{_bslPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
bslMaxResults :: Lens' BackendServicesList Word32
bslMaxResults
  = lens _bslMaxResults
      (\ s a -> s{_bslMaxResults = a})
      . _Coerce

instance GoogleRequest BackendServicesList where
        type Rs BackendServicesList = BackendServiceList
        requestClient BackendServicesList{..}
          = go _bslProject _bslFilter _bslPageToken
              (Just _bslMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesListResource)
                      mempty
