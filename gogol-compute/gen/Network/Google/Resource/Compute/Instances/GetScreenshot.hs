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
-- Module      : Network.Google.Resource.Compute.Instances.GetScreenshot
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the screenshot from the specified instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getScreenshot@.
module Network.Google.Resource.Compute.Instances.GetScreenshot
    (
    -- * REST Resource
      InstancesGetScreenshotResource

    -- * Creating a Request
    , instancesGetScreenshot
    , InstancesGetScreenshot

    -- * Request Lenses
    , igsProject
    , igsZone
    , igsInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.getScreenshot@ method which the
-- 'InstancesGetScreenshot' request conforms to.
type InstancesGetScreenshotResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "screenshot" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Screenshot

-- | Returns the screenshot from the specified instance.
--
-- /See:/ 'instancesGetScreenshot' smart constructor.
data InstancesGetScreenshot =
  InstancesGetScreenshot'
    { _igsProject :: !Text
    , _igsZone :: !Text
    , _igsInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGetScreenshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsProject'
--
-- * 'igsZone'
--
-- * 'igsInstance'
instancesGetScreenshot
    :: Text -- ^ 'igsProject'
    -> Text -- ^ 'igsZone'
    -> Text -- ^ 'igsInstance'
    -> InstancesGetScreenshot
instancesGetScreenshot pIgsProject_ pIgsZone_ pIgsInstance_ =
  InstancesGetScreenshot'
    { _igsProject = pIgsProject_
    , _igsZone = pIgsZone_
    , _igsInstance = pIgsInstance_
    }


-- | Project ID for this request.
igsProject :: Lens' InstancesGetScreenshot Text
igsProject
  = lens _igsProject (\ s a -> s{_igsProject = a})

-- | The name of the zone for this request.
igsZone :: Lens' InstancesGetScreenshot Text
igsZone = lens _igsZone (\ s a -> s{_igsZone = a})

-- | Name of the instance scoping this request.
igsInstance :: Lens' InstancesGetScreenshot Text
igsInstance
  = lens _igsInstance (\ s a -> s{_igsInstance = a})

instance GoogleRequest InstancesGetScreenshot where
        type Rs InstancesGetScreenshot = Screenshot
        type Scopes InstancesGetScreenshot =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGetScreenshot'{..}
          = go _igsProject _igsZone _igsInstance (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesGetScreenshotResource)
                      mempty
