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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesInsert@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Insert
    (
    -- * REST Resource
      TargetHTTPProxiesInsertResource

    -- * Creating a Request
    , targetHTTPProxiesInsert'
    , TargetHTTPProxiesInsert'

    -- * Request Lenses
    , thttppiProject
    , thttppiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesInsert@ method which the
-- 'TargetHTTPProxiesInsert'' request conforms to.
type TargetHTTPProxiesInsertResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] TargetHTTPProxy :>
               Post '[JSON] Operation

-- | Creates a TargetHttpProxy resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'targetHTTPProxiesInsert'' smart constructor.
data TargetHTTPProxiesInsert' = TargetHTTPProxiesInsert'
    { _thttppiProject :: !Text
    , _thttppiPayload :: !TargetHTTPProxy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppiProject'
--
-- * 'thttppiPayload'
targetHTTPProxiesInsert'
    :: Text -- ^ 'project'
    -> TargetHTTPProxy -- ^ 'payload'
    -> TargetHTTPProxiesInsert'
targetHTTPProxiesInsert' pThttppiProject_ pThttppiPayload_ =
    TargetHTTPProxiesInsert'
    { _thttppiProject = pThttppiProject_
    , _thttppiPayload = pThttppiPayload_
    }

-- | Name of the project scoping this request.
thttppiProject :: Lens' TargetHTTPProxiesInsert' Text
thttppiProject
  = lens _thttppiProject
      (\ s a -> s{_thttppiProject = a})

-- | Multipart request metadata.
thttppiPayload :: Lens' TargetHTTPProxiesInsert' TargetHTTPProxy
thttppiPayload
  = lens _thttppiPayload
      (\ s a -> s{_thttppiPayload = a})

instance GoogleRequest TargetHTTPProxiesInsert' where
        type Rs TargetHTTPProxiesInsert' = Operation
        requestClient TargetHTTPProxiesInsert'{..}
          = go _thttppiProject (Just AltJSON) _thttppiPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy TargetHTTPProxiesInsertResource)
                      mempty
