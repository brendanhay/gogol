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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.patch@.
module Network.Google.Resource.Compute.Autoscalers.Patch
    (
    -- * REST Resource
      AutoscalersPatchResource

    -- * Creating a Request
    , autoscalersPatch
    , AutoscalersPatch

    -- * Request Lenses
    , apRequestId
    , apProject
    , apZone
    , apPayload
    , apAutoscaler
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.patch@ method which the
-- 'AutoscalersPatch' request conforms to.
type AutoscalersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "autoscaler" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Autoscaler :> Patch '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ 'autoscalersPatch' smart constructor.
data AutoscalersPatch =
  AutoscalersPatch'
    { _apRequestId :: !(Maybe Text)
    , _apProject :: !Text
    , _apZone :: !Text
    , _apPayload :: !Autoscaler
    , _apAutoscaler :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apRequestId'
--
-- * 'apProject'
--
-- * 'apZone'
--
-- * 'apPayload'
--
-- * 'apAutoscaler'
autoscalersPatch
    :: Text -- ^ 'apProject'
    -> Text -- ^ 'apZone'
    -> Autoscaler -- ^ 'apPayload'
    -> AutoscalersPatch
autoscalersPatch pApProject_ pApZone_ pApPayload_ =
  AutoscalersPatch'
    { _apRequestId = Nothing
    , _apProject = pApProject_
    , _apZone = pApZone_
    , _apPayload = pApPayload_
    , _apAutoscaler = Nothing
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
apRequestId :: Lens' AutoscalersPatch (Maybe Text)
apRequestId
  = lens _apRequestId (\ s a -> s{_apRequestId = a})

-- | Project ID for this request.
apProject :: Lens' AutoscalersPatch Text
apProject
  = lens _apProject (\ s a -> s{_apProject = a})

-- | Name of the zone for this request.
apZone :: Lens' AutoscalersPatch Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | Multipart request metadata.
apPayload :: Lens' AutoscalersPatch Autoscaler
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Name of the autoscaler to patch.
apAutoscaler :: Lens' AutoscalersPatch (Maybe Text)
apAutoscaler
  = lens _apAutoscaler (\ s a -> s{_apAutoscaler = a})

instance GoogleRequest AutoscalersPatch where
        type Rs AutoscalersPatch = Operation
        type Scopes AutoscalersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersPatch'{..}
          = go _apProject _apZone _apRequestId _apAutoscaler
              (Just AltJSON)
              _apPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersPatchResource)
                      mempty
