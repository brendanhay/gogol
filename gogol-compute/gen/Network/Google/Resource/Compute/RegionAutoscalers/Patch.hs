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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.patch@.
module Network.Google.Resource.Compute.RegionAutoscalers.Patch
    (
    -- * REST Resource
      RegionAutoscalersPatchResource

    -- * Creating a Request
    , regionAutoscalersPatch
    , RegionAutoscalersPatch

    -- * Request Lenses
    , rapRequestId
    , rapProject
    , rapPayload
    , rapAutoscaler
    , rapRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.patch@ method which the
-- 'RegionAutoscalersPatch' request conforms to.
type RegionAutoscalersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "autoscaler" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Autoscaler :> Patch '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ 'regionAutoscalersPatch' smart constructor.
data RegionAutoscalersPatch =
  RegionAutoscalersPatch'
    { _rapRequestId  :: !(Maybe Text)
    , _rapProject    :: !Text
    , _rapPayload    :: !Autoscaler
    , _rapAutoscaler :: !(Maybe Text)
    , _rapRegion     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionAutoscalersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rapRequestId'
--
-- * 'rapProject'
--
-- * 'rapPayload'
--
-- * 'rapAutoscaler'
--
-- * 'rapRegion'
regionAutoscalersPatch
    :: Text -- ^ 'rapProject'
    -> Autoscaler -- ^ 'rapPayload'
    -> Text -- ^ 'rapRegion'
    -> RegionAutoscalersPatch
regionAutoscalersPatch pRapProject_ pRapPayload_ pRapRegion_ =
  RegionAutoscalersPatch'
    { _rapRequestId = Nothing
    , _rapProject = pRapProject_
    , _rapPayload = pRapPayload_
    , _rapAutoscaler = Nothing
    , _rapRegion = pRapRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rapRequestId :: Lens' RegionAutoscalersPatch (Maybe Text)
rapRequestId
  = lens _rapRequestId (\ s a -> s{_rapRequestId = a})

-- | Project ID for this request.
rapProject :: Lens' RegionAutoscalersPatch Text
rapProject
  = lens _rapProject (\ s a -> s{_rapProject = a})

-- | Multipart request metadata.
rapPayload :: Lens' RegionAutoscalersPatch Autoscaler
rapPayload
  = lens _rapPayload (\ s a -> s{_rapPayload = a})

-- | Name of the autoscaler to patch.
rapAutoscaler :: Lens' RegionAutoscalersPatch (Maybe Text)
rapAutoscaler
  = lens _rapAutoscaler
      (\ s a -> s{_rapAutoscaler = a})

-- | Name of the region scoping this request.
rapRegion :: Lens' RegionAutoscalersPatch Text
rapRegion
  = lens _rapRegion (\ s a -> s{_rapRegion = a})

instance GoogleRequest RegionAutoscalersPatch where
        type Rs RegionAutoscalersPatch = Operation
        type Scopes RegionAutoscalersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersPatch'{..}
          = go _rapProject _rapRegion _rapRequestId
              _rapAutoscaler
              (Just AltJSON)
              _rapPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersPatchResource)
                      mempty
