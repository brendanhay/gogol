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
-- Module      : Network.Google.Resource.Compute.Images.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on an image. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.setLabels@.
module Network.Google.Resource.Compute.Images.SetLabels
    (
    -- * REST Resource
      ImagesSetLabelsResource

    -- * Creating a Request
    , imagesSetLabels
    , ImagesSetLabels

    -- * Request Lenses
    , islsProject
    , islsPayload
    , islsResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.setLabels@ method which the
-- 'ImagesSetLabels' request conforms to.
type ImagesSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "resource" Text :>
                   "setLabels" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetLabelsRequest :>
                         Post '[JSON] Operation

-- | Sets the labels on an image. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ 'imagesSetLabels' smart constructor.
data ImagesSetLabels = ImagesSetLabels'
    { _islsProject  :: !Text
    , _islsPayload  :: !GlobalSetLabelsRequest
    , _islsResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islsProject'
--
-- * 'islsPayload'
--
-- * 'islsResource'
imagesSetLabels
    :: Text -- ^ 'islsProject'
    -> GlobalSetLabelsRequest -- ^ 'islsPayload'
    -> Text -- ^ 'islsResource'
    -> ImagesSetLabels
imagesSetLabels pIslsProject_ pIslsPayload_ pIslsResource_ =
    ImagesSetLabels'
    { _islsProject = pIslsProject_
    , _islsPayload = pIslsPayload_
    , _islsResource = pIslsResource_
    }

-- | Project ID for this request.
islsProject :: Lens' ImagesSetLabels Text
islsProject
  = lens _islsProject (\ s a -> s{_islsProject = a})

-- | Multipart request metadata.
islsPayload :: Lens' ImagesSetLabels GlobalSetLabelsRequest
islsPayload
  = lens _islsPayload (\ s a -> s{_islsPayload = a})

-- | Name or id of the resource for this request.
islsResource :: Lens' ImagesSetLabels Text
islsResource
  = lens _islsResource (\ s a -> s{_islsResource = a})

instance GoogleRequest ImagesSetLabels where
        type Rs ImagesSetLabels = Operation
        type Scopes ImagesSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ImagesSetLabels'{..}
          = go _islsProject _islsResource (Just AltJSON)
              _islsPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesSetLabelsResource)
                      mempty
