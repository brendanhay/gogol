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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified interconnect attachment.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.get@.
module Network.Google.Resource.Compute.InterconnectAttachments.Get
    (
    -- * REST Resource
      InterconnectAttachmentsGetResource

    -- * Creating a Request
    , interconnectAttachmentsGet
    , InterconnectAttachmentsGet

    -- * Request Lenses
    , iagProject
    , iagRegion
    , iagInterconnectAttachment
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.get@ method which the
-- 'InterconnectAttachmentsGet' request conforms to.
type InterconnectAttachmentsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "interconnectAttachments" :>
                   Capture "interconnectAttachment" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InterconnectAttachment

-- | Returns the specified interconnect attachment.
--
-- /See:/ 'interconnectAttachmentsGet' smart constructor.
data InterconnectAttachmentsGet =
  InterconnectAttachmentsGet'
    { _iagProject                :: !Text
    , _iagRegion                 :: !Text
    , _iagInterconnectAttachment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectAttachmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iagProject'
--
-- * 'iagRegion'
--
-- * 'iagInterconnectAttachment'
interconnectAttachmentsGet
    :: Text -- ^ 'iagProject'
    -> Text -- ^ 'iagRegion'
    -> Text -- ^ 'iagInterconnectAttachment'
    -> InterconnectAttachmentsGet
interconnectAttachmentsGet pIagProject_ pIagRegion_ pIagInterconnectAttachment_ =
  InterconnectAttachmentsGet'
    { _iagProject = pIagProject_
    , _iagRegion = pIagRegion_
    , _iagInterconnectAttachment = pIagInterconnectAttachment_
    }


-- | Project ID for this request.
iagProject :: Lens' InterconnectAttachmentsGet Text
iagProject
  = lens _iagProject (\ s a -> s{_iagProject = a})

-- | Name of the region for this request.
iagRegion :: Lens' InterconnectAttachmentsGet Text
iagRegion
  = lens _iagRegion (\ s a -> s{_iagRegion = a})

-- | Name of the interconnect attachment to return.
iagInterconnectAttachment :: Lens' InterconnectAttachmentsGet Text
iagInterconnectAttachment
  = lens _iagInterconnectAttachment
      (\ s a -> s{_iagInterconnectAttachment = a})

instance GoogleRequest InterconnectAttachmentsGet
         where
        type Rs InterconnectAttachmentsGet =
             InterconnectAttachment
        type Scopes InterconnectAttachmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectAttachmentsGet'{..}
          = go _iagProject _iagRegion
              _iagInterconnectAttachment
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectAttachmentsGetResource)
                      mempty
