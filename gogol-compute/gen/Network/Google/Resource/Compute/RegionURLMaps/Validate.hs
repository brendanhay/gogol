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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Validate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.validate@.
module Network.Google.Resource.Compute.RegionURLMaps.Validate
    (
    -- * REST Resource
      RegionURLMapsValidateResource

    -- * Creating a Request
    , regionURLMapsValidate
    , RegionURLMapsValidate

    -- * Request Lenses
    , rumvURLMap
    , rumvProject
    , rumvPayload
    , rumvRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.validate@ method which the
-- 'RegionURLMapsValidate' request conforms to.
type RegionURLMapsValidateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   Capture "urlMap" Text :>
                     "validate" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionURLMapsValidateRequest :>
                           Post '[JSON] URLMapsValidateResponse

-- | Runs static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ 'regionURLMapsValidate' smart constructor.
data RegionURLMapsValidate =
  RegionURLMapsValidate'
    { _rumvURLMap :: !Text
    , _rumvProject :: !Text
    , _rumvPayload :: !RegionURLMapsValidateRequest
    , _rumvRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumvURLMap'
--
-- * 'rumvProject'
--
-- * 'rumvPayload'
--
-- * 'rumvRegion'
regionURLMapsValidate
    :: Text -- ^ 'rumvURLMap'
    -> Text -- ^ 'rumvProject'
    -> RegionURLMapsValidateRequest -- ^ 'rumvPayload'
    -> Text -- ^ 'rumvRegion'
    -> RegionURLMapsValidate
regionURLMapsValidate pRumvURLMap_ pRumvProject_ pRumvPayload_ pRumvRegion_ =
  RegionURLMapsValidate'
    { _rumvURLMap = pRumvURLMap_
    , _rumvProject = pRumvProject_
    , _rumvPayload = pRumvPayload_
    , _rumvRegion = pRumvRegion_
    }


-- | Name of the UrlMap resource to be validated as.
rumvURLMap :: Lens' RegionURLMapsValidate Text
rumvURLMap
  = lens _rumvURLMap (\ s a -> s{_rumvURLMap = a})

-- | Project ID for this request.
rumvProject :: Lens' RegionURLMapsValidate Text
rumvProject
  = lens _rumvProject (\ s a -> s{_rumvProject = a})

-- | Multipart request metadata.
rumvPayload :: Lens' RegionURLMapsValidate RegionURLMapsValidateRequest
rumvPayload
  = lens _rumvPayload (\ s a -> s{_rumvPayload = a})

-- | Name of the region scoping this request.
rumvRegion :: Lens' RegionURLMapsValidate Text
rumvRegion
  = lens _rumvRegion (\ s a -> s{_rumvRegion = a})

instance GoogleRequest RegionURLMapsValidate where
        type Rs RegionURLMapsValidate =
             URLMapsValidateResponse
        type Scopes RegionURLMapsValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionURLMapsValidate'{..}
          = go _rumvProject _rumvRegion _rumvURLMap
              (Just AltJSON)
              _rumvPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsValidateResource)
                      mempty
