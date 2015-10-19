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
-- Module      : Network.Google.Resource.Compute.Instances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.insert@.
module Network.Google.Resource.Compute.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert'
    , InstancesInsert'

    -- * Request Lenses
    , iiProject
    , iiZone
    , iiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.insert@ method which the
-- 'InstancesInsert'' request conforms to.
type InstancesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Instance :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert'' smart constructor.
data InstancesInsert' = InstancesInsert'
    { _iiProject :: !Text
    , _iiZone    :: !Text
    , _iiPayload :: !Instance
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProject'
--
-- * 'iiZone'
--
-- * 'iiPayload'
instancesInsert'
    :: Text -- ^ 'iiProject'
    -> Text -- ^ 'iiZone'
    -> Instance -- ^ 'iiPayload'
    -> InstancesInsert'
instancesInsert' pIiProject_ pIiZone_ pIiPayload_ =
    InstancesInsert'
    { _iiProject = pIiProject_
    , _iiZone = pIiZone_
    , _iiPayload = pIiPayload_
    }

-- | Project ID for this request.
iiProject :: Lens' InstancesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | The name of the zone for this request.
iiZone :: Lens' InstancesInsert' Text
iiZone = lens _iiZone (\ s a -> s{_iiZone = a})

-- | Multipart request metadata.
iiPayload :: Lens' InstancesInsert' Instance
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        requestClient InstancesInsert'{..}
          = go _iiProject _iiZone (Just AltJSON) _iiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
