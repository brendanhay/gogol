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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.update@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Update
    (
    -- * REST Resource
      HTTPSHealthChecksUpdateResource

    -- * Creating a Request
    , httpsHealthChecksUpdate
    , HTTPSHealthChecksUpdate

    -- * Request Lenses
    , hhcuProject
    , hhcuPayload
    , hhcuHTTPSHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.update@ method which the
-- 'HTTPSHealthChecksUpdate' request conforms to.
type HTTPSHealthChecksUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 Capture "httpsHealthCheck" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPSHealthCheck :>
                       Put '[JSON] Operation

-- | Updates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'httpsHealthChecksUpdate' smart constructor.
data HTTPSHealthChecksUpdate = HTTPSHealthChecksUpdate'
    { _hhcuProject          :: !Text
    , _hhcuPayload          :: !HTTPSHealthCheck
    , _hhcuHTTPSHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcuProject'
--
-- * 'hhcuPayload'
--
-- * 'hhcuHTTPSHealthCheck'
httpsHealthChecksUpdate
    :: Text -- ^ 'hhcuProject'
    -> HTTPSHealthCheck -- ^ 'hhcuPayload'
    -> Text -- ^ 'hhcuHTTPSHealthCheck'
    -> HTTPSHealthChecksUpdate
httpsHealthChecksUpdate pHhcuProject_ pHhcuPayload_ pHhcuHTTPSHealthCheck_ =
    HTTPSHealthChecksUpdate'
    { _hhcuProject = pHhcuProject_
    , _hhcuPayload = pHhcuPayload_
    , _hhcuHTTPSHealthCheck = pHhcuHTTPSHealthCheck_
    }

-- | Project ID for this request.
hhcuProject :: Lens' HTTPSHealthChecksUpdate Text
hhcuProject
  = lens _hhcuProject (\ s a -> s{_hhcuProject = a})

-- | Multipart request metadata.
hhcuPayload :: Lens' HTTPSHealthChecksUpdate HTTPSHealthCheck
hhcuPayload
  = lens _hhcuPayload (\ s a -> s{_hhcuPayload = a})

-- | Name of the HttpsHealthCheck resource to update.
hhcuHTTPSHealthCheck :: Lens' HTTPSHealthChecksUpdate Text
hhcuHTTPSHealthCheck
  = lens _hhcuHTTPSHealthCheck
      (\ s a -> s{_hhcuHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksUpdate where
        type Rs HTTPSHealthChecksUpdate = Operation
        type Scopes HTTPSHealthChecksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPSHealthChecksUpdate'{..}
          = go _hhcuProject _hhcuHTTPSHealthCheck
              (Just AltJSON)
              _hhcuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksUpdateResource)
                      mempty
