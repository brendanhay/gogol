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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesInsert@.
module Network.Google.Resource.Compute.TargetInstances.Insert
    (
    -- * REST Resource
      TargetInstancesInsertResource

    -- * Creating a Request
    , targetInstancesInsert'
    , TargetInstancesInsert'

    -- * Request Lenses
    , tiiProject
    , tiiZone
    , tiiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesInsert@ method which the
-- 'TargetInstancesInsert'' request conforms to.
type TargetInstancesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TargetInstance :>
                 Post '[JSON] Operation

-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ 'targetInstancesInsert'' smart constructor.
data TargetInstancesInsert' = TargetInstancesInsert'
    { _tiiProject :: !Text
    , _tiiZone    :: !Text
    , _tiiPayload :: !TargetInstance
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiProject'
--
-- * 'tiiZone'
--
-- * 'tiiPayload'
targetInstancesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> TargetInstance -- ^ 'payload'
    -> TargetInstancesInsert'
targetInstancesInsert' pTiiProject_ pTiiZone_ pTiiPayload_ =
    TargetInstancesInsert'
    { _tiiProject = pTiiProject_
    , _tiiZone = pTiiZone_
    , _tiiPayload = pTiiPayload_
    }

-- | Name of the project scoping this request.
tiiProject :: Lens' TargetInstancesInsert' Text
tiiProject
  = lens _tiiProject (\ s a -> s{_tiiProject = a})

-- | Name of the zone scoping this request.
tiiZone :: Lens' TargetInstancesInsert' Text
tiiZone = lens _tiiZone (\ s a -> s{_tiiZone = a})

-- | Multipart request metadata.
tiiPayload :: Lens' TargetInstancesInsert' TargetInstance
tiiPayload
  = lens _tiiPayload (\ s a -> s{_tiiPayload = a})

instance GoogleRequest TargetInstancesInsert' where
        type Rs TargetInstancesInsert' = Operation
        requestClient TargetInstancesInsert'{..}
          = go _tiiProject _tiiZone (Just AltJSON) _tiiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesInsertResource)
                      mempty
