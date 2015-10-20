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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.list@.
module Network.Google.Resource.Compute.HTTPHealthChecks.List
    (
    -- * REST Resource
      HTTPHealthChecksListResource

    -- * Creating a Request
    , hTTPHealthChecksList
    , HTTPHealthChecksList

    -- * Request Lenses
    , httphclProject
    , httphclFilter
    , httphclPageToken
    , httphclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.list@ method which the
-- 'HTTPHealthChecksList' request conforms to.
type HTTPHealthChecksListResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] HTTPHealthCheckList

-- | Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ 'hTTPHealthChecksList' smart constructor.
data HTTPHealthChecksList = HTTPHealthChecksList
    { _httphclProject    :: !Text
    , _httphclFilter     :: !(Maybe Text)
    , _httphclPageToken  :: !(Maybe Text)
    , _httphclMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphclProject'
--
-- * 'httphclFilter'
--
-- * 'httphclPageToken'
--
-- * 'httphclMaxResults'
hTTPHealthChecksList
    :: Text -- ^ 'httphclProject'
    -> HTTPHealthChecksList
hTTPHealthChecksList pHttphclProject_ =
    HTTPHealthChecksList
    { _httphclProject = pHttphclProject_
    , _httphclFilter = Nothing
    , _httphclPageToken = Nothing
    , _httphclMaxResults = 500
    }

-- | Name of the project scoping this request.
httphclProject :: Lens' HTTPHealthChecksList Text
httphclProject
  = lens _httphclProject
      (\ s a -> s{_httphclProject = a})

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
httphclFilter :: Lens' HTTPHealthChecksList (Maybe Text)
httphclFilter
  = lens _httphclFilter
      (\ s a -> s{_httphclFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
httphclPageToken :: Lens' HTTPHealthChecksList (Maybe Text)
httphclPageToken
  = lens _httphclPageToken
      (\ s a -> s{_httphclPageToken = a})

-- | Maximum count of results to be returned.
httphclMaxResults :: Lens' HTTPHealthChecksList Word32
httphclMaxResults
  = lens _httphclMaxResults
      (\ s a -> s{_httphclMaxResults = a})

instance GoogleRequest HTTPHealthChecksList where
        type Rs HTTPHealthChecksList = HTTPHealthCheckList
        requestClient HTTPHealthChecksList{..}
          = go _httphclProject _httphclFilter _httphclPageToken
              (Just _httphclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksListResource)
                      mempty
