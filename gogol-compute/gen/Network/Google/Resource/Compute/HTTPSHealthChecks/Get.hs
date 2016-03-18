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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HttpsHealthCheck resource. Get a list of available
-- HTTPS health checks by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.get@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Get
    (
    -- * REST Resource
      HTTPSHealthChecksGetResource

    -- * Creating a Request
    , httpsHealthChecksGet
    , HTTPSHealthChecksGet

    -- * Request Lenses
    , hhcgProject
    , hhcgHTTPSHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.get@ method which the
-- 'HTTPSHealthChecksGet' request conforms to.
type HTTPSHealthChecksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 Capture "httpsHealthCheck" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] HTTPSHealthCheck

-- | Returns the specified HttpsHealthCheck resource. Get a list of available
-- HTTPS health checks by making a list() request.
--
-- /See:/ 'httpsHealthChecksGet' smart constructor.
data HTTPSHealthChecksGet = HTTPSHealthChecksGet
    { _hhcgProject          :: !Text
    , _hhcgHTTPSHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcgProject'
--
-- * 'hhcgHTTPSHealthCheck'
httpsHealthChecksGet
    :: Text -- ^ 'hhcgProject'
    -> Text -- ^ 'hhcgHTTPSHealthCheck'
    -> HTTPSHealthChecksGet
httpsHealthChecksGet pHhcgProject_ pHhcgHTTPSHealthCheck_ =
    HTTPSHealthChecksGet
    { _hhcgProject = pHhcgProject_
    , _hhcgHTTPSHealthCheck = pHhcgHTTPSHealthCheck_
    }

-- | Project ID for this request.
hhcgProject :: Lens' HTTPSHealthChecksGet Text
hhcgProject
  = lens _hhcgProject (\ s a -> s{_hhcgProject = a})

-- | Name of the HttpsHealthCheck resource to return.
hhcgHTTPSHealthCheck :: Lens' HTTPSHealthChecksGet Text
hhcgHTTPSHealthCheck
  = lens _hhcgHTTPSHealthCheck
      (\ s a -> s{_hhcgHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksGet where
        type Rs HTTPSHealthChecksGet = HTTPSHealthCheck
        requestClient HTTPSHealthChecksGet{..}
          = go _hhcgProject _hhcgHTTPSHealthCheck
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksGetResource)
                      mempty
