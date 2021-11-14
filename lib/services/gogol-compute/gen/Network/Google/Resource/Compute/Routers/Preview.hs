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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , rp1Project
    , rp1Router
    , rp1Payload
    , rp1Region
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
data RoutersPreview =
  RoutersPreview'
    { _rp1Project :: !Text
    , _rp1Router :: !Text
    , _rp1Payload :: !Router
    , _rp1Region :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rp1Project'
--
-- * 'rp1Router'
--
-- * 'rp1Payload'
--
-- * 'rp1Region'
routersPreview
    :: Text -- ^ 'rp1Project'
    -> Text -- ^ 'rp1Router'
    -> Router -- ^ 'rp1Payload'
    -> Text -- ^ 'rp1Region'
    -> RoutersPreview
routersPreview pRp1Project_ pRp1Router_ pRp1Payload_ pRp1Region_ =
  RoutersPreview'
    { _rp1Project = pRp1Project_
    , _rp1Router = pRp1Router_
    , _rp1Payload = pRp1Payload_
    , _rp1Region = pRp1Region_
    }


-- | Project ID for this request.
rp1Project :: Lens' RoutersPreview Text
rp1Project
  = lens _rp1Project (\ s a -> s{_rp1Project = a})

-- | Name of the Router resource to query.
rp1Router :: Lens' RoutersPreview Text
rp1Router
  = lens _rp1Router (\ s a -> s{_rp1Router = a})

-- | Multipart request metadata.
rp1Payload :: Lens' RoutersPreview Router
rp1Payload
  = lens _rp1Payload (\ s a -> s{_rp1Payload = a})

-- | Name of the region for this request.
rp1Region :: Lens' RoutersPreview Text
rp1Region
  = lens _rp1Region (\ s a -> s{_rp1Region = a})

instance GoogleRequest RoutersPreview where
        type Rs RoutersPreview = RoutersPreviewResponse
        type Scopes RoutersPreview =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersPreview'{..}
          = go _rp1Project _rp1Region _rp1Router (Just AltJSON)
              _rp1Payload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersPreviewResource)
                      mempty
