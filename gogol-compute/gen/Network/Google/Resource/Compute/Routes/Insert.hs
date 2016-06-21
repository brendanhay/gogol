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
    , riProject
    , riPayload
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
    { _riProject :: !Text
    , _riPayload :: !Route
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riProject'
--
-- * 'riPayload'
routesInsert
    :: Text -- ^ 'riProject'
    -> Route -- ^ 'riPayload'
    -> RoutesInsert
routesInsert pRiProject_ pRiPayload_ =
    RoutesInsert'
    { _riProject = pRiProject_
    , _riPayload = pRiPayload_
    }

-- | Project ID for this request.
riProject :: Lens' RoutesInsert Text
riProject
  = lens _riProject (\ s a -> s{_riProject = a})

-- | Multipart request metadata.
riPayload :: Lens' RoutesInsert Route
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

instance GoogleRequest RoutesInsert where
        type Rs RoutesInsert = Operation
        type Scopes RoutesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutesInsert'{..}
          = go _riProject (Just AltJSON) _riPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesInsertResource)
                      mempty
