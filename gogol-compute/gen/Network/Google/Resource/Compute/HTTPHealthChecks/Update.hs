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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.update@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Update
    (
    -- * REST Resource
      HTTPHealthChecksUpdateResource

    -- * Creating a Request
    , hTTPHealthChecksUpdate
    , HTTPHealthChecksUpdate

    -- * Request Lenses
    , httphcuProject
    , httphcuPayload
    , httphcuHTTPHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.update@ method which the
-- 'HTTPHealthChecksUpdate' request conforms to.
type HTTPHealthChecksUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPHealthCheck :>
                       Put '[JSON] Operation

-- | Updates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksUpdate' smart constructor.
data HTTPHealthChecksUpdate = HTTPHealthChecksUpdate
    { _httphcuProject         :: !Text
    , _httphcuPayload         :: !HTTPHealthCheck
    , _httphcuHTTPHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcuProject'
--
-- * 'httphcuPayload'
--
-- * 'httphcuHTTPHealthCheck'
hTTPHealthChecksUpdate
    :: Text -- ^ 'httphcuProject'
    -> HTTPHealthCheck -- ^ 'httphcuPayload'
    -> Text -- ^ 'httphcuHTTPHealthCheck'
    -> HTTPHealthChecksUpdate
hTTPHealthChecksUpdate pHttphcuProject_ pHttphcuPayload_ pHttphcuHTTPHealthCheck_ =
    HTTPHealthChecksUpdate
    { _httphcuProject = pHttphcuProject_
    , _httphcuPayload = pHttphcuPayload_
    , _httphcuHTTPHealthCheck = pHttphcuHTTPHealthCheck_
    }

-- | Name of the project scoping this request.
httphcuProject :: Lens' HTTPHealthChecksUpdate Text
httphcuProject
  = lens _httphcuProject
      (\ s a -> s{_httphcuProject = a})

-- | Multipart request metadata.
httphcuPayload :: Lens' HTTPHealthChecksUpdate HTTPHealthCheck
httphcuPayload
  = lens _httphcuPayload
      (\ s a -> s{_httphcuPayload = a})

-- | Name of the HttpHealthCheck resource to update.
httphcuHTTPHealthCheck :: Lens' HTTPHealthChecksUpdate Text
httphcuHTTPHealthCheck
  = lens _httphcuHTTPHealthCheck
      (\ s a -> s{_httphcuHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksUpdate where
        type Rs HTTPHealthChecksUpdate = Operation
        requestClient HTTPHealthChecksUpdate{..}
          = go _httphcuProject _httphcuHTTPHealthCheck
              (Just AltJSON)
              _httphcuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksUpdateResource)
                      mempty
