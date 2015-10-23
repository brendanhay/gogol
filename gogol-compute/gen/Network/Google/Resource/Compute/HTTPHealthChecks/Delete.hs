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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HttpHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.delete@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Delete
    (
    -- * REST Resource
      HTTPHealthChecksDeleteResource

    -- * Creating a Request
    , hTTPHealthChecksDelete
    , HTTPHealthChecksDelete

    -- * Request Lenses
    , httphcdProject
    , httphcdHTTPHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.delete@ method which the
-- 'HTTPHealthChecksDelete' request conforms to.
type HTTPHealthChecksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksDelete' smart constructor.
data HTTPHealthChecksDelete = HTTPHealthChecksDelete
    { _httphcdProject         :: !Text
    , _httphcdHTTPHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcdProject'
--
-- * 'httphcdHTTPHealthCheck'
hTTPHealthChecksDelete
    :: Text -- ^ 'httphcdProject'
    -> Text -- ^ 'httphcdHTTPHealthCheck'
    -> HTTPHealthChecksDelete
hTTPHealthChecksDelete pHttphcdProject_ pHttphcdHTTPHealthCheck_ =
    HTTPHealthChecksDelete
    { _httphcdProject = pHttphcdProject_
    , _httphcdHTTPHealthCheck = pHttphcdHTTPHealthCheck_
    }

-- | Name of the project scoping this request.
httphcdProject :: Lens' HTTPHealthChecksDelete Text
httphcdProject
  = lens _httphcdProject
      (\ s a -> s{_httphcdProject = a})

-- | Name of the HttpHealthCheck resource to delete.
httphcdHTTPHealthCheck :: Lens' HTTPHealthChecksDelete Text
httphcdHTTPHealthCheck
  = lens _httphcdHTTPHealthCheck
      (\ s a -> s{_httphcdHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksDelete where
        type Rs HTTPHealthChecksDelete = Operation
        requestClient HTTPHealthChecksDelete{..}
          = go _httphcdProject _httphcdHTTPHealthCheck
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksDeleteResource)
                      mempty
