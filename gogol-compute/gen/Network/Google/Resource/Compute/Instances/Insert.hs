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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , iiiProject
    , iiiZone
    , iiiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.insert@ method which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Instance :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert = InstancesInsert'
    { _iiiProject :: !Text
    , _iiiZone    :: !Text
    , _iiiPayload :: !Instance
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiiProject'
--
-- * 'iiiZone'
--
-- * 'iiiPayload'
instancesInsert
    :: Text -- ^ 'iiiProject'
    -> Text -- ^ 'iiiZone'
    -> Instance -- ^ 'iiiPayload'
    -> InstancesInsert
instancesInsert pIiiProject_ pIiiZone_ pIiiPayload_ =
    InstancesInsert'
    { _iiiProject = pIiiProject_
    , _iiiZone = pIiiZone_
    , _iiiPayload = pIiiPayload_
    }

-- | Project ID for this request.
iiiProject :: Lens' InstancesInsert Text
iiiProject
  = lens _iiiProject (\ s a -> s{_iiiProject = a})

-- | The name of the zone for this request.
iiiZone :: Lens' InstancesInsert Text
iiiZone = lens _iiiZone (\ s a -> s{_iiiZone = a})

-- | Multipart request metadata.
iiiPayload :: Lens' InstancesInsert Instance
iiiPayload
  = lens _iiiPayload (\ s a -> s{_iiiPayload = a})

instance GoogleRequest InstancesInsert where
        type Rs InstancesInsert = Operation
        type Scopes InstancesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesInsert'{..}
          = go _iiiProject _iiiZone (Just AltJSON) _iiiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
