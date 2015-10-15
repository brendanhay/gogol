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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance template resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesGet@.
module Network.Google.Resource.Compute.InstanceTemplates.Get
    (
    -- * REST Resource
      InstanceTemplatesGetResource

    -- * Creating a Request
    , instanceTemplatesGet'
    , InstanceTemplatesGet'

    -- * Request Lenses
    , itgProject
    , itgInstanceTemplate
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesGet@ method which the
-- 'InstanceTemplatesGet'' request conforms to.
type InstanceTemplatesGetResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           Capture "instanceTemplate" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] InstanceTemplate

-- | Returns the specified instance template resource.
--
-- /See:/ 'instanceTemplatesGet'' smart constructor.
data InstanceTemplatesGet' = InstanceTemplatesGet'
    { _itgProject          :: !Text
    , _itgInstanceTemplate :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itgProject'
--
-- * 'itgInstanceTemplate'
instanceTemplatesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceTemplate'
    -> InstanceTemplatesGet'
instanceTemplatesGet' pItgProject_ pItgInstanceTemplate_ =
    InstanceTemplatesGet'
    { _itgProject = pItgProject_
    , _itgInstanceTemplate = pItgInstanceTemplate_
    }

-- | The project ID for this request.
itgProject :: Lens' InstanceTemplatesGet' Text
itgProject
  = lens _itgProject (\ s a -> s{_itgProject = a})

-- | The name of the instance template.
itgInstanceTemplate :: Lens' InstanceTemplatesGet' Text
itgInstanceTemplate
  = lens _itgInstanceTemplate
      (\ s a -> s{_itgInstanceTemplate = a})

instance GoogleRequest InstanceTemplatesGet' where
        type Rs InstanceTemplatesGet' = InstanceTemplate
        requestClient InstanceTemplatesGet'{..}
          = go _itgProject _itgInstanceTemplate (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesGetResource)
                      mempty
