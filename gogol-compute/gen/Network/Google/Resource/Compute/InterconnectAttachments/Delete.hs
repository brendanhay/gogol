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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified interconnect attachment.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.delete@.
module Network.Google.Resource.Compute.InterconnectAttachments.Delete
    (
    -- * REST Resource
      InterconnectAttachmentsDeleteResource

    -- * Creating a Request
    , interconnectAttachmentsDelete
    , InterconnectAttachmentsDelete

    -- * Request Lenses
    , iadRequestId
    , iadProject
    , iadRegion
    , iadInterconnectAttachment
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.delete@ method which the
-- 'InterconnectAttachmentsDelete' request conforms to.
type InterconnectAttachmentsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "interconnectAttachments" :>
                   Capture "interconnectAttachment" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified interconnect attachment.
--
-- /See:/ 'interconnectAttachmentsDelete' smart constructor.
data InterconnectAttachmentsDelete =
  InterconnectAttachmentsDelete'
    { _iadRequestId :: !(Maybe Text)
    , _iadProject :: !Text
    , _iadRegion :: !Text
    , _iadInterconnectAttachment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectAttachmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iadRequestId'
--
-- * 'iadProject'
--
-- * 'iadRegion'
--
-- * 'iadInterconnectAttachment'
interconnectAttachmentsDelete
    :: Text -- ^ 'iadProject'
    -> Text -- ^ 'iadRegion'
    -> Text -- ^ 'iadInterconnectAttachment'
    -> InterconnectAttachmentsDelete
interconnectAttachmentsDelete pIadProject_ pIadRegion_ pIadInterconnectAttachment_ =
  InterconnectAttachmentsDelete'
    { _iadRequestId = Nothing
    , _iadProject = pIadProject_
    , _iadRegion = pIadRegion_
    , _iadInterconnectAttachment = pIadInterconnectAttachment_
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
iadRequestId :: Lens' InterconnectAttachmentsDelete (Maybe Text)
iadRequestId
  = lens _iadRequestId (\ s a -> s{_iadRequestId = a})

-- | Project ID for this request.
iadProject :: Lens' InterconnectAttachmentsDelete Text
iadProject
  = lens _iadProject (\ s a -> s{_iadProject = a})

-- | Name of the region for this request.
iadRegion :: Lens' InterconnectAttachmentsDelete Text
iadRegion
  = lens _iadRegion (\ s a -> s{_iadRegion = a})

-- | Name of the interconnect attachment to delete.
iadInterconnectAttachment :: Lens' InterconnectAttachmentsDelete Text
iadInterconnectAttachment
  = lens _iadInterconnectAttachment
      (\ s a -> s{_iadInterconnectAttachment = a})

instance GoogleRequest InterconnectAttachmentsDelete
         where
        type Rs InterconnectAttachmentsDelete = Operation
        type Scopes InterconnectAttachmentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectAttachmentsDelete'{..}
          = go _iadProject _iadRegion
              _iadInterconnectAttachment
              _iadRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InterconnectAttachmentsDeleteResource)
                      mempty
