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
-- Module      : Network.Google.Resource.Compute.Routers.Preview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Preview fields auto-generated during router create and update
-- operations. Calling this method does NOT create or update the router.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.preview@.
module Network.Google.Resource.Compute.Routers.Preview
    (
    -- * REST Resource
      RoutersPreviewResource

    -- * Creating a Request
    , routersPreview
    , RoutersPreview

    -- * Request Lenses
    , rppProject
    , rppRouter
    , rppPayload
    , rppRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.preview@ method which the
-- 'RoutersPreview' request conforms to.
type RoutersPreviewResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     "preview" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Router :>
                           Post '[JSON] RoutersPreviewResponse

-- | Preview fields auto-generated during router create and update
-- operations. Calling this method does NOT create or update the router.
--
-- /See:/ 'routersPreview' smart constructor.
data RoutersPreview = RoutersPreview'
    { _rppProject :: !Text
    , _rppRouter  :: !Text
    , _rppPayload :: !Router
    , _rppRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppProject'
--
-- * 'rppRouter'
--
-- * 'rppPayload'
--
-- * 'rppRegion'
routersPreview
    :: Text -- ^ 'rppProject'
    -> Text -- ^ 'rppRouter'
    -> Router -- ^ 'rppPayload'
    -> Text -- ^ 'rppRegion'
    -> RoutersPreview
routersPreview pRppProject_ pRppRouter_ pRppPayload_ pRppRegion_ =
    RoutersPreview'
    { _rppProject = pRppProject_
    , _rppRouter = pRppRouter_
    , _rppPayload = pRppPayload_
    , _rppRegion = pRppRegion_
    }

-- | Project ID for this request.
rppProject :: Lens' RoutersPreview Text
rppProject
  = lens _rppProject (\ s a -> s{_rppProject = a})

-- | Name of the Router resource to query.
rppRouter :: Lens' RoutersPreview Text
rppRouter
  = lens _rppRouter (\ s a -> s{_rppRouter = a})

-- | Multipart request metadata.
rppPayload :: Lens' RoutersPreview Router
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | Name of the region for this request.
rppRegion :: Lens' RoutersPreview Text
rppRegion
  = lens _rppRegion (\ s a -> s{_rppRegion = a})

instance GoogleRequest RoutersPreview where
        type Rs RoutersPreview = RoutersPreviewResponse
        type Scopes RoutersPreview =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersPreview'{..}
          = go _rppProject _rppRegion _rppRouter (Just AltJSON)
              _rppPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersPreviewResource)
                      mempty
