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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.list@.
module Network.Google.Resource.Compute.TargetHTTPProxies.List
    (
    -- * REST Resource
      TargetHTTPProxiesListResource

    -- * Creating a Request
    , targetHTTPProxiesList
    , TargetHTTPProxiesList

    -- * Request Lenses
    , thttpplProject
    , thttpplFilter
    , thttpplPageToken
    , thttpplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.list@ method which the
-- 'TargetHTTPProxiesList' request conforms to.
type TargetHTTPProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetHttpProxies" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TargetHTTPProxyList

-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ 'targetHTTPProxiesList' smart constructor.
data TargetHTTPProxiesList = TargetHTTPProxiesList'
    { _thttpplProject    :: !Text
    , _thttpplFilter     :: !(Maybe Text)
    , _thttpplPageToken  :: !(Maybe Text)
    , _thttpplMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttpplProject'
--
-- * 'thttpplFilter'
--
-- * 'thttpplPageToken'
--
-- * 'thttpplMaxResults'
targetHTTPProxiesList
    :: Text -- ^ 'thttpplProject'
    -> TargetHTTPProxiesList
targetHTTPProxiesList pThttpplProject_ =
    TargetHTTPProxiesList'
    { _thttpplProject = pThttpplProject_
    , _thttpplFilter = Nothing
    , _thttpplPageToken = Nothing
    , _thttpplMaxResults = 500
    }

-- | Project ID for this request.
thttpplProject :: Lens' TargetHTTPProxiesList Text
thttpplProject
  = lens _thttpplProject
      (\ s a -> s{_thttpplProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
thttpplFilter :: Lens' TargetHTTPProxiesList (Maybe Text)
thttpplFilter
  = lens _thttpplFilter
      (\ s a -> s{_thttpplFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
thttpplPageToken :: Lens' TargetHTTPProxiesList (Maybe Text)
thttpplPageToken
  = lens _thttpplPageToken
      (\ s a -> s{_thttpplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
thttpplMaxResults :: Lens' TargetHTTPProxiesList Word32
thttpplMaxResults
  = lens _thttpplMaxResults
      (\ s a -> s{_thttpplMaxResults = a})
      . _Coerce

instance GoogleRequest TargetHTTPProxiesList where
        type Rs TargetHTTPProxiesList = TargetHTTPProxyList
        type Scopes TargetHTTPProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetHTTPProxiesList'{..}
          = go _thttpplProject _thttpplFilter _thttpplPageToken
              (Just _thttpplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesListResource)
                      mempty
