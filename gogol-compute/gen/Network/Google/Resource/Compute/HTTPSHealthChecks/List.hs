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
-- Copyright   : (c) 2015 Brendan Hay
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
    , httpsHealthChecksList'
    , HTTPSHealthChecksList'

    -- * Request Lenses
    , hhclProject
    , hhclFilter
    , hhclPageToken
    , hhclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.list@ method which the
-- 'HTTPSHealthChecksList'' request conforms to.
type HTTPSHealthChecksListResource =
     Capture "project" Text :>
       "global" :>
         "httpsHealthChecks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] HTTPSHealthCheckList

-- | Retrieves the list of HttpsHealthCheck resources available to the
-- specified project.
--
-- /See:/ 'httpsHealthChecksList'' smart constructor.
data HTTPSHealthChecksList' = HTTPSHealthChecksList'
    { _hhclProject    :: !Text
    , _hhclFilter     :: !(Maybe Text)
    , _hhclPageToken  :: !(Maybe Text)
    , _hhclMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhclProject'
--
-- * 'hhclFilter'
--
-- * 'hhclPageToken'
--
-- * 'hhclMaxResults'
httpsHealthChecksList'
    :: Text -- ^ 'hhclProject'
    -> HTTPSHealthChecksList'
httpsHealthChecksList' pHhclProject_ =
    HTTPSHealthChecksList'
    { _hhclProject = pHhclProject_
    , _hhclFilter = Nothing
    , _hhclPageToken = Nothing
    , _hhclMaxResults = 500
    }

-- | Name of the project scoping this request.
hhclProject :: Lens' HTTPSHealthChecksList' Text
hhclProject
  = lens _hhclProject (\ s a -> s{_hhclProject = a})

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
hhclFilter :: Lens' HTTPSHealthChecksList' (Maybe Text)
hhclFilter
  = lens _hhclFilter (\ s a -> s{_hhclFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
hhclPageToken :: Lens' HTTPSHealthChecksList' (Maybe Text)
hhclPageToken
  = lens _hhclPageToken
      (\ s a -> s{_hhclPageToken = a})

-- | Maximum count of results to be returned.
hhclMaxResults :: Lens' HTTPSHealthChecksList' Word32
hhclMaxResults
  = lens _hhclMaxResults
      (\ s a -> s{_hhclMaxResults = a})

instance GoogleRequest HTTPSHealthChecksList' where
        type Rs HTTPSHealthChecksList' = HTTPSHealthCheckList
        requestClient HTTPSHealthChecksList'{..}
          = go _hhclProject _hhclFilter _hhclPageToken
              (Just _hhclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksListResource)
                      mempty
