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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.insert@.
module Network.Google.Resource.Compute.RegionURLMaps.Insert
    (
    -- * REST Resource
      RegionURLMapsInsertResource

    -- * Creating a Request
    , regionURLMapsInsert
    , RegionURLMapsInsert

    -- * Request Lenses
    , rumiRequestId
    , rumiProject
    , rumiPayload
    , rumiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.insert@ method which the
-- 'RegionURLMapsInsert' request conforms to.
type RegionURLMapsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] URLMap :> Post '[JSON] Operation

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'regionURLMapsInsert' smart constructor.
data RegionURLMapsInsert =
  RegionURLMapsInsert'
    { _rumiRequestId :: !(Maybe Text)
    , _rumiProject :: !Text
    , _rumiPayload :: !URLMap
    , _rumiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumiRequestId'
--
-- * 'rumiProject'
--
-- * 'rumiPayload'
--
-- * 'rumiRegion'
regionURLMapsInsert
    :: Text -- ^ 'rumiProject'
    -> URLMap -- ^ 'rumiPayload'
    -> Text -- ^ 'rumiRegion'
    -> RegionURLMapsInsert
regionURLMapsInsert pRumiProject_ pRumiPayload_ pRumiRegion_ =
  RegionURLMapsInsert'
    { _rumiRequestId = Nothing
    , _rumiProject = pRumiProject_
    , _rumiPayload = pRumiPayload_
    , _rumiRegion = pRumiRegion_
    }


-- | begin_interface: MixerMutationRequestBuilder Request ID to support
-- idempotency.
rumiRequestId :: Lens' RegionURLMapsInsert (Maybe Text)
rumiRequestId
  = lens _rumiRequestId
      (\ s a -> s{_rumiRequestId = a})

-- | Project ID for this request.
rumiProject :: Lens' RegionURLMapsInsert Text
rumiProject
  = lens _rumiProject (\ s a -> s{_rumiProject = a})

-- | Multipart request metadata.
rumiPayload :: Lens' RegionURLMapsInsert URLMap
rumiPayload
  = lens _rumiPayload (\ s a -> s{_rumiPayload = a})

-- | Name of the region scoping this request.
rumiRegion :: Lens' RegionURLMapsInsert Text
rumiRegion
  = lens _rumiRegion (\ s a -> s{_rumiRegion = a})

instance GoogleRequest RegionURLMapsInsert where
        type Rs RegionURLMapsInsert = Operation
        type Scopes RegionURLMapsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionURLMapsInsert'{..}
          = go _rumiProject _rumiRegion _rumiRequestId
              (Just AltJSON)
              _rumiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsInsertResource)
                      mempty
