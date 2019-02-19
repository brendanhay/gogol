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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified instance template. Gets a list of available
-- instance templates by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.get@.
module Network.Google.Resource.Compute.InstanceTemplates.Get
    (
    -- * REST Resource
      InstanceTemplatesGetResource

    -- * Creating a Request
    , instanceTemplatesGet
    , InstanceTemplatesGet

    -- * Request Lenses
    , itgProject
    , itgInstanceTemplate
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.get@ method which the
-- 'InstanceTemplatesGet' request conforms to.
type InstanceTemplatesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "instanceTemplate" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstanceTemplate

-- | Returns the specified instance template. Gets a list of available
-- instance templates by making a list() request.
--
-- /See:/ 'instanceTemplatesGet' smart constructor.
data InstanceTemplatesGet =
  InstanceTemplatesGet'
    { _itgProject          :: !Text
    , _itgInstanceTemplate :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itgProject'
--
-- * 'itgInstanceTemplate'
instanceTemplatesGet
    :: Text -- ^ 'itgProject'
    -> Text -- ^ 'itgInstanceTemplate'
    -> InstanceTemplatesGet
instanceTemplatesGet pItgProject_ pItgInstanceTemplate_ =
  InstanceTemplatesGet'
    {_itgProject = pItgProject_, _itgInstanceTemplate = pItgInstanceTemplate_}

-- | Project ID for this request.
itgProject :: Lens' InstanceTemplatesGet Text
itgProject
  = lens _itgProject (\ s a -> s{_itgProject = a})

-- | The name of the instance template.
itgInstanceTemplate :: Lens' InstanceTemplatesGet Text
itgInstanceTemplate
  = lens _itgInstanceTemplate
      (\ s a -> s{_itgInstanceTemplate = a})

instance GoogleRequest InstanceTemplatesGet where
        type Rs InstanceTemplatesGet = InstanceTemplate
        type Scopes InstanceTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceTemplatesGet'{..}
          = go _itgProject _itgInstanceTemplate (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesGetResource)
                      mempty
