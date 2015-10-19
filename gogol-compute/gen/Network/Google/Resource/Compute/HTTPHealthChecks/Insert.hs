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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.insert@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Insert
    (
    -- * REST Resource
      HTTPHealthChecksInsertResource

    -- * Creating a Request
    , hTTPHealthChecksInsert'
    , HTTPHealthChecksInsert'

    -- * Request Lenses
    , httphciProject
    , httphciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.insert@ method which the
-- 'HTTPHealthChecksInsert'' request conforms to.
type HTTPHealthChecksInsertResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] HTTPHealthCheck :>
               Post '[JSON] Operation

-- | Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksInsert'' smart constructor.
data HTTPHealthChecksInsert' = HTTPHealthChecksInsert'
    { _httphciProject :: !Text
    , _httphciPayload :: !HTTPHealthCheck
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphciProject'
--
-- * 'httphciPayload'
hTTPHealthChecksInsert'
    :: Text -- ^ 'httphciProject'
    -> HTTPHealthCheck -- ^ 'httphciPayload'
    -> HTTPHealthChecksInsert'
hTTPHealthChecksInsert' pHttphciProject_ pHttphciPayload_ =
    HTTPHealthChecksInsert'
    { _httphciProject = pHttphciProject_
    , _httphciPayload = pHttphciPayload_
    }

-- | Name of the project scoping this request.
httphciProject :: Lens' HTTPHealthChecksInsert' Text
httphciProject
  = lens _httphciProject
      (\ s a -> s{_httphciProject = a})

-- | Multipart request metadata.
httphciPayload :: Lens' HTTPHealthChecksInsert' HTTPHealthCheck
httphciPayload
  = lens _httphciPayload
      (\ s a -> s{_httphciPayload = a})

instance GoogleRequest HTTPHealthChecksInsert' where
        type Rs HTTPHealthChecksInsert' = Operation
        requestClient HTTPHealthChecksInsert'{..}
          = go _httphciProject (Just AltJSON) _httphciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksInsertResource)
                      mempty
