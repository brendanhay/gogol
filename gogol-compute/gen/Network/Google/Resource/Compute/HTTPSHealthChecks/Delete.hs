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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HttpsHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.delete@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
    (
    -- * REST Resource
      HTTPSHealthChecksDeleteResource

    -- * Creating a Request
    , httpsHealthChecksDelete'
    , HTTPSHealthChecksDelete'

    -- * Request Lenses
    , hhcdProject
    , hhcdHTTPSHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.delete@ method which the
-- 'HTTPSHealthChecksDelete'' request conforms to.
type HTTPSHealthChecksDeleteResource =
     Capture "project" Text :>
       "global" :>
         "httpsHealthChecks" :>
           Capture "httpsHealthCheck" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HttpsHealthCheck resource.
--
-- /See:/ 'httpsHealthChecksDelete'' smart constructor.
data HTTPSHealthChecksDelete' = HTTPSHealthChecksDelete'
    { _hhcdProject          :: !Text
    , _hhcdHTTPSHealthCheck :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthChecksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcdProject'
--
-- * 'hhcdHTTPSHealthCheck'
httpsHealthChecksDelete'
    :: Text -- ^ 'hhcdProject'
    -> Text -- ^ 'hhcdHTTPSHealthCheck'
    -> HTTPSHealthChecksDelete'
httpsHealthChecksDelete' pHhcdProject_ pHhcdHTTPSHealthCheck_ =
    HTTPSHealthChecksDelete'
    { _hhcdProject = pHhcdProject_
    , _hhcdHTTPSHealthCheck = pHhcdHTTPSHealthCheck_
    }

-- | Name of the project scoping this request.
hhcdProject :: Lens' HTTPSHealthChecksDelete' Text
hhcdProject
  = lens _hhcdProject (\ s a -> s{_hhcdProject = a})

-- | Name of the HttpsHealthCheck resource to delete.
hhcdHTTPSHealthCheck :: Lens' HTTPSHealthChecksDelete' Text
hhcdHTTPSHealthCheck
  = lens _hhcdHTTPSHealthCheck
      (\ s a -> s{_hhcdHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksDelete' where
        type Rs HTTPSHealthChecksDelete' = Operation
        requestClient HTTPSHealthChecksDelete'{..}
          = go _hhcdProject _hhcdHTTPSHealthCheck
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksDeleteResource)
                      mempty
