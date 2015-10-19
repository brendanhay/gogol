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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetHttpsProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPSProxiesList@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.List
    (
    -- * REST Resource
      TargetHTTPSProxiesListResource

    -- * Creating a Request
    , targetHTTPSProxiesList'
    , TargetHTTPSProxiesList'

    -- * Request Lenses
    , thplProject
    , thplFilter
    , thplPageToken
    , thplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPSProxiesList@ method which the
-- 'TargetHTTPSProxiesList'' request conforms to.
type TargetHTTPSProxiesListResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpsProxies" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TargetHTTPSProxyList

-- | Retrieves the list of TargetHttpsProxy resources available to the
-- specified project.
--
-- /See:/ 'targetHTTPSProxiesList'' smart constructor.
data TargetHTTPSProxiesList' = TargetHTTPSProxiesList'
    { _thplProject    :: !Text
    , _thplFilter     :: !(Maybe Text)
    , _thplPageToken  :: !(Maybe Text)
    , _thplMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thplProject'
--
-- * 'thplFilter'
--
-- * 'thplPageToken'
--
-- * 'thplMaxResults'
targetHTTPSProxiesList'
    :: Text -- ^ 'project'
    -> TargetHTTPSProxiesList'
targetHTTPSProxiesList' pThplProject_ =
    TargetHTTPSProxiesList'
    { _thplProject = pThplProject_
    , _thplFilter = Nothing
    , _thplPageToken = Nothing
    , _thplMaxResults = 500
    }

-- | Name of the project scoping this request.
thplProject :: Lens' TargetHTTPSProxiesList' Text
thplProject
  = lens _thplProject (\ s a -> s{_thplProject = a})

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
thplFilter :: Lens' TargetHTTPSProxiesList' (Maybe Text)
thplFilter
  = lens _thplFilter (\ s a -> s{_thplFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
thplPageToken :: Lens' TargetHTTPSProxiesList' (Maybe Text)
thplPageToken
  = lens _thplPageToken
      (\ s a -> s{_thplPageToken = a})

-- | Maximum count of results to be returned.
thplMaxResults :: Lens' TargetHTTPSProxiesList' Word32
thplMaxResults
  = lens _thplMaxResults
      (\ s a -> s{_thplMaxResults = a})

instance GoogleRequest TargetHTTPSProxiesList' where
        type Rs TargetHTTPSProxiesList' =
             TargetHTTPSProxyList
        requestClient TargetHTTPSProxiesList'{..}
          = go _thplProject _thplFilter _thplPageToken
              (Just _thplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPSProxiesListResource)
                      mempty
