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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.insert@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
    (
    -- * REST Resource
      HTTPSHealthChecksInsertResource

    -- * Creating a Request
    , httpsHealthChecksInsert
    , HTTPSHealthChecksInsert

    -- * Request Lenses
    , hhciProject
    , hhciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.insert@ method which the
-- 'HTTPSHealthChecksInsert' request conforms to.
type HTTPSHealthChecksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] HTTPSHealthCheck :>
                     Post '[JSON] Operation

-- | Creates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'httpsHealthChecksInsert' smart constructor.
data HTTPSHealthChecksInsert = HTTPSHealthChecksInsert
    { _hhciProject :: !Text
    , _hhciPayload :: !HTTPSHealthCheck
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhciProject'
--
-- * 'hhciPayload'
httpsHealthChecksInsert
    :: Text -- ^ 'hhciProject'
    -> HTTPSHealthCheck -- ^ 'hhciPayload'
    -> HTTPSHealthChecksInsert
httpsHealthChecksInsert pHhciProject_ pHhciPayload_ =
    HTTPSHealthChecksInsert
    { _hhciProject = pHhciProject_
    , _hhciPayload = pHhciPayload_
    }

-- | Name of the project scoping this request.
hhciProject :: Lens' HTTPSHealthChecksInsert Text
hhciProject
  = lens _hhciProject (\ s a -> s{_hhciProject = a})

-- | Multipart request metadata.
hhciPayload :: Lens' HTTPSHealthChecksInsert HTTPSHealthCheck
hhciPayload
  = lens _hhciPayload (\ s a -> s{_hhciPayload = a})

instance GoogleRequest HTTPSHealthChecksInsert where
        type Rs HTTPSHealthChecksInsert = Operation
        requestClient HTTPSHealthChecksInsert{..}
          = go _hhciProject (Just AltJSON) _hhciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksInsertResource)
                      mempty
