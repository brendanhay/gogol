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
-- Module      : Network.Google.Resource.Compute.Routers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Router resource with the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.update@.
module Network.Google.Resource.Compute.Routers.Update
    (
    -- * REST Resource
      RoutersUpdateResource

    -- * Creating a Request
    , routersUpdate
    , RoutersUpdate

    -- * Request Lenses
    , ruProject
    , ruRouter
    , ruPayload
    , ruRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.update@ method which the
-- 'RoutersUpdate' request conforms to.
type RoutersUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Router :> Put '[JSON] Operation

-- | Updates the specified Router resource with the data included in the
-- request.
--
-- /See:/ 'routersUpdate' smart constructor.
data RoutersUpdate = RoutersUpdate'
    { _ruProject :: !Text
    , _ruRouter  :: !Text
    , _ruPayload :: !Router
    , _ruRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruProject'
--
-- * 'ruRouter'
--
-- * 'ruPayload'
--
-- * 'ruRegion'
routersUpdate
    :: Text -- ^ 'ruProject'
    -> Text -- ^ 'ruRouter'
    -> Router -- ^ 'ruPayload'
    -> Text -- ^ 'ruRegion'
    -> RoutersUpdate
routersUpdate pRuProject_ pRuRouter_ pRuPayload_ pRuRegion_ =
    RoutersUpdate'
    { _ruProject = pRuProject_
    , _ruRouter = pRuRouter_
    , _ruPayload = pRuPayload_
    , _ruRegion = pRuRegion_
    }

-- | Project ID for this request.
ruProject :: Lens' RoutersUpdate Text
ruProject
  = lens _ruProject (\ s a -> s{_ruProject = a})

-- | Name of the Router resource to update.
ruRouter :: Lens' RoutersUpdate Text
ruRouter = lens _ruRouter (\ s a -> s{_ruRouter = a})

-- | Multipart request metadata.
ruPayload :: Lens' RoutersUpdate Router
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | Name of the region for this request.
ruRegion :: Lens' RoutersUpdate Text
ruRegion = lens _ruRegion (\ s a -> s{_ruRegion = a})

instance GoogleRequest RoutersUpdate where
        type Rs RoutersUpdate = Operation
        type Scopes RoutersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersUpdate'{..}
          = go _ruProject _ruRegion _ruRouter (Just AltJSON)
              _ruPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersUpdateResource)
                      mempty
