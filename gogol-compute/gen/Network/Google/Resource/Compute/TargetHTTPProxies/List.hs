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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesList@.
module Network.Google.Resource.Compute.TargetHTTPProxies.List
    (
    -- * REST Resource
      TargetHTTPProxiesListResource

    -- * Creating a Request
    , targetHTTPProxiesList'
    , TargetHTTPProxiesList'

    -- * Request Lenses
    , thttpplProject
    , thttpplFilter
    , thttpplPageToken
    , thttpplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesList@ method which the
-- 'TargetHTTPProxiesList'' request conforms to.
type TargetHTTPProxiesListResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TargetHTTPProxyList

-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ 'targetHTTPProxiesList'' smart constructor.
data TargetHTTPProxiesList' = TargetHTTPProxiesList'
    { _thttpplProject    :: !Text
    , _thttpplFilter     :: !(Maybe Text)
    , _thttpplPageToken  :: !(Maybe Text)
    , _thttpplMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesList'' with the minimum fields required to make a request.
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
targetHTTPProxiesList'
    :: Text -- ^ 'project'
    -> TargetHTTPProxiesList'
targetHTTPProxiesList' pThttpplProject_ =
    TargetHTTPProxiesList'
    { _thttpplProject = pThttpplProject_
    , _thttpplFilter = Nothing
    , _thttpplPageToken = Nothing
    , _thttpplMaxResults = 500
    }

-- | Name of the project scoping this request.
thttpplProject :: Lens' TargetHTTPProxiesList' Text
thttpplProject
  = lens _thttpplProject
      (\ s a -> s{_thttpplProject = a})

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
thttpplFilter :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplFilter
  = lens _thttpplFilter
      (\ s a -> s{_thttpplFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
thttpplPageToken :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplPageToken
  = lens _thttpplPageToken
      (\ s a -> s{_thttpplPageToken = a})

-- | Maximum count of results to be returned.
thttpplMaxResults :: Lens' TargetHTTPProxiesList' Word32
thttpplMaxResults
  = lens _thttpplMaxResults
      (\ s a -> s{_thttpplMaxResults = a})

instance GoogleRequest TargetHTTPProxiesList' where
        type Rs TargetHTTPProxiesList' = TargetHTTPProxyList
        requestClient TargetHTTPProxiesList'{..}
          = go _thttpplProject _thttpplFilter _thttpplPageToken
              (Just _thttpplMaxResults)
              (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesListResource)
                      mempty
