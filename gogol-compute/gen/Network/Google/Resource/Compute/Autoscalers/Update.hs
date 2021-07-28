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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.update@.
module Network.Google.Resource.Compute.Autoscalers.Update
    (
    -- * REST Resource
      AutoscalersUpdateResource

    -- * Creating a Request
    , autoscalersUpdate
    , AutoscalersUpdate

    -- * Request Lenses
    , auRequestId
    , auProject
    , auZone
    , auPayload
    , auAutoscaler
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.update@ method which the
-- 'AutoscalersUpdate' request conforms to.
type AutoscalersUpdateResource =
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
                         ReqBody '[JSON] Autoscaler :> Put '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ 'autoscalersUpdate' smart constructor.
data AutoscalersUpdate =
  AutoscalersUpdate'
    { _auRequestId :: !(Maybe Text)
    , _auProject :: !Text
    , _auZone :: !Text
    , _auPayload :: !Autoscaler
    , _auAutoscaler :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auRequestId'
--
-- * 'auProject'
--
-- * 'auZone'
--
-- * 'auPayload'
--
-- * 'auAutoscaler'
autoscalersUpdate
    :: Text -- ^ 'auProject'
    -> Text -- ^ 'auZone'
    -> Autoscaler -- ^ 'auPayload'
    -> AutoscalersUpdate
autoscalersUpdate pAuProject_ pAuZone_ pAuPayload_ =
  AutoscalersUpdate'
    { _auRequestId = Nothing
    , _auProject = pAuProject_
    , _auZone = pAuZone_
    , _auPayload = pAuPayload_
    , _auAutoscaler = Nothing
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
auRequestId :: Lens' AutoscalersUpdate (Maybe Text)
auRequestId
  = lens _auRequestId (\ s a -> s{_auRequestId = a})

-- | Project ID for this request.
auProject :: Lens' AutoscalersUpdate Text
auProject
  = lens _auProject (\ s a -> s{_auProject = a})

-- | Name of the zone for this request.
auZone :: Lens' AutoscalersUpdate Text
auZone = lens _auZone (\ s a -> s{_auZone = a})

-- | Multipart request metadata.
auPayload :: Lens' AutoscalersUpdate Autoscaler
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | Name of the autoscaler to update.
auAutoscaler :: Lens' AutoscalersUpdate (Maybe Text)
auAutoscaler
  = lens _auAutoscaler (\ s a -> s{_auAutoscaler = a})

instance GoogleRequest AutoscalersUpdate where
        type Rs AutoscalersUpdate = Operation
        type Scopes AutoscalersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersUpdate'{..}
          = go _auProject _auZone _auRequestId _auAutoscaler
              (Just AltJSON)
              _auPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersUpdateResource)
                      mempty
