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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.insert@.
module Network.Google.Resource.Compute.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertResource

    -- * Creating a Request
    , autoscalersInsert
    , AutoscalersInsert

    -- * Request Lenses
    , aiiRequestId
    , aiiProject
    , aiiZone
    , aiiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.insert@ method which the
-- 'AutoscalersInsert' request conforms to.
type AutoscalersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ 'autoscalersInsert' smart constructor.
data AutoscalersInsert =
  AutoscalersInsert'
    { _aiiRequestId :: !(Maybe Text)
    , _aiiProject   :: !Text
    , _aiiZone      :: !Text
    , _aiiPayload   :: !Autoscaler
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoscalersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiRequestId'
--
-- * 'aiiProject'
--
-- * 'aiiZone'
--
-- * 'aiiPayload'
autoscalersInsert
    :: Text -- ^ 'aiiProject'
    -> Text -- ^ 'aiiZone'
    -> Autoscaler -- ^ 'aiiPayload'
    -> AutoscalersInsert
autoscalersInsert pAiiProject_ pAiiZone_ pAiiPayload_ =
  AutoscalersInsert'
    { _aiiRequestId = Nothing
    , _aiiProject = pAiiProject_
    , _aiiZone = pAiiZone_
    , _aiiPayload = pAiiPayload_
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
aiiRequestId :: Lens' AutoscalersInsert (Maybe Text)
aiiRequestId
  = lens _aiiRequestId (\ s a -> s{_aiiRequestId = a})

-- | Project ID for this request.
aiiProject :: Lens' AutoscalersInsert Text
aiiProject
  = lens _aiiProject (\ s a -> s{_aiiProject = a})

-- | Name of the zone for this request.
aiiZone :: Lens' AutoscalersInsert Text
aiiZone = lens _aiiZone (\ s a -> s{_aiiZone = a})

-- | Multipart request metadata.
aiiPayload :: Lens' AutoscalersInsert Autoscaler
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

instance GoogleRequest AutoscalersInsert where
        type Rs AutoscalersInsert = Operation
        type Scopes AutoscalersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersInsert'{..}
          = go _aiiProject _aiiZone _aiiRequestId
              (Just AltJSON)
              _aiiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersInsertResource)
                      mempty
