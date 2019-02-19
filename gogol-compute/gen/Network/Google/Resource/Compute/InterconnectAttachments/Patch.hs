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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified interconnect attachment with the data included in
-- the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.patch@.
module Network.Google.Resource.Compute.InterconnectAttachments.Patch
    (
    -- * REST Resource
      InterconnectAttachmentsPatchResource

    -- * Creating a Request
    , interconnectAttachmentsPatch
    , InterconnectAttachmentsPatch

    -- * Request Lenses
    , iapRequestId
    , iapProject
    , iapPayload
    , iapRegion
    , iapInterconnectAttachment
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.patch@ method which the
-- 'InterconnectAttachmentsPatch' request conforms to.
type InterconnectAttachmentsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "interconnectAttachments" :>
                   Capture "interconnectAttachment" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InterconnectAttachment :>
                           Patch '[JSON] Operation

-- | Updates the specified interconnect attachment with the data included in
-- the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ 'interconnectAttachmentsPatch' smart constructor.
data InterconnectAttachmentsPatch =
  InterconnectAttachmentsPatch'
    { _iapRequestId              :: !(Maybe Text)
    , _iapProject                :: !Text
    , _iapPayload                :: !InterconnectAttachment
    , _iapRegion                 :: !Text
    , _iapInterconnectAttachment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectAttachmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapRequestId'
--
-- * 'iapProject'
--
-- * 'iapPayload'
--
-- * 'iapRegion'
--
-- * 'iapInterconnectAttachment'
interconnectAttachmentsPatch
    :: Text -- ^ 'iapProject'
    -> InterconnectAttachment -- ^ 'iapPayload'
    -> Text -- ^ 'iapRegion'
    -> Text -- ^ 'iapInterconnectAttachment'
    -> InterconnectAttachmentsPatch
interconnectAttachmentsPatch pIapProject_ pIapPayload_ pIapRegion_ pIapInterconnectAttachment_ =
  InterconnectAttachmentsPatch'
    { _iapRequestId = Nothing
    , _iapProject = pIapProject_
    , _iapPayload = pIapPayload_
    , _iapRegion = pIapRegion_
    , _iapInterconnectAttachment = pIapInterconnectAttachment_
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
iapRequestId :: Lens' InterconnectAttachmentsPatch (Maybe Text)
iapRequestId
  = lens _iapRequestId (\ s a -> s{_iapRequestId = a})

-- | Project ID for this request.
iapProject :: Lens' InterconnectAttachmentsPatch Text
iapProject
  = lens _iapProject (\ s a -> s{_iapProject = a})

-- | Multipart request metadata.
iapPayload :: Lens' InterconnectAttachmentsPatch InterconnectAttachment
iapPayload
  = lens _iapPayload (\ s a -> s{_iapPayload = a})

-- | Name of the region scoping this request.
iapRegion :: Lens' InterconnectAttachmentsPatch Text
iapRegion
  = lens _iapRegion (\ s a -> s{_iapRegion = a})

-- | Name of the interconnect attachment to patch.
iapInterconnectAttachment :: Lens' InterconnectAttachmentsPatch Text
iapInterconnectAttachment
  = lens _iapInterconnectAttachment
      (\ s a -> s{_iapInterconnectAttachment = a})

instance GoogleRequest InterconnectAttachmentsPatch
         where
        type Rs InterconnectAttachmentsPatch = Operation
        type Scopes InterconnectAttachmentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectAttachmentsPatch'{..}
          = go _iapProject _iapRegion
              _iapInterconnectAttachment
              _iapRequestId
              (Just AltJSON)
              _iapPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectAttachmentsPatchResource)
                      mempty
