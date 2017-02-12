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
-- Module      : Network.Google.Resource.Compute.Routes.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Route resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.insert@.
module Network.Google.Resource.Compute.Routes.Insert
    (
    -- * REST Resource
      RoutesInsertResource

    -- * Creating a Request
    , routesInsert
    , RoutesInsert

    -- * Request Lenses
    , rouProject
    , rouPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routes.insert@ method which the
-- 'RoutesInsert' request conforms to.
type RoutesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Route :> Post '[JSON] Operation

-- | Creates a Route resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'routesInsert' smart constructor.
data RoutesInsert = RoutesInsert'
    { _rouProject :: !Text
    , _rouPayload :: !Route
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouProject'
--
-- * 'rouPayload'
routesInsert
    :: Text -- ^ 'rouProject'
    -> Route -- ^ 'rouPayload'
    -> RoutesInsert
routesInsert pRouProject_ pRouPayload_ =
    RoutesInsert'
    { _rouProject = pRouProject_
    , _rouPayload = pRouPayload_
    }

-- | Project ID for this request.
rouProject :: Lens' RoutesInsert Text
rouProject
  = lens _rouProject (\ s a -> s{_rouProject = a})

-- | Multipart request metadata.
rouPayload :: Lens' RoutesInsert Route
rouPayload
  = lens _rouPayload (\ s a -> s{_rouPayload = a})

instance GoogleRequest RoutesInsert where
        type Rs RoutesInsert = Operation
        type Scopes RoutesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutesInsert'{..}
          = go _rouProject (Just AltJSON) _rouPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesInsertResource)
                      mempty
