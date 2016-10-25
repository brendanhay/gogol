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
-- Module      : Network.Google.Resource.Compute.Routers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Router resource in the specified project and region using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.insert@.
module Network.Google.Resource.Compute.Routers.Insert
    (
    -- * REST Resource
      RoutersInsertResource

    -- * Creating a Request
    , routersInsert
    , RoutersInsert

    -- * Request Lenses
    , riProject
    , riPayload
    , riRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.insert@ method which the
-- 'RoutersInsert' request conforms to.
type RoutersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Router :> Post '[JSON] Operation

-- | Creates a Router resource in the specified project and region using the
-- data included in the request.
--
-- /See:/ 'routersInsert' smart constructor.
data RoutersInsert = RoutersInsert'
    { _riProject :: !Text
    , _riPayload :: !Router
    , _riRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riProject'
--
-- * 'riPayload'
--
-- * 'riRegion'
routersInsert
    :: Text -- ^ 'riProject'
    -> Router -- ^ 'riPayload'
    -> Text -- ^ 'riRegion'
    -> RoutersInsert
routersInsert pRiProject_ pRiPayload_ pRiRegion_ =
    RoutersInsert'
    { _riProject = pRiProject_
    , _riPayload = pRiPayload_
    , _riRegion = pRiRegion_
    }

-- | Project ID for this request.
riProject :: Lens' RoutersInsert Text
riProject
  = lens _riProject (\ s a -> s{_riProject = a})

-- | Multipart request metadata.
riPayload :: Lens' RoutersInsert Router
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | Name of the region for this request.
riRegion :: Lens' RoutersInsert Text
riRegion = lens _riRegion (\ s a -> s{_riRegion = a})

instance GoogleRequest RoutersInsert where
        type Rs RoutersInsert = Operation
        type Scopes RoutersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersInsert'{..}
          = go _riProject _riRegion (Just AltJSON) _riPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersInsertResource)
                      mempty
