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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HttpHealthCheck resource. Get a list of available
-- HTTP health checks by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.get@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Get
    (
    -- * REST Resource
      HTTPHealthChecksGetResource

    -- * Creating a Request
    , hTTPHealthChecksGet
    , HTTPHealthChecksGet

    -- * Request Lenses
    , httphcgProject
    , httphcgHTTPHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.get@ method which the
-- 'HTTPHealthChecksGet' request conforms to.
type HTTPHealthChecksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] HTTPHealthCheck

-- | Returns the specified HttpHealthCheck resource. Get a list of available
-- HTTP health checks by making a list() request.
--
-- /See:/ 'hTTPHealthChecksGet' smart constructor.
data HTTPHealthChecksGet = HTTPHealthChecksGet
    { _httphcgProject         :: !Text
    , _httphcgHTTPHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcgProject'
--
-- * 'httphcgHTTPHealthCheck'
hTTPHealthChecksGet
    :: Text -- ^ 'httphcgProject'
    -> Text -- ^ 'httphcgHTTPHealthCheck'
    -> HTTPHealthChecksGet
hTTPHealthChecksGet pHttphcgProject_ pHttphcgHTTPHealthCheck_ =
    HTTPHealthChecksGet
    { _httphcgProject = pHttphcgProject_
    , _httphcgHTTPHealthCheck = pHttphcgHTTPHealthCheck_
    }

-- | Project ID for this request.
httphcgProject :: Lens' HTTPHealthChecksGet Text
httphcgProject
  = lens _httphcgProject
      (\ s a -> s{_httphcgProject = a})

-- | Name of the HttpHealthCheck resource to return.
httphcgHTTPHealthCheck :: Lens' HTTPHealthChecksGet Text
httphcgHTTPHealthCheck
  = lens _httphcgHTTPHealthCheck
      (\ s a -> s{_httphcgHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksGet where
        type Rs HTTPHealthChecksGet = HTTPHealthCheck
        type Scopes HTTPHealthChecksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HTTPHealthChecksGet{..}
          = go _httphcgProject _httphcgHTTPHealthCheck
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksGetResource)
                      mempty
